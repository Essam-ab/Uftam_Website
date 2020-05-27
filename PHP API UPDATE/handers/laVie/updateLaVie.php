<?php
include "includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);
if (!empty($_POST)) {
    $lib = $_POST['lib'];
    $desc = $_POST['description'];
    $id = (int) $_POST['id'];
    $query = $vie->updateVie($lib, $desc, $id);
    if ($query->rowCount()) {

?>
        {
        "success": true,
        "message":"update done!
        }
<?php
    }
}
