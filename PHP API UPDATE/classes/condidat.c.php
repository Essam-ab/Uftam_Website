<?php

class Condidat extends database
{
    public function __construct()
    {
        //
    }

    public function addCondidat(
        $first_name,
        $last_name,
        $date,
        $email,
        $phone,
        $dial_code,
        $country,
        $first_path,
        $second_path,
        $third_path,
        $fourth_path,
        $fifth_path,
        $sixth_path,
        $seventh_path
    ) {
        $query = $this->connect()->prepare(
            "INSERT INTO t_condidat(
               	con_f_name,
                con_l_name,
                con_date,
                con_email,
                con_number,
                con_dial_code,
                con_country,
                con_form_condidat,
                con_identity,
                con_releve_note,
                con_cv,
                con_motivation_letter,
                con_recommendation_letter,
                con_document

            )
            VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?);"
        );
        $query->execute([
            $first_name,
            $last_name,
            $date,
            $email,
            $phone,
            $dial_code,
            $country,
            $first_path,
            $second_path,
            $third_path,
            $fourth_path,
            $fifth_path,
            $sixth_path,
            $seventh_path
        ]);
        return $query;
    }

    public function insertCondidat($first_name, $last_name, $date, $email, $phone, $for_id, $dial_code, $country)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_condidat(
               	con_f_name,
                con_l_name,
                con_date,
                con_email,
                con_number,
                for_id,
                con_dial_code,
                con_country,

            )
            VALUES(?,?,?,?,?,?,?);"
        );
        $query->execute([
            $first_name,
            $last_name,
            $date,
            $email,
            $phone,
            $for_id,
            $dial_code,
            $country
        ]);
        return $query;
    }

    public function getLastAddedCondidat()
    {
        $query = $this->connect()->prepare(
            "SELECT con_id
            FROM t_condidat
            ORDER BY con_id DESC
            LIMIT 1;"
        );
        $query->execute();
        if ($query->rowCount()) {
            foreach ($query->fetchAll(PDO::FETCH_ASSOC) as $val) {
                $lastId = $val['con_id'];
            }
            return $lastId;
        }
        return false;
    }

    public function uploadStep_1($id_condidat, $file)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_condidat
            SET con_form_condidat = ?
            WHERE con_id = ?;"
        );
        $query->execute([
            $file,
            $id_condidat
        ]);
        return $query;
    }

    public function uploadStep_2($id_condidat, $file)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_condidat
            SET con_identity = ?
            WHERE con_id = ?;"
        );
        $query->execute([
            $file,
            $id_condidat
        ]);
        return $query;
    }

    public function uploadStep_3($id_condidat, $file)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_condidat
            SET con_releve_note = ?
            WHERE con_id = ?;"
        );
        $query->execute([
            $file,
            $id_condidat
        ]);
        return $query;
    }

    public function uploadStep_4($id_condidat, $file)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_condidat
            SET con_cv = ?
            WHERE con_id = ?;"
        );
        $query->execute([
            $file,
            $id_condidat
        ]);
        return $query;
    }
    public function uploadStep_5($id_condidat, $file)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_condidat
            SET con_motivation_letter = ?
            WHERE con_id = ?;"
        );
        $query->execute([
            $file,
            $id_condidat
        ]);
        return $query;
    }
    public function uploadStep_6($id_condidat, $file)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_condidat
            SET con_recommendation_letter = ?
            WHERE con_id = ?;"
        );
        $query->execute([
            $file,
            $id_condidat
        ]);
        return $query;
    }
    public function uploadStep_7($id_condidat, $file)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_condidat
            SET con_document = ?
            WHERE con_id = ?;"
        );
        $query->execute([
            $file,
            $id_condidat
        ]);
        return $query;
    }
}
