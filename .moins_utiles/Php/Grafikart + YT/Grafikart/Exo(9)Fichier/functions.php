<?php

if (!function_exists('checkbox')) {
    function checkbox(string $name, string $value, array $data): string
    {                   //parfum
        $attributes = '';
        if (isset($data[$name]) && in_array($value, $data[$name])) { // chercher dans un tableau (aiguille,botte de foin)
            $attributes .= 'checked';
        }
        return <<<HTML
    <input type="checkbox" name="{$name}[]" value="$value" $attributes> 
HTML;
    }
}

//{$name} pas compris l erreur sans crochet
if (!function_exists('radio')) {
    function radio(string $name, string $value, array $data): string
    {
        $attributes = '';
        if (isset($data[$name]) && $value === $data[$name]) {
            $attributes .= 'checked';
        }
        return <<<HTML
    <input type="radio" name="{$name}" value="$value" $attributes> 
HTML;
    }
}



function nav_item(string $lien, string $titre, string $linkclass = ''): string
{
    $classe = 'nav-link ';
    if ($_SERVER['SCRIPT_NAME'] === $lien) {
        $linkclass = $classe . 'active';
    }

    return <<<HTML
        <li class="nav-item">
        <a class="$linkclass" aria-current="page" href="$lien">$titre</a>
       </li>
HTML;
}


function nav_menu(string $linkclass = ''): string
{
    $lienFichier = "/Exo/Grafikart/Exo(9)Fichier/";
    return
        nav_item($lienFichier . 'index.php', 'Acceuil', $linkclass) .
        nav_item($lienFichier . 'contact.php', 'Contact', $linkclass) .
        nav_item($lienFichier . 'jeu.php', 'jeu 1', $linkclass) .
        nav_item($lienFichier . 'jeu2.php', 'jeu 2', $linkclass);
}

function nav_menu_footer(string $linkclass = ''): string
{
    $lienFichier = "/Exo/Grafikart/Exo(9)Fichier/";
    return
        nav_item($lienFichier . 'index.php', 'Acceuil', $linkclass) .
        nav_item($lienFichier . 'contact.php', 'Contact', $linkclass);
}

function creneaux_html(array $creneaux)
{
    if (empty($creneaux)) {
        return 'fermé';
    }
    $phrase = [];
    foreach ($creneaux as $creneau) {
        $phrase[] = " {$creneau[0]}h à {$creneau[1]}h";
    }
    return ' ouvert ' . implode(' & ', $phrase) . ' .';
}

function in_creneaux(int $heure, array $creneaux): bool
{
    foreach ($creneaux as $creneau) {
        $debut = $creneau[0];
        $fin = $creneau[1];
        if ($heure >= $debut && $heure < $fin) {
            return true;
        }
    }
    return false;
}
