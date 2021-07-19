<?php
require_once('Class' . DIRECTORY_SEPARATOR . 'Message.php');
require_once('Class' . DIRECTORY_SEPARATOR . 'GuestBook.php');

$errors = null;
$success = false;
$guestbook = new GuestBook(__DIR__ . DIRECTORY_SEPARATOR . "data" . DIRECTORY_SEPARATOR . "messages.txt");

if (isset($_POST['username'], $_POST['message'])) {
    $message = new Message($_POST['username'], $_POST['message']);
    if ($message->isvalid()) {

        $guestbook->addmessage($message);
        $success = true;
        $_POST = [];
    } else {
        $errors = $message->getErrors();    // ARRAY
    }
}

$messages = $guestbook->getMessages();      // ARRAY
$title = "Livre D'Or";
require_once('menu ' . DIRECTORY_SEPARATOR . 'header.php');
?>
<br>
<br>
<br>



<div class="container">
    <h1>Livre d'or</h1>
    <br>
    <?php if (!empty($errors)) : ?>
        <div class="alert alert-danger">
            Formulaire invalide
        </div>
    <?php endif ?>
    <?php if ($success) : ?>
        <div class="alert alert-success">
            Merci !
        </div>
    <?php endif ?>


    <form action="" method="POST">
        <div class="form-group">
            <input value="<?= htmlentities($_POST['username'] ?? '') ?>" type="text" name="username" id="username" class="form-control<?= isset($errors['username']) ? " is-invalid" : "" ?>" placeholder="pseudo ...">
            <?php if (isset($errors['username'])) : ?>
                <div class="invalid-feedback"><?= $errors['username'] //appel donne du tableau errors
                                                ?></div>
            <?php endif ?>
        </div>
        <br>
        <div class="form-group">
            <!-- texte area   -->
            <textarea type="text" name="message" id="message" class="form-control<?= isset($errors['message']) ? " is-invalid" : "" ?>" placeholder="message ..."><?= htmlentities($_POST['message'] ?? '') ?></textarea>
            <?php if (isset($errors['message'])) : ?>
                <div class="invalid-feedback"><?= $errors['message'] ?></div>
            <?php endif ?>
        </div>
        <br>
        <div class="form-group">
            <input type="submit" class="btn btn-lg btn-secondary fw-bold border-white " value="valider">
        </div>
    </form>

    <?php if (!empty($messages)) : ?>
        <h1 class="mt-4">Vos messages</h1>
        <?php foreach ($messages as $message) : ?>
            <?= $message->toHTML()   ?>

        <?php endforeach ?>
    <?php endif ?>
</div>



<?php
require('menu ' . DIRECTORY_SEPARATOR . 'footer.php');
?>