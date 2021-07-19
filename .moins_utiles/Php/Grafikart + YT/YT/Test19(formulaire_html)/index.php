<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Formulaire html</title>
</head>
<body>
    <h1>Saisie d'informations</h1>
        <form methode="post" action="result.php">
            <p><label for="iduser">Utilisateur :</label> <input type="text" id="iduser" name="user"></p>
            <p><label for="idchoice">Choix :</label> <input type="radio" name="choice" id="idchoice" value="oui">OUI
            <input type="radio" name="choice" id="idchoice" value="non">Non</p>
            <p><input type="submit" name="valid_form" value="valider"></p>
        </form>
</body>
</html>