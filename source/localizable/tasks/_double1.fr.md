Votre tâche est d'écrire une fonction qui double tous les "1" dans un tableau de n nombres. Par exemple, si le tableau contient `[1,1,5,1,4]`avant l'appel de la fonction,il devra contenir `[1,1,1,1,5,1,1,4]` après l'appelàcelle-ci. Pour simplifier les choses, le tableau qui vous est fourni a une taille `2n`, ce qui permet de modifier le tableau sans devoir en créer un nouveau.

Voici la définition des entrées et de la sortie de l'algorithme.

~~~
Input : n, un nombre entier.
        tab, un tableau de nombres entiers de taille 2n.
Output: tab est modifié pour que tous les 1 parmi les n premiers nombres du 
        tableau initial soient doublés. 
~~~

Nous vous proposons deux algorithmes permettant de résoudre ce même problème, vous devez les compléter.

##### Algorithme 1 #####
~~~
count <-- 0
for (i <-- 0 to ... step 1)                // (a)
{
  if (tab[...] = 1)                        // (b)
  {
    for (j <-- ... to i+1 step -1)         // (c)
    {
      tab[...] <-- tab[...]                // (d), (e)
    }
    count <-- count + 1
  }
}
~~~
Complétez (a), (b), (c), (d) et (e).

##### Algorithme 2 #####
~~~
count <-- 0
for (i <-- 0 to n-1 step 1)
{
  if (tab[i] = 1) 
  {
    count <-- count + 1  
  }
}
for (j <-- ... to ... step ...)   // (f), (g), (h)
{
  ...                             // (i)
  if (tab[j] = 1) 
  {
    tab[j+...] <-- 1              // (j)  
    count <-- count - 1
  }
}
~~~

Complétez (f), (g), (h), (i) et (j).

En sachant que l'algorithme 1 prend environ 8 minutes pour s'exécuter sur un ordinateur moderne lorsque n vaut 1 000 000. Combien de temps ce même ordinateur prendra-t-il pour exécuter l'algorithme 2 ? 10 millisecondes, 4 minutes, 8 minutes, 15 minutes ou plusieurs jours ?
