<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header('Content-Type: application/json; charset=utf-8');
header("Access-Control-Allow-Methods: PUT, GET, POST");
include "../../classes/db.c.php";
include "../../classes/formation.c.php";
$formation = new Formation();
include "../../classes/event.c.php";
$event = new Event();
