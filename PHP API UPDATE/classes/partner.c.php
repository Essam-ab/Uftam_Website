<?php

class Partner extends database
{
    public function __construct()
    {
        //
    }

    public function displaySubPartners()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_partner
            WHERE par_active = ? and par_ing_subpage = ?"
        );
        $query->execute(['yes', 'yes']);
        return $query;
    }

    public function displayPartners()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_partner
            WHERE par_active = ? and par_ing_subpage = ?"
        );
        $query->execute(['yes', 'no']);
        return $query;
    }

    public function deletePatner($id)
    {
        $query = $this->connect()->prepare(
            "DELETE FROM t_partner
            WHERE par_id = ?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function updateStatus($id, $status)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_partner
            SET par_active=?
            WHERE par_id = ?;"
        );
        $query->execute([$status, $id]);
        return $query;
    }

    public function addPartnerLogo($path)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_partner(
                par_logo
            )
            VALUES(?);"
        );
        $query->execute([$path]);
        return $query;
    }

    public function lastAddedPartner()
    {
        $query = $this->connect()->prepare(
            " SELECT * 
            FROM t_partner 
            ORDER BY par_id DESC 
            LIMIT 1"
        );
        $query->execute();
        return $query;
    }

    public function updatePartnerLib($lib, $id)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_partner
            SET par_lib = ?
            WHERE par_id = ?;"
        );
        $query->execute([$lib, $id]);
        return $query;
    }

    public function getAllPartners()
    {
        $query = $this->connect()->prepare(
            "SELECT * 
            FROM t_partner;"
        );
        $query->execute();
        return $query;
    }

    public function getAllActivePartners()
    {
        $query = $this->connect()->prepare(
            " SELECT * 
            FROM t_partner
            WHERE par_active = ?"
        );
        $query->execute(['yes']);
        return $query;
    }

    public function getPartner($lib)
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_partner
            where For_Url = ?;"
        );
        $query->execute([$lib]);
        return $query;
    }
}
