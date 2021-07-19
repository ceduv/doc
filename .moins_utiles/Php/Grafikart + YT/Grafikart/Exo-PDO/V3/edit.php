<?php

$pdo = new PDO('sqlite:data\data.db', null, null, [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ
]);


$error = null;
$success = null;
$id = $pdo->quote($_GET['id']);


try {
    if (isset($_POST['name'], $_POST['content'])) {
        $query = $pdo->prepare('UPDATE posts SET name= :name, content = :content WHERE id=:id');
        // requete prepare          SET name= :name     ( definir le nom je passe un parametre name )
        //                          content = :content  ( defini le contenu ds le parametre content ) 
        //                          WHERE id=:id        (condition c est l id qui est passé ds l url) ***??? 
        $query->execute([
            'name' => $_POST['name'],
            'content' => $_POST['content'],
            'id' => $_GET['id']
        ]);
        // execution requete avec definition des parametres demandé en en prepare() 
        // premuni d une insertion sql ???  PQ ?  
        $success = "votre article a bien ete modifie";
    }
    $query = $pdo->prepare('SELECT * FROM Posts WHERE id = :id ');
    $query->execute([
        'id' => $_GET['id']
    ]);

    $post = $query->fetch();
} catch (PDOException $e) {         // si on a une erreure , l expception est catch ici
    $error = $e->getMessage();
}
require 'menu' . DIRECTORY_SEPARATOR . 'header.php';

?>
<div class="container">
    <?php if ($success) : ?>
        <div class="alert alert-success"><?= $success ?></div>
    <?php endif ?>
    <?php if ($error) : ?>
        <div class="alert alert-danger"><?= $error ?></div>
    <?php endif ?>

    <form action="" method="POST">
        <div class="form-group">
            <input type="text" class="form-control" name="name" value="<?= htmlentities($post->name) ?>">
        </div>
        <div class="form-group">
            <textarea class="form-control" name="content"><?= htmlentities($post->content) ?></textarea>
        </div>
        <button class="btn btn-primary">Sauvegarder</button>
    </form>

</div>


<?php require 'menu' . DIRECTORY_SEPARATOR . 'footer.php'; ?>