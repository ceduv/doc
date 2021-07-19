<?php


class CheckEmail
{

    private $newemail;
    private $oldemail;
    private $maildb;

    public function __construct($newemail, $oldemail, $maildb)
    {
        $this->newemail = $newemail;
        $this->oldemail = $oldemail;
        $this->maildb = $maildb;
    }

    private function check_form_email(): bool
    {
        $regex = '/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/ ';
        if (preg_match($regex, $this->newemail)) {
            return true;
        } else  false;
    }

    private function check_same_email(): bool
    {
        if ($this->maildb == $this->oldemail) {
            return true;
        } else false;
    }

    // add function si l email est deja existante en db retourne false


    public function is_valid_email(): bool
    {
        if ($this->check_form_email() == true || $this->check_same_email() == false) {
            return true;
        } else false;
    }
}
