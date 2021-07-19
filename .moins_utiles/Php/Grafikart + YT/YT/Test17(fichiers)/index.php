<?php
/*
retour a la ligne
    windows   : \r\n " "
    gnu/linux : \n
    macos     : \r

    ! inverse de
    exit — Affiche un message et termine le script courant
    fgetc — Lit un caractère dans un fichier
    fgets — Récupère la ligne courante à partir de l'emplacement du pointeur sur fichier
    feof — Teste la fin du fichier
    fopen — Ouvre un fichier ou une URL
    fread — Lecture du fichier en mode binaire
    

*/
$myFile = fopen("info.txt","r");

if(!$myFile)
    exit("ouverture du fichier impossible");     //die()

//while($str= fgetc($myFile))        TANT QUE  
//echo $str;                         recupere caractere les un apres les autres quand il y en 
//                                   a plus retoune false donc s arrete

while(!feof($myFile))
    echo fgets($myFile).'<br>';


if(!fclose($myFile))
    exit("Fermerture du fichier echouee");
