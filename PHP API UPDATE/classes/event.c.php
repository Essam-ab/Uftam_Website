<?php

class Event extends database
{
    public function __construct()
    {
        //
    }

    public function getArticle($id)
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_event join t_type_event using(tte_id)
            WHERE eve_id = ?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function updateEventCreated($lib,  $desc, $date,  $type_id, $id)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_event
            SET eve_lib = ?,  eve_description = ?, eve_date = ?,
            tte_id = ?
            WHERE eve_id = ?;"
        );
        $query->execute([$lib, $desc, $date, $type_id, $id]);
        return $query;
    }

    public function addEventImage($path)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_event(
               eve_img
            )
            VALUES(?);"
        );
        $query->execute([$path]);
        return $query;
    }

    public function lastAddedEvent()
    {
        $query = $this->connect()->prepare(
            " SELECT * 
            FROM t_event
            ORDER BY eve_id DESC 
            LIMIT 1"
        );
        $query->execute();
        return $query;
    }

    public function displayFirstEvents()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_event join t_type_event using(tte_id)
            WHERE eve_active = ? && tte_lib = ?
            ORDER BY eve_date ASC;"
        );
        $query->execute(['yes', 'first']);
        return $query;
    }

    public function displaySecondEvents()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_event join t_type_event using(tte_id)
            WHERE eve_active = ? && tte_lib = ?;
            ORDER BY eve_date ASC"
        );
        $query->execute(['yes', 'second']);
        return $query;
    }

    public function displayThirdEvents()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_event join t_type_event using(tte_id)
            WHERE eve_active = ? && tte_lib = ?
            ORDER BY eve_date ASC;"
        );
        $query->execute(['yes', 'third']);
        return $query;
    }

    public function deleteTypeEvent($id)
    {
        $query = $this->connect()->prepare(
            "DELETE FROM t_type_event
            WHERE tte_id = ?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function deleteEvent($id)
    {
        $query = $this->connect()->prepare(
            "DELETE FROM t_event
            WHERE eve_id = ?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function updateStatus($id, $status)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_event
            SET eve_active=?
            WHERE eve_id = ?;"
        );
        $query->execute([$status, $id]);
        return $query;
    }

    public function updateTypeStatus($id, $status)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_type_event
            SET tte_active=?
            WHERE tte_id = ?;"
        );
        $query->execute([$status, $id]);
        return $query;
    }

    public function addTypeEvent($type)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_type_event(
                tte_lib
            )
            VALUES(?);"
        );
        $query->execute([$type]);
        return $query;
    }

    public function getEvent($id)
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_event join t_type_event using(tte_id)
            where eve_id = ?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function getAllEvent()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_event join t_type_event using(tte_id)
            ORDER BY tte_lib ASC,eve_date ASC"
        );
        // WHERE eve_active = ?
        $query->execute();
        return $query;
    }

    public function searchEvent($var)
    {
        $query = $this->connect()->prepare(
            "SELECT * 
            FROM t_event
            WHERE For_Lib Like CONCAT('%', ?, '%')
           LIMIT 20;"
        );
        $query->execute([$var]);
        return $query;
    }

    public function getAllEventTypes()
    {
        $query = $this->connect()->prepare(
            "SELECT *
            FROM t_type_event;"
        );
        $query->execute();
        return $query;
    }

    public function getTypeEvent($id)
    {
        $query = $this->connect()->prepare(
            "SELECT * 
            FROM t_type_event
            WHERE tte_id=?;"
        );
        $query->execute([$id]);
        return $query;
    }

    public function updateEvent($id, $lib, $date, $desc, $type)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_event
            SET eve_lib = ?,
            eve_date = ?,
            eve_description = ?,
            tte_id = ?
            WHERE eve_id = ?"
        );
        $query->execute([$lib, $date, $desc, $type, $id]);
        return $query;
    }

    public function updateType($lib, $id)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_type_event
            SET tte_lib=?
            WHERE tte_id = ?;"
        );
        $query->execute([$lib, $id]);
        return $query;
    }

    public function isActivate($val, $id)
    {
        $query = $this->connect()->prepare(
            "UPDATE t_event
            SET active = ?
            WHERE For_Id=?;"
        );
        $query->execute([$val, $id]);
        return $query;
    }

    public function addEvent($lib, $description, $date, $type_id)
    {
        $query = $this->connect()->prepare(
            "INSERT INTO t_event(
               	eve_lib,
                eve_description,
                eve_date,
                tte_id
            )
            VALUES(?, ?, ?, ?);"
        );
        $query->execute([$lib, $description, $date, $type_id]);
        return $query;
    }
}
