Je moet een functie schrijven die het aantal "1"-en verdubbelt in een array van n getallen. Bijvoorbeeld, als je een array hebt die  `[1,1,5,1,4]` bevat, dan moet die na het uitvoeren van jouw functie `[1,1,1,1,5,1,1,4]` bevatten. Om het eenvoudig te houden, krijg je een array die alvast `2n` lang is, zodat je geen volledig nieuwe array zelf moet aanmaken.

De input en de output van het algoritme zijn gedefinieerd als volgt:

~~~
Input : n, een geheel getal.
        arr, een array van gehele getallen die 2n lang is. 
Output: arr is zo aangepast dat het aantal 1-en in de eerste n gegeven getallen is verdubbeld. 
~~~

We stellen je alvast twee mogelijke algoritmes voor waarmee je dit probleem kan oplossen - maar je moet ze eerst nog aanvullen.

##### Algoritme 1 #####
~~~
count <-- 0
for (i <-- 0 to ... step 1)                // (a)
{
  if (arr[...] = 1)                        // (b)
  {
    for (j <-- ... to i+1 step -1)         // (c)
    {
      arr[...] <-- arr[...]                // (d), (e)
    }
    count <-- count + 1
  }
}
~~~
Vervolledig (a), (b), (c), (d) en (e).

##### Algoritme 2 #####
~~~
count <-- 0
for (i <-- 0 to n-1 step 1)
{
  if (arr[i] = 1) 
  {
    count <-- count + 1  
  }
}
for (j <-- ... to ... step ...)   // (f), (g), (h)
{
  ...                             // (i)
  if (arr[j] = 1) 
  {
    arr[j+...] <-- 1              // (j)  
    count <-- count - 1
  }
}
~~~

Vervolledig (f), (g), (h), (i) en (j).

Het duurt ongeveer 8 minuten om algoritme 1 uit te voeren op een array van 1000000 getallen. Hoeveel tijd heeft dezelfde computer dan nodig voor algoritme 2? Kies uit: 10 milliseconden, 4 minuten, 8 minuten, 15 minuten of meerdere dagen.

