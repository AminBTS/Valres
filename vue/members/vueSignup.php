<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Design by foolishdeveloper.com -->
    <title>Valres - Connexion</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/members/style_signup.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/header.css">
</head>
<body>
<?php include_once("../includes/_inc_header.php") ?>
    <form>
        <h3>Inscription</h3>

        <label for="nom">Nom</label>
        <input type="text" placeholder="Votre nom" id="nom" required>

        <label for="prenom">Prenom</label>
        <input type="text" placeholder="Votre prenom" id="prenom" required>

        <label for="email">E-Mail</label>
        <input type="email" placeholder="Votre e-mail" id="mail" required>

        <label for="motdepasse">Mot de passe</label>
        <input type="password" placeholder="Votre mot de passe" id="motdepasse" required>

        <button>Se connecter</button>
        <span>Vous avez un compte ? Connectez-vous <a href="signin.php">ici</a></span>
    </form>
</body>
</html>
