<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

$to = $_POST['mail_to'];
$subject = $_POST['subject'];
$txt = $_POST['message'];
$headers = "From: " . $_POST['mail_from'] . "\r\n" .
    "CC:" . $_POST['mail_to'];

mail($to, $subject, $txt, $headers);
if (mail($to, $subject, $txt, $headers))
    echo 1;
else
    echo 0;
