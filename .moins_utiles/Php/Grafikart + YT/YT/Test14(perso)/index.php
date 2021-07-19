<?php


$valeurA = 2;
$valeurB = int; // dire que b est <= a *1
$result1 = $valeurA/$valeurB;



for($valeurA = 2 ; $valeurA <=100 ; $valeurA++ ; $valeurB<$valeurA) // *1
{
    if($result1==1 || $result1==0 || $result1 != int){ // int??
        echo "/ ".$valeurA." n'est pas un nombre premier .<br />";
    }
    else(){
        echo "/".$valeurA." est un nombre premier .<br />";
    }
};



 ?>