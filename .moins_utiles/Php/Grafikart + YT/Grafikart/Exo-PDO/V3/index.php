<?php



$pdo = new PDO('sqlite:data\data.db', null, null, [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ
]);


$error = null;
try {
    if (isset($_POST['name'], $_POST['content'])) {
        $query = $pdo->prepare('INSERT INTO posts (name,content,created_at) VALUES (:name,:content,:created)');
        // requete prepare          INSERT INTO posts (name,content)     ( inserer dans colone name et content )
        //                          VALUES (:name,:content)  (ce quon va ajouter ) 
        $query->execute([
            'name' => $_POST['name'],
            'content' => $_POST['content'],
            'created' => time()
        ]);
        header('location :.../Exo/Grafikart/Exo-PDO/V3/edit.php?id=' . $pdo->lastInsertId());
        // pb pour recupere le dernier id -> lastinsertid
        exit;
        //      ***???
        //    The server encountered an internal error or misconfiguration and was unable to complete your request.
        //    deja decommenté ds le fichier de conf appache

    }
    $query = $pdo->query('SELECT * FROM Posts');
    $posts = $query->fetchAll();
} catch (PDOException $e) {
    $error = $e->getMessage();
}
require 'menu' . DIRECTORY_SEPARATOR . 'header.php';

?>
<?php if ($error) : ?>
    <div class="alert alert-danger"><?= $error ?></div>
<?php else : ?>
    <ul>
        <?php foreach ($posts as $post) : ?>
            <li><a href="/Exo/Grafikart/Exo-PDO/V3/edit.php?id=<?= $post->id ?>"><?= htmlentities($post->name) ?></a></li>

            <br>
        <?php endforeach; ?>
    </ul>
    <div class=" p-3 my-3 bg-dark text-white">
        <form action="" method="POST">
            <div class="form-group">
                <input type="text" class="form-control" name="name" placeholder="Titre de l article a ajouter ." value="">
            </div>
            <br>
            <div class="form-group">
                <textarea class="form-control" name="content" placeholder="Contenu ."></textarea>
            </div>
            <br>
            <button class="btn btn-primary">Sauvegarder</button>
        </form>
    </div>
<?php endif ?>


<?php require 'menu' . DIRECTORY_SEPARATOR . 'footer.php'; ?>