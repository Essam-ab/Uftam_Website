<?php
include "./includes.inc.php";

$_POST = json_decode(file_get_contents('php://input'), true);

if (!empty($_POST)) {
    $id = $_POST['id'];
    $niveau = $_POST['niveau'];
    $prerequis = $_POST['prerequis'];
    $duration = $_POST['duration'];
    $regime = $_POST['regime'];
    $mod_admission = $_POST['mod_admission'];
    $enjeux = $_POST['enjeux'];
    $program = $_POST['program'];
    $debouche = $_POST['debouche'];
    $public_acceuil = $_POST['public_acceuil'];

    $query = $formation->updateFormationDetails(
        $id,
        $niveau,
        $prerequis,
        $duration,
        $regime,
        $mod_admission,
        $enjeux,
        $program,
        $debouche,
        $public_acceuil
    );
    if ($query->rowCount()) {
?>
        {
        "success": true,
        "message":"formation has been updated successfully!"
        }

    <?php
    } else {
    ?>
        {
        "success": false,
        "message":"formation has not been updated"
        }
<?php
    }
}
