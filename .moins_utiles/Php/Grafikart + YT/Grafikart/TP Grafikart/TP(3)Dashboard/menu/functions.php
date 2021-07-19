<?php
// basename  -   retourne le nom d un fichier
// explode   -   explose le nom du fichier par les signes
// glob      -   renvoi tableau avec le nom de chaque fichier
//
// file_get_contents    -   Lit tout un fichier dans une chaîne
// file_put_contents    -   Si le fichier filename n'existe pas, il sera créé. Sinon, le fichier existant sera écrasé, si l'option FILE_APPEND n'est pas définie.
// fopen                -   Ouvre un fichier ou une URL
//
// strpad    -   complete chaine de caractere
//

function add_view($linkData, int $filevalue)
{
    if (file_exists($linkData)) {
        file_put_contents($linkData, ++$filevalue);

        return (int)file_get_contents($linkData);
    } else {
        fopen($linkData, 'x',);
        file_put_contents($linkData, 1);

        return (int)file_get_contents($linkData);
    }
}

function display_views()
{
    $allViewFile = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . 'count.txt';
    $allView = (int)file_get_contents($allViewFile);
    return $allView;
}

function display_month_views(int $year, int $mois): int
{
    $mois = str_pad($mois, 2, '0', STR_PAD_LEFT);
    $allViewFile = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . $year . '-' . $mois . '-' . '*';
    $fichiers = glob($allViewFile);
    $total = 0;
    foreach ($fichiers as $fichier) {
        $total += (int)file_get_contents($fichier);
    }
    return $total;
}

function display_details_views(int $year, int $mois): array
{
    $mois = str_pad($mois, 2, '0', STR_PAD_LEFT);       // complete chaine de caractere ici taille 2 on ajoute 0 par la gauche
    $allViewFile = dirname(__DIR__) . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . $year . '-' . $mois . '-' . '*'; // on cherche le fichier
    $fichiers = glob($allViewFile);                     // renvoi tableau avec le nom de chaque fichier
    $visites = [];                                      // on cree un tableau vide
    foreach ($fichiers as $fichier) {
        $parties = explode('-', basename($fichier));    // on explose le nom du fichier par les - donc ici 4 parties 21-05-10
        $visites[] = [
            'annee' => $parties[0],
            'mois' => $parties[1],
            'jours' => $parties[2],
            'visites' => file_get_contents($fichier)
        ];
    }
    return $visites;
}

function be_connect(): bool
{
    if (session_status() === PHP_SESSION_NONE) {        //si le session statut dit non
        session_start();                                // on initialise la session
    }
    return !empty($_SESSION['connecte']);               // est ce que session est plein ?
}

function user_connected(): void                         // void ??
{
    if (!be_connect()); {
        header((__DIR__) . DIRECTORY_SEPARATOR . 'Log.php');
        exit();
    }
}
