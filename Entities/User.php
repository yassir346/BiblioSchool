<?php

class User{
    protected int $id;
    protected string $nom;
    protected string $prenom;
    protected string $email;
    protected string $password;
    protected string $role;

    public function __construct($id, $nom, $prenom, $email, $password, $role){
        $this->id = $id;
        $this->nom = $nom;
        $this->prenom = $prenom;
        $this->email = $email;
        $this->password = $password;
        $this->role = $role;
    }

    public function setID(){
        $this->id = $id;
    }
    public function setNom(){
        $this->nom = $nom;
    }
    public function setPrenom(){
        $this->prenom = $prenom;
    }
    public function setEmail(){
        $this->email = $email;
    }
    public function setPassword(){
        $this->password = $password;
    }
    public function setRole(){
        $this->role = $role;
    }

    public function getID(){
        return $this->id;
    }
    public function getNom(){
        return $this->nom;
    }

    public function getPrenom(){
        return $this->prenom;
    }

    public function getEmail(){
        return $this->email;
    }

    public function getPassword(){
        return $this->password;
    }

    public function getRole(){
        return $this->role;
    }

    public function __tostring(){
        return "ID : " . $this->id . "<br>" . "Nom : " . $this->nom . "<br>" . "Prenom : " . $this->prenom . "<br>" . "Email : " . $this->email . "<br>" . "Password : " . $this->password . "<br>" . "Role: " . $this->role . "<br>";

    }
    
}

$user = new User(1, "cv", "dfdf", "df", "dsfg", "cvb", "dfv");
echo $user->__tostring();