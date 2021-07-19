<?php

class Message
{
    const LIMIT_USERNAME = 3;
    const LIMIT_MESSAGE = 10;
    public $username;
    public $date;
    public $message;


    public function __construct($username, $date, $message) // ?datetime $date= null ou par defaut null
    {
        $this->username = $username;
        $this->date =  $date; //?: new DateTime() si c est null cree l objet datetime
        $this->message = $message;
    }

    public function isvalid()
    {
        if (strlen($this->username) < self::LIMIT_USERNAME || strlen($this->message) < self::LIMIT_MESSAGE) {
            return false;
        } else {
            return true;
        }
    }
    public function toHTML()
    {
        if ($this->isvalid() == true) {
            return <<<HTML
            <div class="alert alert-success">Merci !</div>
HTML;
        } else {
            return <<<HTML
        <div class="alert alert-danger">Pseudo ou Message trop court !</div>
HTML;
        }
    }

    public function toJSON()
    {
        if ($this->isvalid() == true) {

            return json_encode(['name' => $this->username, 'date' => $this->date, 'mess' => $this->message]);
        }
    }
}
