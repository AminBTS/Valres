<?php
if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = ".";
}

include_once "$racine/modele/bd.reservation.inc.php";


// Récupération des réservations
$listeReservations = getReservations();

// Inclusion de la vue
$titre = "Liste des réservations";
include "$racine/vue/entete.html.php";
include "$racine/vue/vueListeReservations.php";
include "$racine/vue/pied.html.php";
?>
