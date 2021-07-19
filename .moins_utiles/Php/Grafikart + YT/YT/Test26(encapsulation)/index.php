<?php
/*
    Accesseurs : getter (lire un attribut) ->getattribut
               : setter (modifie un attribut) ->setattribut

    --------------------------------------------------------

    on ne peut pas recuperer les elements private, les passes dans une methode pour les recup en dehors de la classe
*/
class Vehicle
{
    private $_name; //attribut privé
    private $_speed;

    public function getName() //methode public
    {
        return $this->_name; // retourne le nom de lattribut dans une methode
    }
    public function setName(string $name)
    {
        $this->_name = $name;
    }

    public function __construct(string $name, int $speed)
    {
       $this->_name = $name;
       $this->_speed = $speed;
    }
    public function move()
    {
        echo 'le vehicule '.$this->_name.' se deplace a '.$this->_speed.' km/h<br>';
    }

}


$obj1 = new Vehicle('XC450', 650);
$obj1->move();
echo $obj1->getName();