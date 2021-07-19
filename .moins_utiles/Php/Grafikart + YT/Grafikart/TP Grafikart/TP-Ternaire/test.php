<?php

//$a = 1;

if (isset($a)) {
    echo "set";
} else {
    echo "unset";
}

echo "\n";

echo $a ??= 'unset';

//////////////////////////////

echo "\n";

$i = 3;

if ($i < 5) {
    echo "inf a 5";
} else {
    echo "sup ou egale a 5";
}

echo "\n";

$test = ($i < 5) ? "inf a 5" : "sup ou egale a 5";
echo $test;
