<?php

$var =strtolower(readline('veuillez entrez un mot : '));
$reverse=strtolower(strrev($var));


/*function reverse($pal){
    strrev($var);
}*/


if($var===$reverse)
{
    echo "$var est un palindrome .";
}
else
{
    echo"$var n'est pas un palindrome .";
}

?>