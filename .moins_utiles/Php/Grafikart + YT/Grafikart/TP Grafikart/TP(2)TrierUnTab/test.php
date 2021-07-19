<?php

$tab = [15, 11, 8, 0, 1, 6];
$a = 0;
$b = 1;

while ($b <= 5) {
    if ($tab[$a] > $tab[$b]) {
        $temp = $tab[$a];
        $tab[$a] = $tab[$b];
        $tab[$b] = $temp;
        $a = 0;
        $b = 1;
    } else {
        ++$a;
        ++$b;
    }
}

var_dump($tab);
