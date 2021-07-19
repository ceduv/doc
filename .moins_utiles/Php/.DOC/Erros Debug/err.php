<?php
// notice* || alert** || errors***


error_reporting(-1); // affiche toute les erreurs dev -1 || prod 0
ini_set("display_errors",1); // change le php.ini ??? 1 || 0

/*
    function error_handler($errno) int || * mini erreur alert ou avertissement
                          ($errmsg) string || *mini 
                          ($errfile) string ||
                          ($errline) int || 
                          ($errdatas) array ||
    
    E_USER_ERROR | E_USER_WARNING | E_USER_NOTICE
*/

$my_error_handler = function(int $ernno, string $errmsg, string $errfile, int $errline)
{
    switch($ernno)
    {
        case E_USER_ERROR:
            echo $errmsg;
            break;
        
        case E_USER_WARNING:
            echo $errmsg.' sur le fichier '.$errfile;
            break;

        case E_USER_NOTICE:
            echo $errmsg;
            break;


        default:
        echo"ERREUR : ".$errmsg;
        break;
    }

};
set_error_handler($my_error_handler);

$age_personne = 16;
if($age_personne<18)
    trigger_error("tu n es pas majeurs !", E_USER_WARNING);//alias : user_error()

// restore_error_handler
// $older_handler = set_error_handler($my_error_handler); 
// set_error_handler($old_handler);   RECUPERER LE RETOUR D UNE FONCTION


