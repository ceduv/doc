<p><a href="index.php">&laquo; Retour au formulaire</a></p>
<pre>
<?php
/*
    Variables SUPERGLOBALES :   $_GET      Variables HTTP GET
                                $_POST     HTTP POST variables

    URL en GET -> http://localhost/result.php?var1=123&var2=1234
    var visible
    URL en POST-> http://localhost/result.php?
    var invisible

    Attribut name en html se recupere par $_GET

    //

    SECURITE

    Evitez que les users puissent coder dans des champs(ex:<script>alert("hacked");</script>) FAILLE XSS

    htmlspecialchars($str) = php remplace les symboles par des equivalents html

    //

    isset() : Verifie qu une variable existe et est nulle
    empty() : Varifie qu une variable est vide
    is_null : Verifie qu une variable est nulle ( la var doit exister)

    isset != is_null


    $mavariable = FALSE;

    isset() + empty()

    True=>  Chaine vide
            False
            []
            "0"
            0
            0.0000
    
    isset() : False => NULL || var $mavariable;                => empty renverrai TRUE
    empty() : False => " " (un espace blanc) || true || \0     => isset renverrai TRUE


*/
if(isset($_POST['user']) && !empty($_POST['user']))
    echo htmlspecialchars($_POST['user']);
    


//$prenom = $_POST['user'];
//plein de choses avec $prenom
//echo htmlspecialchars($_GET['prenom']); ??
//print_r($_GET)

?>
</pre>