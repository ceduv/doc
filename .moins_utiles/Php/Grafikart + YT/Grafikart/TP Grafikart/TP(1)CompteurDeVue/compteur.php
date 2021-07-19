<?php
$today = date('y-m-d');
$linkFolderCountAll = __DIR__ . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . 'count.txt';
$linkFolderCountDay = __DIR__ . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . $today . '-count.txt';

$valeurRecupAll = (int)file_get_contents($linkFolderCountAll);
$valeurRecupDay = (int)file_get_contents($linkFolderCountDay);

file_put_contents($linkFolderCountAll, ++$valeurRecupAll);
file_put_contents($linkFolderCountDay, ++$valeurRecupDay);


// php compteur.php
