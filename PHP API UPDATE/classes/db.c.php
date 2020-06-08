<?php

class database
{
    private $host = "localhost";
    private $database = "swib_uftam_all";
    private $username = "root";
    private $password = "";
    private $dsn = "";

    public function __construct()
    {
        //
    }

    public function connect()
    {
        $this->dsn = "mysql:host=" . $this->host . ";dbname=" . $this->database;
        try {
            $pdo = new PDO($this->dsn, $this->username, $this->password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
        } catch (PDOException $error) {
            echo "Connection failed: " . $error->getMessage() . "<br>";
        }
    }
}
