<?php
$eleves=[
    'CM2'=>['cedric','arnaud','clement','kevin'],
    'CM1'=>['Antoine','Kais','Laurent']
];

foreach($eleves as $classe => $prenoms){
    echo "la classe $classe <br>";
    foreach($prenoms as $name){
        echo " a pour eleve : $name <br>";
    }
    echo "<br>";
}



?>