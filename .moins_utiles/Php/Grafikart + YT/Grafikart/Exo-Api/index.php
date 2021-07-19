<?php
/*
    API : 
        appeler url -> decoder infos -> extirper infos
    
    curl doit atre activé ds le php.ini

    - curl_init — Initialise une session cURL
    - curl_exec — Exécute une session cURL
    - curl_error — Retourne une chaîne contenant le dernier message d'erreur cURL
    - curl_close — Ferme une session CURL

    si pb de certification :
        cliquer cadenas url
        chemin d acces de certification
        certificat racine
        afficher
        details
        copier dans un fichier
        x.509 base 64 (der illisible par php)

    - curl_setopt($ressource, CURLOPT_CAINFO, chemin du certificat )
            Le nom d'un fichier contenant un ou plusieurs certificats pour vérifier la concordance.
            Cela n'a de sens que si vous l'utilisez en combinaison de l'option CURLOPT_SSL_VERIFYPEER.

    - curl_setopt($ressource, CURLOPT_RETURNTRANSFER, true )
            true pour retourner le transfert en tant que chaîne
             de caractères de la valeur retournée par curl_exec() au lieu de l'afficher directement.
         
    - curl_setopt_array($ressource,[
            CURLOPT_CAINFO          => chemin du certificat,
            CURLOPT_RETURNTRANSFER  =>  true ,
            CURLOPT_TIMEOUT(_MS)         => 1           (temps avant de redemander au serveur)
        ])
            pour set plusieurs parametre en 1X

    ******
        - phpinfo() -> infos sur la config php

        - var_dump($data['main']['temp']); => info ds le tableau decode

*/



$curl = curl_init("api.openweathermap.org/data/2.5/weather?q=Paris&appid=0387ed35ef51a2017711ca1321700a27&units=metric&lang=fr");
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$data = curl_exec($curl);
if ($data === false) {
    var_dump(curl_error($curl));
} else {
    if (curl_getinfo($curl, CURLINFO_HTTP_CODE) === 200) {
        $data = json_decode($data, true);
        echo "<pre>";
        var_dump($data);
        echo "</pre>";
        echo 'il fait ' . $data['main']['temp'] . ' °C a paris .';
    }
}
curl_close($curl);
