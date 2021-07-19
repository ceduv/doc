<?php
/*
 file_get_contents — Lit tout un fichier dans une chaîne
 var_dump — Affiche les informations d'une variable


/*
$info=file("info.txt");    Tableau valeur associative
echo "<pre>";
print_r($info);
echo "</pre>";
*/

$info= file_get_contents("info.txt"); //

if($info)
 var_dump($info);
else
 echo"erreur";
?>
