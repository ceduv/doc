<?php
/*
    session_id(); retourne l id de session
    session_start();
    session_destroy();
    unset($_SESSION ['username']) jamais sur juste $_SESSION
*/
    session_start();
    $_SESSION ['username'] = 'ced';

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