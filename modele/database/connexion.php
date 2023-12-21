<?php
// Connexion à la base de données
$serveur = "localhost";
$utilisateur = "root";
$mot_de_passe = "";
$base_de_donnees = "valres"; 

try {
    $connexion = new PDO("mysql:host=$serveur;dbname=$base_de_donnees;charset=utf8", $utilisateur, $mot_de_passe);
    $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    // Affiche l'erreur
    die("Erreur dans la connexion à la base de donnée: " . $e->getMessage());
    // Redirige vers index.php
    header("Location: /");
}

?>