<?php  
$notes = [];
$action = null;

while ($action !== 'fin')
{
    $action= readline('Entrer une nouvelle note (ou \'fin\' pour terminer la saisie).');
    if($action !== 'fin')
    {
        $notes[] = (int)$action;
    }
}
foreach($notes as $note)
{
    echo "- $note <br>";
}

?>