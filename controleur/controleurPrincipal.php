<?php
function controleurPrincipal($action) {
    $lesActions = array();
    $lesActions["defaut"] = "vueIndex.php";
    $lesActions["Connexion"] = "members/vueSignin.php";
    $lesActions["Test"] = "members/vueTest.php";
    $lesActions["deconnexion"] = "../controleur/logout.php";

    if (array_key_exists($action, $lesActions)) {
        return $lesActions[$action];
    } else {
        return $lesActions["defaut"];
    }
}


?>