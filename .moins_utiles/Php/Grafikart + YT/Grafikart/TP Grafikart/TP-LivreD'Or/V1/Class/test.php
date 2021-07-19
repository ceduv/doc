<?php

$file =  dirname(__DIR__) . DIRECTORY_SEPARATOR . "data"  . DIRECTORY_SEPARATOR . "messages.txt";
$string = file_get_contents($file);
$test = explode("\\explode", $string);
foreach ($test as $explode) {
    var_dump(json_decode($explode));
}
