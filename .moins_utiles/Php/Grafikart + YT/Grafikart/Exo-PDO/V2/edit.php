<?php

$pdo = new PDO('sqlite:data\data.db', null, null, [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ
]);


$error = null;
$id = $pdo->quote($_GET['id']);
//  $id = $pdo->quote($_GET['id']);
//  ->  Protège une chaîne pour l'utiliser dans une requête SQL PDO
//  ->  Evite l injection de sql commme DELETE

// !!! une requete preparé l evite aussi on remplace query par prepare

try {
    $query = $pdo->prepare('SELECT * FROM Posts WHERE id = :id ');
    //      $query = $pdo->query('SELECT * FROM Posts WHERE id = ' . $_GET['id']);
    //      ->requete en cherchant precisement ds where et on passe l id present ds l url

    $query->execute([               //  execute une requete preparé
        'id' => $_GET['id']         // dans la quete preparé , remplace id par ce qui est passé par l url
    ]);

    $post = $query->fetch();
} catch (PDOException $e) {
    $error = $e->getMessage();
}
require 'menu' . DIRECTORY_SEPARATOR . 'header.php';

?>
<div class="container">
    <?php if ($error) : ?>
        <div class="alert alert-danger"><?= $error ?></div>
    <?php else : ?>
        <form action="" method="POST">
            <div class="form-group">
                <input type="text" class="form-control" name="name" value="<?= htmlentities($post->name) ?>">
            </div>
            <div class="form-group">
                <textarea class="form-control" name="content"><?= htmlentities($post->content) ?></textarea>
            </div>
            <button class="btn btn-primary">Sauvegarder</button>
        </form>
    <?php endif ?>
</div>


<?php require 'menu' . DIRECTORY_SEPARATOR . 'footer.php'; ?>