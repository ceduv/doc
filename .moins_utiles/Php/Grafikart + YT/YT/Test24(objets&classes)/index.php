<?php

class Vehicle // MAJ au debut de chaque mot de la classe
{
    public function __construct()
    {
        echo "je suis construit !";
    }
    //public function __destruct()
    //{
    //  echo "je suis detruit !";
    //}
}
$obj1 = new Vehicle();
$obj2 = new vehicle();

//detruit les objet dans l ordre inverse constuit obj1 obj2 detruit obj2 puis obj1
// $this fait refference a l instance en cour 

?>

