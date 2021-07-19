<?php
/*
    PDO::setAttribute 
        ->  Configure un attribut du gestionnaire de base de données. Certains des attributs génériques sont listés ci-dessous : certains pilotes disposent de configuration supplémentaires

        -   PDO::ATTR_ERRMODE : rapport d'erreurs.
        -   PDO::ERRMODE_EXCEPTION : émet une exception.

*/


$pdo = new PDO('sqlite:data\data.db', null, null, [         // ===  $pdo = new PDO('sqlite:data\data.db'); null null = log mdp
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,            // ===  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ
]);
//   1  -> je veu que tu definisse comment gerer les erreurs, 
//      -> plutot que gere de facon classique emet une exception

$error = null;
try {
    $query = $pdo->query('SELECT * FROM Posts');
    $posts = $query->fetchAll();    // ici on avait PDO::FETCH_OBJ mais on l as passé ds PDO::ATTR_DEFAULT_FETCH_MODE
} catch (PDOException $e) {         //-> je capture ce type d execptions PDO EXCEPTIONS
    $error = $e->getMessage();
}
require 'menu' . DIRECTORY_SEPARATOR . 'header.php';

?>
<?php if ($error) : ?>
    <div class="alert alert-danger"><?= $error ?></div>
<?php else : ?>
    <ul>
        <?php foreach ($posts as $post) : ?>
            <li><a href="/Exo/Grafikart/Exo-PDO/V2/edit.php?id=<?= $post->id ?>"><?= htmlentities($post->name) ?></a></li>
            <!-- on passe l id ds l url ?id= -->
            <br>
        <?php endforeach; ?>
    </ul>
<?php endif ?>


<?php require 'menu' . DIRECTORY_SEPARATOR . 'footer.php'; ?>