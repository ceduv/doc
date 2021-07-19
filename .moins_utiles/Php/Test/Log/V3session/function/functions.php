<?php



function checkSession()
{
    if (!empty($_SESSION['user'])) {
        header('location:mainboard.php');
    }
}

function leaveSession()
{
    if (isset($_POST["deco"])) {
        unset($_SESSION['user']);
        if (empty($_SESSION['user'])) {
            header('location:identification.php');
        }
    }
}
