<?php
include "./includes.inc.php";

$query = $condidat->getLastAddedCondidat();
if ($query != false) {
?>
    {
    "success": true,
    "message": "id has been imported successfully!",
    "id": <?php echo $query; ?>
    }
<?php
} else {

?>
    {
    "success": false,
    "message": "couldnt get id for some reason, please check your request for more information!",
    "id": undefined
    }
<?php
}
