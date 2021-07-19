<?php

// php -a Lancer php de maniere interactive

// password_hash — Crée une clé de hachage pour un mot de passe
// password_hash ( string $password , mixed $algo , array $options = ? )
//                  le mdp            cle de hash
//                                   PASSWORD_DEFAULT
// cost 3em parametre permet d augmenter le temps de generation pour eviter brutforce

// password_verify — Vérifie qu'un mot de passe correspond à un hachage
// password_verify ( string $password , string $hash ) : bool   
//                     le mdp             le hash du mdp    

$mdp = 'cedric';
$hash = password_hash($mdp, PASSWORD_DEFAULT);
$test = password_verify($mdp, '$2y$10$Nzib9Zve1jUH/lhMvt.gyO1Bnc32lz4XpNL0RBkIWWsduzjOoMRx2');
var_dump($test);
