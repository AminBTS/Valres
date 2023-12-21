<?php
if ( $_SERVER["SCRIPT_FILENAME"] == __FILE__ ){
    $racine="..";
}

// Charger le modèle
include_once "$racine/modele/authentification.inc.php";

include "$racine/vue/entete.html.php";
include "$racine/vue/vueAccueil.php";
include "$racine/vue/pied.html.php";

?>
