<?php
// Liste de films dans tableau $liste avec 0=>"films"
    // button Rand  genere un chiffre au hasard , on recupere le film associé

// Films o/n si oui , supprimer le film de la base de donnée , sinon chercher un autre film
    // ajouter un champ pour ajouter un films a la base de donné


$base=file("base.php"); // fichier importer ds tableau
$max = count($base)-1; // compte element tableau - 1
$rand = rand( 0 , $max); // rand dans toute les valeur du tableau
$value = $base[$rand]; // va chercher la clé dans le tableau grace au rand


$choix=readline("Souhaitez vous tirer un Film au hasard '1' , ou ajouter un nouveau Film a la liste '2'");
if($choix==1){
    echo $value;
}
elseif($choix==2){
$string=readline("Entrez un nouveau films a ajouter : ");
$string1= "$string\r\n";
$file = fopen("base.php", "a");
fwrite ( $file ,$string1) ;
fclose($file);
}
else{
    echo "Mauvaise saisie";
}

// php films.php



?>
