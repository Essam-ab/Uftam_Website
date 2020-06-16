<?php

class Condidat extends database
{
    public function __construct()
    {
        //
    }

    public function getAllCandidat()
    {
        $query = $this->connect()->prepare(
            "SELECT c.*, f.for_lib, t.ttf_lib
            FROM t_condidat c join t_formation f
            USING (for_id) join t_type_formation t
            USING (ttf_id)
            ORDER BY con_date  ASC"
        );
        $query->execute();
        return $query;
    }

    public function addCondidat(
        $upload_data,
        $id
    ) {
        $query = $this->connect()->prepare(
            "UPDATE t_condidat
            SET con_form_condidat = ?
            WHERE con_id = ?;"
        );
        $query->execute([
            $upload_data,
            $id
        ]);
        return $query;
    }

    /*
    public function addCondidat(
        $first_name,
        $last_name,
        $date,
        $email,
        $phone,
        $dial_code,
        $country,
        $first_path
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
                con_form_condidat

            )
            VALUES(?,?,?,?,?,?,?,?):"
        );
        $query->execute([
            $first_name,
            $last_name,
            $date,
            $email,
            $phone,
            $dial_code,
            $country,
            $first_path
        ]);
        return $query;
    }*/

    public function insertCondidat($first_name, $last_name, $date, $email, $phone, $for_id, $dial_code, $country)
    {
        // echo ($first_name . " " . $last_name . " " . $date . " " . $email . " " . $phone . " " . $for_id . " " . $dial_code . " " . $country);
        $query = $this->connect()->prepare(
            "INSERT INTO t_condidat(
               	con_f_name,
                con_l_name,
                con_date,
                con_email,
                for_id,
                con_number,
                con_dial_code,
                con_country
            )
            VALUES(?,?,?,?,?,?,?,?);"
        );
        $query->execute([
            $first_name,
            $last_name,
            $date,
            $email,
            (int) $for_id,
            $phone,
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
