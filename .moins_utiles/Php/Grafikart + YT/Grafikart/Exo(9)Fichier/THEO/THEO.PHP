<?PHP
/*

                     FUNC 

    $_SERVER : 
    
superglobales

    donne des infos dans un array

//

    CHERCHER DANS UN TABLEAU : 

    in_array($value, $data[$name])) { 
        
        (aiguille,botte de foin)



////////////////////////////////////////////////////////////

                    TERNAIRE

$color = $customerResponse ? "green" : "red";
// Ternaire  $var = $check ? "true" : "false";        IF/ELSE

$jourChoisi = (int)($_POST['Jours'] ?? date('N') - 1);
// Ternaire  $var = $_POST['action'] ?? "default";    ISSET




////////////////////////////////////////////////////////////



                    HEREDOC

Heredoc se comporte exactement comme une chaîne de caractères guillemets doubles,
     sans les guillemets doubles.
    

ex: 
    
    return <<<HTML
        '<li class="nav-item">
        <a class="$classe" aria-current="page" href="$lien">$titre</a>
    </li>';
HTML;



////////////////////////////////////////////////////////////


                    CONSTANTE


la constante s apellera juste avec CRENEAUX ( pas de  $)
par convention TOUT EN MAJ

constante = DEFINE

ex : define('CRENEAUX', [[
    [8, 12],
    [14, 19]
], [
    [8, 12],
    [14, 19]
], [
    [8, 12]
], [
    [8, 12],
    [14, 19]
], [
    [8, 12],
    [14, 19]
], [], []]);



 
*/
