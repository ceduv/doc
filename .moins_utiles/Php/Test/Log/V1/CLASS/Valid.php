<?php

class Valid
{

    private $firstname;
    private $lastname;
    private $email;
    private $password;
    private $passvalid;
    private $birthday;
    private $errors;


    public function __construct(string $firstname, string $lastname, string $email, string $password, string $passvalid, $birthday, array $errors) // date ???
    {
        $this->firstname = $firstname;
        $this->lastname = $lastname;
        $this->email = $email;
        $this->password = $password;
        $this->passvalid = $passvalid;
        $this->birthday = $birthday;
        $this->errors = $errors;
    }

    private function check_string(string $string): bool
    {
        if (strlen($string) >= 4) {
            if (strlen($string) <= 25) {

                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    private function check_password(): bool
    {
        return $this->password === $this->passvalid;
    }

    public function getErrors()
    {
        if ($this->check_string($this->firstname) != true) {
            $this->errors["firstname"] = "firstname lenght error";
        }
        if ($this->check_string($this->lastname) != true) {
            $this->errors["lastname"] = "lastname lenght error";
        }
        if ($this->check_string($this->password) != true) {
            $this->errors["password"] = "password lenght error";
        }
        if ($this->check_string($this->passvalid) != true) {
            $this->errors["passvalid"] = "2nd password lenght error";
        }
        if ($this->check_password() != true) {
            $this->errors["checkpass"] = "different password";
        }
        return $this->errors;
    }

    public function isValid(): bool // return null ??
    {
        if (
            $this->check_string($this->firstname) === true &&
            $this->check_string($this->lastname) === true &&
            $this->check_string($this->password) === true &&
            $this->check_string($this->passvalid) === true &&
            $this->check_password() === true &&
            $this->birthday != null
        ) {
            return true;
        }
        return false;
    }
}
