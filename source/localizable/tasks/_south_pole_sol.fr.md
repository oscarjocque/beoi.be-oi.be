##### Première carte

Quelque soit la salle dans laquelle le robot arrive, le robot se retrouvera toujours dans la salle indiquée d'un point si il se déplace **vers le nord et ensuite vers l'est**. En effet :

<ul data-bullet="ti-arrow-right">
  <li>S'il est déjà dans la salle au nord-est, aller vers le nord ou vers l'est le fera revenir à cette même salle.</li>
  <li>S'il est dans la salle du nord-ouest, le déplacement vers le nord le fera rester dans la même salle et le déplacement vers l'est, le fera arriver dans la salle du nord-ouest.</li>
  <li>S'il est dans la salle du sud-est, le déplacement vers le nord le fera arriver dans la salle du nord-ouest et le déplacement vers l'est le fera rester dans la même salle. </li>
  <li>S'il se trouve dans la salle du sud-ouest, le déplacement vers le nord le fera arriver dans la salle du nord-ouest et le déplacement vers l'est le fera arriver dans la salle du nord-ouest.</li>
</ul>

<h6 class="mt24">Quelques observations intéressantes</h6>

<ul data-bullet="ti-info-alt">
  <li>La solution "est puis nord" est également correcte.</li>
  <li>De même, toute solution se terminant par "est, nord" ou "nord, est" est correcte. </li>
  <li>Comme point de départ, il était possible de savoir que la solution ne pouvait pas faire moins de deux étapes car la salle au sud-ouest est située a une distance "2" du point d'arrivée.</li>
</ul>

##### Deuxième carte

La solution la plus courte est "sud, est, ouest".


##### Troisième carte

Les solutions sont "est, sud, sud, nord" ou "est, nord, est, nord".
