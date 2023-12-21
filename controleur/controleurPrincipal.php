<?php
function controleurPrincipal($action) {
    $lesActions = array();
    $lesActions["defaut"] = "accueil.php";
    $lesActions["Connexion"] = "signin.php";
    $lesActions["Reservation"] = "listeReservations.php";
    $lesActions["deconnexion"] = "logout.php";

    if (array_key_exists($action, $lesActions)) {
        return $lesActions[$action];
    } else {
        return $lesActions["defaut"];
    }
}


?>