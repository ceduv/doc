<?php
/*  
    
    session_start();  on utilise session
    session-unset();  on vire toutes les variables stockes
    session_destroy();  on detruit la session
    session_write_close():  on enregistre fin de session + suppr
    setcookie(session_name()'',0,null,null,false,true) modifie le cookie en y mettant une valeur vide
    session_regenerate_id(true); regenere un nouvelle identifiant, on a perdu tout avant.

    session_status() : 0 || php_session_disabled
                       1 || php_session_none
                       2 || php_session_active
    
    echo session_status

    header ('location: index.php'); redirection, ne fonctionne pas avec url
*/

if(!session_id()) //verifie si session existante
{
    session_start(); // si ce n est pas le cas demarre
    session_regenerate_id(true); // regenre l identifiant de la session

}
// on fait des choses avec les sessions . . . 

session_unset(); // supprime nos variable de session
session_destroy(); // detruit la session


?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>PHP</title>
</head>
<body>
    <h1>Sessions en php</h1>
    <p>bonjour <?=  $_SESSION ['username'] ?></p>
    
</body>
</html>