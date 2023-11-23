<?php
// Inclusion des fichiers nécessaires du contrôleur
require_once('controleur/includes/_inc_header.php');

// Inclusion des fichiers nécessaires du modèle
require_once('modele/data_process.php');
require_once('modele/database/connexion.php');

// Affichage de la page selon la demande de l'utilisateur
if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = 'index'; // Page par défaut
}

// Gestion des différentes vues
switch ($page) {
    case 'contact':
        include('vue/vueContact.php');
        break;
    case 'reservation':
        include('vue/vueReservation.php');
        break;
    // ... Ajoute d'autres cas pour tes différentes pages ici
    case 'signin':
        include('members/vueSignin.php');
        break;
    case 'signup':
        include('members/vueSignup.php');
        break;
    case 'logout':
        // Contrôleur pour la déconnexion
        include('controleur/logout.php');
        break;
    default:
        include('vue/vueIndex.php'); // Page d'accueil par défaut
        break;
}
?>
