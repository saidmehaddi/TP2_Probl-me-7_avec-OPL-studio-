//Data
int nbavion = ...;
{string} NomLocali = ...;
{string} NomLocalj = ...;



range loci = 1..nbavion;
range locj = 1..nbavion;

float Distance[loci][locj] = ...;

//Variables
dvar boolean provenance [loci][locj]; // Déclarer les variables de décisions

//Objectif
minimize sum ( i in loci , j in locj )
Distance[i][j]*provenance[i][j];

//Constraintes

subject to
{
forall( i in loci ){
sum( j in locj ) provenance [i][j] == 1;
}
forall( j in locj ){
sum( i in loci) provenance [i][j] == 1;
}
}

