<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Design by foolishdeveloper.com -->
    <title>Valres - Connexion</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../cssstyle_signin.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/header.css">
</head>
</html>
<body>
    <?php if (!estConnecte()) { ?>
    <form action="../../modele/data_process.php" method="post">
        <h3>Connexion</h3>

        <label for="email">E-mail</label>
        <input type="email" placeholder="Votre e-mail" id="email" name="email" required>

        <label for="motdepasse">Mot de passe</label>
        <input type="password" placeholder="Votre mot de passe" id="motdepasse" name="motdepasse" required>
        <button>Se connecter</button>
    </form>
    <?php } else { ?>
         <h3>Vous êtes déjà connecté, si vous voulez vous déconnecter allez <a href="/controleur/logout.php">ici</a></h3>
         <?php } ?>
</body>
