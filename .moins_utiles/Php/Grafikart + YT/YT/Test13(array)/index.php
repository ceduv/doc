<?php
/*  clé optionelle grace a =>

        $tab_integers=[
    1 => 10,
    "ok" => 11,
    10 =>12,
    13,
    date("y-m-d"),
    15];
    var_dump($tab_integers) recup les indos d une variable
*/
$tab_integers=[
    10,
    11,
    12,
    date("y-m-d"),
    [14,15,16,17,18,19,20],
    15,
];
echo "<br />";

$tab_population_villes =[
    "paris"=>14000,
    "orleans"=> 8,
    "clermont-ferrand" => 146,
];
$nom_ville="paris";

foreach($tab_population_villes as $key => $value)
echo"<p>".$key."/".$value."</p>";
?>
