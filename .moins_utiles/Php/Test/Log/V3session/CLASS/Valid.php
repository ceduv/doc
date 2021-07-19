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


    public function __construct(string $firstname, string $lastname, string $email, string $password, string $passvalid, $birthday, array $errors)
    {
        $this->firstname = $firstname;
        $this->lastname = $lastname;
        $this->email = $email;
        $this->password = $password;
        $this->passvalid = $passvalid;
        $this->birthday = $birthday;
        $this->errors = $errors;
    }

    protected function check_string(string $string): bool
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

    public function check_email(): bool
    {
        $regex = '/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/ ';
        if (preg_match($regex, $this->email)) {
            return true;
        } else {
            return false;
        }
    }

    private function check_db(): bool
    {
        try {
            $pdo = new PDO('mysql:host=localhost;dbname=test', "test", "test");
            $query = $pdo->query('SELECT email FROM utilisateurs');

            if ($query === false) {
                var_dump($pdo->errorInfo());
                die('erreur SQL');
            } else {
                $check = $pdo->prepare('SELECT email FROM utilisateurs WHERE email=:email');
                $check->execute(['email' => $this->email]);
                $data = $check->fetch();
                if (!empty($data)) {
                    return false;
                }
                return true;
            }
        } catch (PDOException $e) {
            die("Impossible de se connecter à la base de données test :" . $e->getMessage());
        }
    }


    public function getErrors()
    {
        if ($this->check_string($this->firstname) != true) {
            $this->errors["firstname"] = "firstname length error .";
        }
        if ($this->check_string($this->lastname) != true) {
            $this->errors["lastname"] = "lastname length error .";
        }
        if ($this->check_string($this->password) != true) {
            $this->errors["password"] = "password length error .";
        }
        if ($this->check_string($this->passvalid) != true) {
            $this->errors["passvalid"] = "2nd password length error .";
        }
        if ($this->check_password() != true) {
            $this->errors["checkpass"] = "different password .";
        }
        if ($this->check_email() != true) {
            $this->errors["regex"] = "invalid email format .";
        }
        if ($this->check_db() != true) {
            $this->errors["email"] = "email already registered .";
        }
        return $this->errors;
    }

    public function isValid(): bool
    {
        if (
            $this->check_string($this->firstname) === true &&
            $this->check_string($this->lastname) === true &&
            $this->check_string($this->password) === true &&
            $this->check_string($this->passvalid) === true &&
            $this->check_password() === true &&
            $this->birthday != null &&
            $this->check_email() === true &&
            $this->check_db() === true
        ) {
            return true;
        }
        return false;
    }
}
