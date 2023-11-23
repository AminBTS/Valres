<?php
function controleurPrincipal($action) {
    $lesActions = array();
    $lesActions["defaut"] = "vueIndex.php";
    $lesActions["vueSignin"] = "members/vueSignin.php";
    $lesActions["deconnexion"] = "vueDeconnexion.php";

    if (array_key_exists($action, $lesActions)) {
        return $lesActions[$action];
    } else {
        return $lesActions["defaut"];
    }
}


?>