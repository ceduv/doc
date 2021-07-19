<?php
require_once "Message.php";

// pour sauvegarder des donnees lil faut sauvegarder des donnes simple
//  ON NE PEUT PAS SAVE UN OBJET !!!


class GuestBook
{
    private $file;

    public function __construct(string $file)
    {
        $directory = dirname($file);
        if (!is_dir($directory)) {                          // verifie si ce n'est pas un dossier 
            mkdir($directory, 0777, true);                  // cree un dossier , 0777 en lien avec les droits
        }
        if (!file_exists($file)) {
            touch($file);                                   // cree le fichier
        }
        $this->file = $file;
    }

    public function addMessage(Message $message): void      //void-> cette fonction ne renvoi rien
    {
        file_put_contents($this->file, $message->toJSON() . PHP_EOL, FILE_APPEND);
    }

    public function getMessages(): array
    {
        $content = trim(file_get_contents($this->file));    // trim supprime les espace vide debut et fin
        $lines = explode(PHP_EOL, $content);                // recup chaque ligne indiv
        $messages = [];
        foreach ($lines as $line) {                         // parcour chaque ligne
            $messages[] = Message::fromJSON($line);
            // appel methode static ?  Pas besoin dinstancier la class
        }
        return array_reverse($messages);                    // retourne les elements d un tableau
    }
}
