<?php
class Database {
    private $dbname  = "biblioschool"; 
    private $password = "";
    private $username= "root";
    private $servername = "localhost";
    private $db ;
    public function connection(){
        try{
            $this->db = new PDO("mysql:host={$this->servername};dbname={$this->dbname}",$this->username,$this->password); 
            $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);    
            return $this->db ;
        } catch(PDOException $e) {
            echo "Connection failed : " . $e->getMessage();
        }
    }
}

?>