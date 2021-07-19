<?php

require('menu' . DIRECTORY_SEPARATOR . 'functions.php');

require('menu ' . DIRECTORY_SEPARATOR . 'header.php');

$login = isset($_POST['login']) ? $_POST['login'] : null;
$pass = isset($_POST['password']) ? $_POST['password'] : null;



?>

<body>


    <form method="POST" action="#">
        <div class="col-md" style="margin-left:150px ; width:300px ; margin-top:150px ;height:300px ;">
            <h2>Authentification</h2>

            <h4>Login</h4>
            <input type="text" name="login" placeholder="..." class="form-control" required>

            <h4>Password</h4>
            <input type="text" name="password" placeholder="..." class="form-control" required>

            <input type="submit" class="btn btn-primary">

        </div>
    </form>
</body>








<?php
require('menu ' . DIRECTORY_SEPARATOR . 'footer.php');
?>