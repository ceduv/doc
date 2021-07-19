<?php
/*
        Attribut || Proprietes : var appartenant a une classe /generalement prive
        Methode                : function "          " classe /generalement public
        -----------------------------------------------------------

        La visibilité d'une propriété, d'une méthode ou une constante peut être définie en préfixant sa déclaration avec un mot-clé : public, protected, ou private.

        Public  : Les éléments déclarés comme publics sont accessibles partout.

        Protected :  L'accès aux éléments protégés est limité à la classe elle-même, ainsi qu'aux classes qui en héritent et parente

        Private : L'accès aux éléments privés est uniquement réservé à la classe qui les a définis.

*/

class Vehicle
{
    private $_name;
    private $_power;

    public function __construct(string $name, int $power)
    {
       $this->_name = $name;
       $this->_power = $power;
    }
    public function move()
    {
        echo $this->_name.' se deplace .';
    }

}
$obj1 = new Vehicle('mon bolide', 650);
//echo $obj1->_name.'<br>'; error en private

$obj2 = new Vehicle('mon autre bolide');
//echo $obj2->_name.'<br>'; error en private

$obj3 = new Vehicle('mon dernier bolide');
$obj3->move();




?>
