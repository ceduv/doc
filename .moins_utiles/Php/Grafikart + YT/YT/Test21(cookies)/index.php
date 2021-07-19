<?php
if(isset($_COOKIE['lang']) || empty($_COOKIE['lang']))
setcookie('lang','fr', time() + 3600 * 24 * 365 , null , null , false , true);
//        Nom    valeur   durée                  chemin nom de domaine | si https | acces que en http evitez java script
// $_COOKIE superglobal qui eprmet d afficher cookies
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title><?= $title ?></title> <!-- $title ??? -->
</head>
<body>
<h1>Les cookies en php</h1>
<p> Langue de l utilisateur : <?= htmlspecialchars($_COOKIE['lang'])?></p>
    
</body>
</html>
