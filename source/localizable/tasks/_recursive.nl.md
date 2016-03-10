Misschien ben je ooit al eens de Fibonacci-getallen tegengekomen in de les wiskunde. Het 0-de Fibonacci-getal is 0, en het 1ste is 1. Voor alle `n > 1`, is het n-de getal gelijk aan de som van het `(n−1)`-ste en het `(n−2)`-de. De eerste 8 Fibonacci-getallen zijn dus `0, 1, 1, 2, 3, 5, 8, 13`. De Fibonacci-getallen zijn dus gedefinieerd als volgt:

~~~
Fib(0) = 0
Fib(1) = 1
Fib(n) = Fib(n-1) + Fib(n-2), voor n > 1
~~~

Dit noemen we een recursieve functie: de functie `Fib` is gedefinieerd in functie van zichzelf. In een programmeertaal is het gemakkelijk om dat te programmeren. Je schrijft dan een functie die zichzelf oproept:

~~~
Input : n, een natuurlijk getal, waarvoor we het bijhorende Fibonacci-getal willen berekenen 
Output : het n-de Fibonacci-getal 

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

* Wat is het resultaat als we `Fib(9)` aanroepen?
* Hoeveel keer roept de functie `Fib` zichzelf aan nadat we `Fib(2)` aanroepen?
* Hoeveel keer roept de functie `Fib` zichzelf aan nadat we `Fib(5)` aanroepen?

Enkele slimme informatici hebben een andere (en hopelijk betere) manier gevonden om Fibonacci-nummers te berekenen. Ze hebben een nieuwe recursieve functie `BetterFib` geprogrammeerd op de volgende manier: 

~~~
Input : n, een natuurlijk getal, waarvoor we het bijhorende Fibonacci-getal willen berekenen 
        a, een natuurlijk getal dat in het begin 0 is 
        b, een natuurlijk getal dat in het begin 1 is 
        i, een natuurlijk getal dat in het begin 0 is 
Output : het n-de Fibonacci-getal

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

Om het `n`-de Fibonacci-getal te berekenen, roep je `BetterFib(n,0,1,0)` aan. Je begrijpt de code zeker beter als je weet dat bij elke aanroep van `BetterFib`, de variabele `a` altijd het `i`-de Fibonacci-getal bevat, en `b` altijd het `(i+1)`-ste Fibonacci-getal.

* Hoeveel keer roept de functie `BetterFib` zichzelf aan nadat we `BetterFib(2,0,1,0)` aanroepen?
* Hoeveel keer roept de functie `BetterFib` zichzelf aan nadat we `BetterFib(5,0,1,0)` aanroepen?


