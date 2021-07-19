<?php
/*

//  $pdo = new PDO('mysql:host=localhost;dbname=test', "root");
        ->MYSQL

//  $pdo = new PDO('sqlite:' . __DIR__ . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . 'data.db');
        ->SQLITE

    METHODE :
        - execute       requete prepare
        - fetch         recup un resultat
        - fetchall      recup plusieurs resultats
        - fetchcolumn   recup une colone  

    PDO::   :
        - PDO::FETCH_BOTH (défaut): retourne un tableau indexé par les noms de colonnes et aussi par les numéros de colonnes, commençant à l'index 0, comme retournés dans le jeu de résultats
        
        - PDO::FETCH_CLASS: retourne une nouvelle instance de la classe demandée

        - PDO::FETCH_ASSOC: retourne un tableau indexé par le nom de la colonne comme retourné dans le jeu de résultats

        - PDO::FETCH_NUM : retourne un tableau indexé par le numéro de la colonne comme elle est retourné dans votre jeu de résultat, commençant à 0

        - PDO::FETCH_OBJ : retourne un objet anonyme
*/
require 'menu' . DIRECTORY_SEPARATOR . 'header.php';
$pdo = new PDO('sqlite:data\data.db');
$query = $pdo->query('SELECT * FROM Posts');    // retourne un jeu de résultats en tant qu'objet PDOStatement
if ($query === false) {
    var_dump($pdo->errorInfo());
    die('erreur SQL');
}
$posts = $query->fetchAll(PDO::FETCH_OBJ);                    // recup un objet
var_dump($posts);

?>


<ul>
    <?php foreach ($posts as $post) : ?>
        <li><?= $post->name ?></li>
        <li><?= $post->content ?></li>
        <br>
    <?php endforeach; ?>
</ul>



<?php require 'menu' . DIRECTORY_SEPARATOR . 'footer.php'; ?>