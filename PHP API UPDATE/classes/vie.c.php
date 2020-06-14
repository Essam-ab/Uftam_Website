<?php

class LaVie extends database
{
    public function __construct()
    {
        //
    }

    public function displayVie()
    {
        $query = $this->connect()->prepare(
            " SELECT * 
            FROM t_la_vie
           WHERE tlv_active = ?;"
        );
        $query->execute(['yes']);
        return $query;
    }

    public function displayLaVie()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_la_vie
            WHERE tlv_active = ?;"
        );
        $query->execute(['yes']);
        return $query;
    }

    public function deleteLaVie($id)
    {
        $query = $this->connect()->prepare(
            "DELETE FROM t_la_vie
            WHERE tlv_id = ?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function updateStatus($id, $status)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_la_vie
            SET tlv_active=?
            WHERE tlv_id = ?;"
        );
        $query->execute([$status, $id]);
        return $query;
    }

    public function addVieLogo($path)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_la_vie(
               tlv_img
            )
            VALUES(?);"
        );
        $query->execute([$path]);
        return $query;
    }

    public function lastAddedVie()
    {
        $query = $this->connect()->prepare(
            " SELECT * 
            FROM t_la_vie 
            ORDER BY tlv_id DESC 
            LIMIT 1"
        );
        $query->execute();
        return $query;
    }

    public function updateVie($lib, $desc,  $id)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_la_vie
            SET tlv_lib = ?, tlv_description = ?
            WHERE tlv_id = ?;"
        );
        $query->execute([$lib, $desc, $id]);
        return $query;
    }

    public function getAllVie()
    {
        $query = $this->connect()->prepare(
            " SELECT * 
            FROM t_la_vie
           LIMIT 20"
        );
        $query->execute();
        return $query;
    }

    public function getVie($lib)
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_la_vie
            where For_Url = ?;"
        );
        $query->execute([$lib]);
        return $query;
    }
}
