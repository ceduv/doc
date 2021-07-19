<?php
$tab = [15, 11, 8, 0, 1, 6, -12, 17, 11, 25, -25];
$result = $tab;
$i = 0;

while ($i < count($result) - 1) {
    if ($result[$i] > $result[$i + 1]) {
        $temp = $result[$i];
        $result[$i] = $result[$i + 1];
        $result[$i + 1] = $temp;
        $i = 0;
    } else {
        ++$i;
    }
}

var_dump($tab);
var_dump($result);
