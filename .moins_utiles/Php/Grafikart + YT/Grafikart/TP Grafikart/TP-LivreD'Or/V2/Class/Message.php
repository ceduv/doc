<?php

class Message
{
    const LIMIT_USERNAME = 3;
    const LIMIT_MESSAGE = 10;
    private $username;
    private $message;
    private $date;

    public static function fromJSON(string $json): Message
    {
        $data = json_decode($json, true);
        return new self($data['username'], $data['mess'], new datetime("@" . $data['date']));
        // new self ???
        //  on cree un objet pour chaque message grave au cle du tableau
        //  on peut pas juste passer la date qui est un time stamp ex: settimestamp
        //  construire un nouvel objet a partir d un time stamp
        //  new datetime("@$TS");    TS = Time Stamp
    }


    public function __construct(string $username, string $message, ?DateTime $date = null) // ?datetime $date= null ou par defaut null
    {
        $this->username = $username;
        $this->message = $message;
        $this->date =  $date ?: new DateTime(); //?: new DateTime() si ca n existe pas cree l objet datetime
    }

    public function isvalid(): bool
    {
        return empty($this->getErrors());
    }


    public function getErrors(): array
    {
        $errors = [];
        if (strlen($this->username) < self::LIMIT_USERNAME) {
            $errors['username'] = 'Votre pseudo est trop court';
        }
        if (strlen($this->message) < self::LIMIT_MESSAGE) {
            $errors['message'] = 'Votre message est trop court';
        }
        return $errors;
    }


    public function toHTML(): string
    {
        $username = htmlentities($this->username);
        $message = nl2br(htmlentities($this->message)); // nl2br va cenvertir les saut de lignes en br
        $this->date->setTimezone(new DateTimeZone('Europe/Paris')); // ???
        $date = $this->date->format('d/m/Y à H:i'); // formater le Datetime

        // !!! les accolades permette d appeler les variable ???

        return <<<HTML
            <p>
            <strong>{$username} </strong> <em>le {$date}  </em><br>
            {$message}
            </p>

HTML;
    }


    public function toJSON(): string
    {
        return json_encode(
            [
                'username' => $this->username,
                'mess' => $this->message,
                'date' => $this->date->getTimestamp()
            ]
        );
    }
}
