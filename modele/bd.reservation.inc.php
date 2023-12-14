<?php
include_once "connexion.php";

function getReservations(){
    $resultat = array();

    try{
        $cnx = connexionPDO();
        $req = $cnx->prepare("select * from reservation")
    }
}


?>