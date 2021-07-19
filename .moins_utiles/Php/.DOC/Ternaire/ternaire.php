<?php

// ISSET

if(!isset($var) {
    $var = "";
  };
//================================

$var ??= "";

$var = $var ?? "";

//================================
//================================


// IF

if (empty($_POST['action'])) {
    $action = 'défaut';
} else {
    $action = $_POST['action'];
}
//================================

$action = empty($_POST['action'])?'defaut':$_POST['action'];



//Notez que l'opérateur ternaire est une instruction, et il n'est pas évalué en tant que variable, mais en tant que résultat de l'instruction. Il est important de savoir si vous voulez retourner une variable par référence. L'instruction return $var == 42 ? $a : $b; dans une fonction retournée par référencene fonctionnera donc pas et une alerte est émise dans les versions supérieures de PHP. 
?>

