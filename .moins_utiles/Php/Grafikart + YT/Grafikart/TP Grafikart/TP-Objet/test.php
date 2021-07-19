<?php
require "class" . DIRECTORY_SEPARATOR . "Class.php";
// ($nom, $classe, $faction, $date, $bouger, $skill, $inventaire)

$nom = "akro";
$classe = 2;
$faction = 1;
$date = new datetime(Date("y-m-d"));
$bouger = [0, 90, 180, 270];
$skill = [
    "coup1" => "atck",
    "coup2" => "parade",
    "coup3" => "magie"
];
$inventaire = [
    [
        "tete",
        "torse",
        "arme"
    ],
    [
        "potion 1",
        "potion 2",
        "tete2",
        "potion 3",
        "arme2"
    ]
];



$perso = new Personnages($nom, $classe, $faction, $date, $bouger, $skill, $inventaire);

var_dump($perso);
