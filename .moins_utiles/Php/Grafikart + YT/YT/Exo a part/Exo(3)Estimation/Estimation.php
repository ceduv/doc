<?php
$estim1 = 100000;
$estim2 = 76000;
$estim3 = 32000;
$estim4 = 15000;
$estim5 = "non accepté";


//extraire toutes les donnes d un formulaire et les mettre en var
extract($_POST); // $annee $type ...

if(!empty($nom) && !empty($type) && !empty($annee)){
    echo"<h1>estimation en cours ...</h1>" . "<br>";
    //convertion a faire 35% -> x1.35
    // +50 -> x1.5 = 1 + %/100
    //-30% -> 1 - 30/100
    $pourcentage= $type / 100;
    $nombre = 1+$pourcentage;
    $calculFinal = $annee*$nombre;
    echo $calculFinal;
    
    
}
else{
    echo"merci de remplir les champs !<br>";
}



?>