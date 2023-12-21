<?php 
include_once "database/connexion.php";

function getReservations() {
    $resultat = array();

    try {
        $cnx = connexionPDO();
        $req = $cnx->prepare("SELECT r.idReservation AS NuméroReservation, p.libelle AS Période, u.nom AS Nom, u.prenom AS Prenom, e.libelle AS Etat, s.salle_nom AS Salle
            FROM reservation r
            JOIN periode p ON p.idPeriode = r.idPeriode
            JOIN utilisateur u ON u.idUtilisateur = r.idUtilisateur
            JOIN etatreservation e ON e.idEtat = r.idEtat
            JOIN salle s ON s.idSalle = r.idSalle");
        $req->execute();
        $resultat = $req->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        // Gérer les erreurs si nécessaire
        // Vous pouvez logger l'erreur, afficher un message, etc.
        echo "Erreur : " . $e->getMessage();
    }

    return $resultat;
}