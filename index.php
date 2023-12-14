<?php
include "getRacine.php";
//Importation de la base de donnée (à enlever)
include_once("$racine/modele/database/connexion.php");
include "$racine/controleur/includes/_inc_function.php";
include "$racine/controleur/controleurPrincipal.php";
include "$racine/controleur/includes/_inc_header.php";

include_once "$racine/modele/data_process.php"; // pour pouvoir utiliser isLoggedOn()

if (isset($_GET["action"])){
    $action = $_GET["action"];
} else {
    $action = "defaut";
}

$fichier = controleurPrincipal($action);
include "$racine/vue/$fichier"; // Inclusion du fichier de vue correspondant à l'action
?>