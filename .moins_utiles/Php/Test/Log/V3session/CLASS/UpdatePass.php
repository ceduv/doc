<?php
require_once "Valid.php";

class CheckPassword extends Valid
{

    private $newpassword;
    private $newpassword2;

    public function __construct($newpassword, $newpassword2)
    {
        $this->newpassword = $newpassword;
        $this->newpassword2 = $newpassword2;
    }

    public function verifPassword()
    {
        if (
            $this->newpassword === $this->newpassword2 &&
            parent::check_string($this->newpassword)
        ) {
            return true;
        }
        return false;
    }
}
