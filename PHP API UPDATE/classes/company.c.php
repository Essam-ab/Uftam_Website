<?php

class ConfCompany extends database
{
    public function __construct()
    {
        //
    }


    public function displayCompanies()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_trust_campany
            WHERE ttc_active = ?"
        );
        $query->execute(['yes']);
        return $query;
    }

    public function deleteCompany($id)
    {
        $query = $this->connect()->prepare(
            "DELETE FROM t_trust_campany
            WHERE ttc_id = ?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function updateStatus($id, $status)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_trust_campany
            SET ttc_active=?
            WHERE ttc_id = ?;"
        );
        $query->execute([$status, $id]);
        return $query;
    }


    public function addCompanyLogo($path)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_trust_campany(
               ttc_logo
            )
            VALUES(?);"
        );
        $query->execute([$path]);
        return $query;
    }

    public function lastAddedCompany()
    {
        $query = $this->connect()->prepare(
            " SELECT * 
            FROM t_trust_campany 
            ORDER BY ttc_id DESC 
            LIMIT 1"
        );
        $query->execute();
        return $query;
    }

    public function updateCompanyLib($lib, $id)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_trust_campany
            SET ttc_lib = ?
            WHERE ttc_id = ?;"
        );
        $query->execute([$lib, $id]);
        return $query;
    }

    public function getAllCompanies()
    {
        $query = $this->connect()->prepare(
            " SELECT * 
            FROM t_trust_campany
           LIMIT 20"
        );
        $query->execute();
        return $query;
    }

    public function getCompany($lib)
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_trust_campany
            where For_Url = ?;"
        );
        $query->execute([$lib]);
        return $query;
    }
}
