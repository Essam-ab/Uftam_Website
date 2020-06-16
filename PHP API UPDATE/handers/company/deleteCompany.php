<?php
include "includes.inc.php";
$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $id = (int) $_POST['id'];
    $query = $company->deleteCompany($id);
    if ($query->rowCount()) {
?>
        {
        "success": true,
        "message":"company has been deleted successfully!"
        }

    <?php
    } else {
    ?>
        {
        "success": false,
        "message":"company has not been deleted"
        }
<?php
    }
}
