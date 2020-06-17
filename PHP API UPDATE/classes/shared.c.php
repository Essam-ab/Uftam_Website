<?php

class Shared extends database
{
    public function __construct()
    {
        //
    }

    private $dashboard_username = "";
    private $dashboard_password = "";

    public function subscribeToNewsletter($email)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_newsletter(
               new_email
            )
            VALUES(?);"
        );
        $query->execute([$email]);
        return $query;
    }

    public function filterData($data, $hint)
    {
        $d = [];
        if ($hint == "formation") {
            $query = $this->connect()->prepare(
                "SELECT distinct for_id, ttf_lib, for_lib, for_presentation, for_img
                FROM t_formation join t_type_formation
                WHERE for_lib Like CONCAT('%', ?, '%') and for_active = ?
                LIMIT 20;"
            );
            $query->execute([$data, 'yes']);
            if ($query->rowCount()) {
                $formations = $query->fetchAll(PDO::FETCH_OBJ);
                $i = 0;
                foreach ($formations as $val) {
                    $d[$i]['for_id'] = $val->for_id;
                    $d[$i]['for_type'] = $val->ttf_lib;
                    $d[$i]['for_lib'] = $val->for_lib;
                    $d[$i]['for_description'] = $val->for_presentation;
                    $d[$i]['for_img'] = $val->for_img;
                    $i++;
                }
            }
        } elseif ($hint == "event") {
            $query = $this->connect()->prepare(
                "SELECT distinct eve_id, eve_lib, eve_description, eve_img
                    FROM  t_event join t_type_event
                    WHERE eve_lib Like CONCAT('%', ?, '%') AND tte_lib = ?
                    AND eve_active = ?
                    LIMIT 20;"
            );
            $query->execute([$data, "first", 'yes']);
            if ($query->rowCount()) {
                $formations = $query->fetchAll(PDO::FETCH_OBJ);
                $i = 0;
                foreach ($formations as $val) {
                    $d[$i]['eve_id'] = $val->eve_id;
                    $d[$i]['eve_lib'] = $val->eve_lib;
                    $d[$i]['eve_description'] = $val->eve_description;
                    $d[$i]['eve_img'] = $val->eve_img;
                    $i++;
                }
            }
        }
        return $d;
    }

    public function fetchSubscribers()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_newsletter;"
        );
        $query->execute();
        return $query;
    }

    public function loginDashboard($username, $password)
    {
        if ($this->dashboard_password == '' || $this->dashboard_username) {
            $query = $this->connect()->prepare(
                "SELECT *
            FROM t_user
            WHERE use_type = :type 
            && use_username = :username && use_password = :pass;"
            );
            $query->bindValue(':type', '1', PDO::PARAM_STR);
            $query->bindValue(':username', $username, PDO::PARAM_STR);
            $query->bindValue(':pass', $password, PDO::PARAM_STR);
            $query->execute();
            return $query;
        } else {
            if ($username == $this->dashboard_username &&  $password == $this->dashboard_password) {
                return 1;
            } else
                return 0;
        }
    }
}
