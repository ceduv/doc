<?php
$path = "index.php";

require('Class' . DIRECTORY_SEPARATOR . 'GuestBook.php');
require('Class' . DIRECTORY_SEPARATOR . 'Message.php');
require('menu ' . DIRECTORY_SEPARATOR . 'header.php');
$date = date("y-m-d");
$file =  "data" . DIRECTORY_SEPARATOR . "messages.txt";
$pseudo = isset($_POST['pseudo']) ? $_POST['pseudo'] : null;
$message = isset($_POST['message']) ? $_POST['message'] : null;
$guestbook = new GuestBook($file);

if (!empty($_POST['pseudo']) && !empty($_POST['message'])) {
    $userProfil = new Message($pseudo, $date, $message);
    $valid = $userProfil->isvalid();
    $alert = $userProfil->toHTML();
    $message = $userProfil->toJSON();
    $guestbook->addmessage($message);
} else {
    $alert = null;
}
$messages = $guestbook->getMessage();
?>



<main class="px-3">
    <br>

    <h1>Livre d'or</h1>
    <div style=" margin: auto; width:400px ; height:500px;">
        <?= $alert  ?>
        <form action="<?= $path ?>" method="POST">
            <p> <input type="text" name="pseudo" id="pseudo" class="form-control" placeholder="pseudo ..."></p>
            <p> <input type="text" name="message" id="message" class="form-control" placeholder="message ..."></p>
            <p> <input type="submit" class="btn btn-lg btn-secondary fw-bold border-white " value="valider"></p>

        </form>
        <?php foreach ($messages as $message) :  ?>
            <?= $guestbook->htmlBook() ?>
        <?php endforeach ?>
    </div>

</main>


<?php
require('menu ' . DIRECTORY_SEPARATOR . 'footer.php');
?>