<?php
// Inclusion du fichier de connexion à la base de données
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

// Vérification des données du formulaire
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['email']) && isset($_POST['motdepasse'])) {
    $email = $_POST['email'];
    $motDePasse = $_POST['motdepasse'];

    // Requête pour récupérer l'utilisateur en fonction de l'email
    $stmt = $connexion->prepare("SELECT * FROM utilisateur WHERE mail = :email");
    $stmt->bindParam(':email', $email);
    $stmt->execute();
    $utilisateur = $stmt->fetch();

    // Vérification du mot de passe
    if ($utilisateur && $motDePasse === $utilisateur['motDePasse']) {
        // Authentification réussie

        // Démarrage de la session et stockage des informations de l'utilisateur
        session_start();
        $_SESSION['utilisateur'] = $utilisateur;

        // Redirection vers une page appropriée après la connexion
        echo "Bonjour, tu es " . $utilisateur['prenom'] . " " . $utilisateur['nom'];
        exit();
    } else {
        // Identifiants incorrects
        echo "Identifiants incorrects. Veuillez réessayer.";
    }
} elseif ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Tous les champs du formulaire ne sont pas remplis
    echo "Veuillez remplir tous les champs du formulaire.";
}
?>
