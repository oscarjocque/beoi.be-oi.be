
Vous avez peut-être appris les nombres de Fibonacci lors de vos leçons de mathématiques. Le 0-ième nombre de Fibonacci est 0, et le 1-er est 1. Pour tout `n > 1`, le n-ième nombre de Fibonacci est la somme du `(n−1)`-ième et `(n−2)`-ième nombres de Fibonacci. Les huit premiers nombres de Fibonacci sont donc `0, 1, 1, 2, 3, 5, 8, 13`. Les nombres de Fibonacci peuvent être définis mathématiquement comme suit.

~~~
Fib(0) = 0
Fib(1) = 1
Fib(n) = Fib(n-1) + Fib(n-2), pour n > 1
~~~

C'est ce que l'on nomme une fonction récursive: la fonction `Fib` est définie en fonction d'elle-même. Dans un langage de programmation, il est facilement possible de transcrire une telle définition comme une fonction qui s'appelle elle-même:

~~~
Input : n, un nombre naturel, pour lequel nous voulons calculer le nombre de Fibonacci
Output : le n-ième nombre de Fibonacci

Fib(n)
{
  if (n = 0)
  {
    return 0
  }
  else if (n = 1) 
  {
    return 1
  }
  else
  {
    return Fib(n-1) + Fib(n-2)
  }
}
~~~


* Quel est le résultat de l'appel de fonction `Fib(9)` ?
* Combien de fois la fonction `Fib` s'appelle-t-elle elle-même après l'appel à `Fib(2)` ?
* Combien de fois la fonction `Fib` s'appelle-t-elle elle-même après l'appel à `Fib(5)` ?

Des informaticiens malins ont trouvé une façon différente (et,
espérons-le, meilleure) de calculer les nombres de Fibonacci. Nous
pouvons l'exprimer dans un langage de programmation sous la forme de
la fonction récursive `BetterFib` suivante:

~~~
Input : n, un nombre entier positif, pour lequel nous voulons calculer le nombre de Fibonacci
        a, un nombre entier positif qui est initialement 0
        b, un nombre entier positif qui est initialement 1
        i, un nombre entier positif qui est initialement 0
Output : le n-ième nombre de Fibonacci

BetterFib(n, a, b, i) {
  if (i = n)
  {
    return a
  }
  else
  {
    return BetterFib(n, b, a+b, i+1)
  }
}
~~~

Pour calculer le `n`-ième nombre de Fibonacci, on appelle
`BetterFib(n,0,1,0)`. On comprend sans doute mieux le code ci-dessus
quand on se rend compte que, lors de chaque appel à `BetterFib`, `a`
contient toujours le `i`-ième nombre de Fibonacci, et `b` contient
toujours le `(i+1)`-ième nombre de Fibonacci.

* Combien de fois la fonction `BetterFib` s'appelle-t-elle elle-même
  après l'appel à `BetterFib(2,0,1,0)` ?
* Combien de fois la fonction `BetterFib` s'appelle-t-elle elle-même
  après l'appel à `BetterFib(5,0,1,0)` ?

