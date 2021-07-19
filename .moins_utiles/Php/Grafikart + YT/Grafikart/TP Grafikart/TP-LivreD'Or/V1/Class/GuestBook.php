<?php

class GuestBook
{
    private $file;

    public function __construct($file)
    {
        $this->file = $file;
    }

    public function addmessage($message): void
    {
        file_put_contents($this->file, $message . PHP_EOL, FILE_APPEND);
    }

    public function getMessage()
    {
        $temp = trim(file_get_contents($this->file)); // trim supprime les espace vide debut et fin
        $lines = explode(PHP_EOL, $temp);
        $messages = [];
        foreach ($lines as $line) {
            $data = json_decode($line, true);
            $messages[] = new Message($data['name'], $data['date'], $data['mess']);
        }
        return $messages;
    }

    public function htmlBook() // comment recup les elements de getmessage
    {
        $message = $this->getMessage();
        $username = htmlentities($message[0]);
        $mess = htmlentities($message[1]);
        return <<<HTML
        <p>
        <strong>{$username}</strong> le <em>{$message[2]}</em> : 
        {$mess}
        </p>
HTML;
    }
}
