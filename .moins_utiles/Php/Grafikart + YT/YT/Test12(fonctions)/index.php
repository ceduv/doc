<?php
/*  FONCTIONS:
    -une fonction posssede un nom
    -elle peut avoir des parametres
    -elle peut retourner des resultats

    //// dans une fonction la variable est gardé en memoire le temps de l utilisation de la fonction ex: $number != number dans gettype

    //// return pour recuperer une var d une fonction en dehors

    TYPES de parametres d une fonction:
    -array
    -callable
    -bool != boolean (non scalaire mais objet)***
    -int  != integer (non scalaire mais objet)***
    -float
    -string

*/
$number1 = true;
echo gettype($number1);

function hello()
{
    echo" <br/>bonjour !";
}
//appel de la fonction
hello();
// passage par reference & ???1

function ma_fonction(int $var1/*obligatoire pas de valeur par defaut*/, string $var2 ="truc")
{                       //^|^ obligatoire en premier par defaut ensuite
    //code
}
ma_fonction(14);
ma_fonction(14,"bonjour");

echo "<br/>";

//
function ma_fonction2(...$lotofvar)
{  foreach($lotofvar as $data)
    echo $data;
    echo "<br/>";
  
}
ma_fonction2(1);
ma_fonction2(1,2);
ma_fonction2(1,2,3,4);
ma_fonction2(1,2,3,4,5);

//

function ma_fonction3(...$lotofvar1)
{ 
    var_dump($lotofvar1);
}
ma_fonction3(1,2,3,4.2,5,"ok");


?>