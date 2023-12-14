

<!-- Création du Header -->
<header>
    <!-- Import du Logo à gauche -->
    <a href="../index.php"><div class="logoheader" alt="Valres" title="Valres">V</div></a>
    <nav>
        <ul>
            <!-- Import des onglets et leurs lien de navigation -->
            <li><a href="../index.php?action=Reservation">Réservations</a></li>
            <li><a href="../index.php?action=Contact">Contact</a></li>
            <li><a href="../index.php?action=Test">Test</a></li>
        </ul>
    </nav>
    <?php 
    if (estConnecte()){ ?>
    <!-- Affichage du nom d'utilisateur, s'il est connecté -->
        <a href="../index.php?action=Connexion"><?php echo getNom(); ?></a>
        <?php } else { ?> 
            <!-- Affichage "Utilisateur non identifié, s'il est pas connecté -->
            <a href="../index.php?action=Connexion">Utilisateur non identifié</a>
            <?php } ?>
        
</header>

<!-- Import du CSS pour le Header -->
<link rel="stylesheet" href="../css/header.css">
<!-- Import du CSS pour le Style Principal -->
<link rel="stylesheet" href="../css/style.css">