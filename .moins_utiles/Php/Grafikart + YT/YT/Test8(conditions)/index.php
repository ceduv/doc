<?php /*
opérateurs de comparaison:
        ==    égale ( different de = qui corespond a une affectation)
        ===   verifie égalité ""ET"" type ( identique en tant que valeur et que type)
        !=    different de   |||<>|||
        !==   diferent de valeur ""OU"" de meme type
        <     inf
        >     sup
        <=    inf  ""OU""  ==
        >=    sup  ""OU""  ==
    *1  <=>   sup a, OU == a, OU inf a ? -> 0  si(A==B)
                                         -> -1 si(A<B)
                                         -> 1  si(A>B)
exemples:

1
$variable =<expression>;
if(<expression>)
{
    code si expression true
}
2

$var = 6;
$number = 14 + $var + unefonction($var)


*/

$number = 14;
$number2 = "17"; // 17 != "17" 
$result = $number == 14; // pas trop compris l interet !!!!!!!
$var1 = 9;
$var2 = 9;
$resultVar = $var1 <=> $var2; // *1

if($number == 14){
echo "number vaut 14";
}
echo"<br />";

if($number != 15){
echo "ok!";
}
echo"<br />";

if($number2 !== 17){
echo "!==";
}
echo"<br />";

if($number == 14 && $number2 == 17){ // les 2 (sans prio)
echo"ca marche mamene";
}
echo"<br />";

if($number == 15 || $number2 == 17){ // l un ou l autre == (sans prio)
echo"ca remarche mamene";
}
echo"<br />";

if($result){
echo"et ca continue";
}
echo"<br />";

echo $resultVar; // *1


?>