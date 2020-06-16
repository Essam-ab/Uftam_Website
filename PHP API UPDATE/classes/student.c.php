<?php

class Student extends database
{
    public function __construct()
    {
        //
    }

    public function displayStudentExp()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_student_exp
            WHERE tse_status = ?;"
        );
        $query->execute(['yes']);
        return $query;
    }

    public function deleteStudentExp($id)
    {
        $query = $this->connect()->prepare(
            "DELETE FROM t_student_exp
            WHERE tse_id = ?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function updateStatus($id, $status)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_student_exp
            SET tse_active=?
            WHERE tse_id = ?;"
        );
        $query->execute([$status, $id]);
        return $query;
    }



    public function addTypeFormation($type)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_type_formation(
                ttf_lib
            )
            VALUES(?);"
        );
        $query->execute([$type]);
        return $query;
    }

    public function getFormation($lib)
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_formation
            where For_Url = ?;"
        );
        $query->execute([$lib]);
        return $query;
    }

    public function getAllStudentExp()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_student_exp
           LIMIT 20;"
        );
        $query->execute();
        return $query;
    }

    public function searchFormation($var)
    {
        $query = $this->connect()->prepare(
            "SELECT * 
            FROM t_formation
            WHERE For_Lib Like CONCAT('%', ?, '%')
           LIMIT 20;"
        );
        $query->execute([$var]);
        return $query;
    }

    public function addStudentExp($lib,  $desc)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_student_exp(
               tse_lib,	
               tse_description
            )
            VALUES(?, ?);"
        );
        $query->execute([$lib,  $desc]);
        return $query;
    }
}
