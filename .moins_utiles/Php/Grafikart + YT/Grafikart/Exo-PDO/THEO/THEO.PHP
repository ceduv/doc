<?PHP
//////////////////////////////////////////////////

/*
    $pdo = new PDO('mysql:host=localhost;dbname=test', "root");
        ->MYSQL

    $pdo = new PDO('sqlite:' . __DIR__ . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . 'data.db');
        ->SQLITE

    METHODE :
        - execute       requete prepare
        - fetch         recup un resultat
        - fetchall      recup plusieurs resultats
        - fetchcolumn   recup une colone  

    PDO::   :
        - PDO::FETCH_BOTH (défaut): retourne un tableau indexé par les noms de colonnes 
            et aussi par les numéros de colonnes, commençant à l'index 0, comme retournés dans le jeu de résultats
        
        - PDO::FETCH_CLASS: retourne une nouvelle instance de la classe demandée

        - PDO::FETCH_ASSOC: retourne un tableau indexé par le nom de la colonne comme retourné dans le jeu de résultats

        - PDO::FETCH_NUM : retourne un tableau indexé par le numéro de la colonne comme elle est retourné dans votre jeu de résultat, commençant à 0

        - PDO::FETCH_OBJ : retourne un objet anonyme


    PDO::setAttribute 
        ->  Configure un attribut du gestionnaire de base de données. Certains des attributs génériques sont listés ci-dessous :
             certains pilotes disposent de configuration supplémentaires

        -   PDO::ATTR_ERRMODE : rapport d'erreurs.
        -   PDO::ERRMODE_EXCEPTION : émet une exception.


//////////////////////////////////////////////////       

    $id = $pdo->quote($_GET['id']);
    $id = $pdo->quote($_GET['id']);
        ->  Protège une chaîne pour l'utiliser dans une requête SQL PDO
        ->  Evite l injection de sql commme DELETE

    !!! une requete preparé l evite aussi on remplace query par prepare
--->
   
    try {
        $query = $pdo->prepare('SELECT * FROM Posts WHERE id = :id ');
            $query = $pdo->query('SELECT * FROM Posts WHERE id = ' . $_GET['id']);
            ->requete en cherchant precisement ds where et on passe l id present ds l url

        $query->execute([               //  execute une requete preparé
            'id' => $_GET['id']         // dans la quete preparé , remplace id par ce qui est passé par l url

        ]);

     $query = $pdo->prepare('UPDATE posts SET name= :name, content = :content WHERE id=:id');
        // requete prepare          SET name= :name     ( definir le nom je passe un parametre name )
        //                          content = :content  ( defini le contenu ds le parametre content ) 
        //                          WHERE id=:id        (condition c est l id qui est passé ds l url) ***??? condition ?

        $query->execute([
            'name' => $_POST['name'],
            'content' => $_POST['content'],
            'id' => $_GET['id']
        ]);
        // execution requete avec definition des parametres demandé en en prepare() 
        // premuni d une insertion sql ???  PQ ?  
        

    
//////////////////// PASSER ID DS URL ////////////////////////////// 

        <li><a href="/Exo/Grafikart/Exo-PDO/V2/edit.php?id=<?= $post->id ?>"><?= htmlentities($post->name) ?></a></li>
            <!-- on passe l id ds l url ?id= -->

*/