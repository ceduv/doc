<?php
$classe=[
    [
        'nom'=>'Doe',
        'prenom'=>'John',
        'notes'=>[12,15,17]
    ],
    [
        'nom'=>'Doe',
        'prenom'=>'Jane',
        'notes'=>[13,15,17]
    ]
    
]
$moyenne1 = ($classe[1]['notes'][0]+$classe[1]['notes'][1]+$classe[1]['notes'][2])/3;
echo $moyenne1;
?>