<?php

// PARTIE ECRITURE

$fichier = __DIR__ . DIRECTORY_SEPARATOR . 'demo.txt';
//     patfh folder . \\ en fonction des sytemes

// vardump(__DIR__)
// var_dump(dirname(__DIR__)) permet de remonter le dossier
//  var_dump(dirname(dirname(__DIR__))) MM plusieurs X
// PHP 7.0 dirname(__DIR__,4)  4 = 4x dirname

$size = @file_put_contents($fichier, ' Salut les gens!', FILE_APPEND);

// ATTENTION aux pb de permis concernant la crea de fichiers

// @ cache les erreures devant une fonction
// IL FAUT TRAITER CES ERREURES

if ($size === false) {
    echo 'Impossible d\'écrire sur le fichier';
} else {
    echo 'Ecriture reussie';
}

//=============================================================

// PARTIE LECTURE

echo file_get_contents($fichier);

// cf fopen fread
// fget li le fichier par ligne

// trim — Supprime les espaces (ou d'autres caractères) en début et fin de chaîne 

//str_getcsv — Analyse une chaîne de caractères CSV dans un tableau
