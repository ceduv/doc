<?php
$dir=file("base2.php");
$max = count($dir)-1; // compte element tableau - 1
$rand = rand( 0 , $max); // rand dans toute les valeur du tableau
$value = $dir[$rand];

$test = "base2.php";

$contents = file_get_contents($test);
$contents = str_replace($value, '', $contents);
file_put_contents($test, $contents);
///



