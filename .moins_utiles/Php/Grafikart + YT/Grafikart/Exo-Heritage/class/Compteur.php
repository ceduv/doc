<?php

class Compteur
{

    public $link;

    public function __construct($link)
    {
        $this->link = $link;
    }


    public function incrementer(int $filevalue)
    {
        if (file_exists($this->link)) {
            file_put_contents($this->link, ++$filevalue);

            return (int)file_get_contents($this->link);
        } else {
            fopen($this->link, 'x',);
            file_put_contents($this->link, 1);

            return (int)file_get_contents($this->link);
        }
    }


    public function recuperer(): int
    {
        return (int)file_get_contents($this->link);
    }
}
