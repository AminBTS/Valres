<!-- Création du Header -->
<header>
    <!-- Import du Logo à gauche -->
    <a href="../index.php">
        <div class="logoheader" alt="Valres" title="Valres">V</div>
    </a>
    <nav>
        <ul>
            <!-- Début Fonction "estConnecte" -->
            <?php if (estConnecte()) { ?>

                <!-- Début Fonction "estAdmin" -->
                <?php if (estAdmin()) { ?>
                    <li><a href="../index.php?action=Reservation">Réservations</a></li>
                    <li><a href="../index.php?action=Contact">Contact</a></li>
                    <li><a href="../index.php?action=Test">Test</a></li>
                <!-- Fin Fonction "estAdmin" -->
                <?php } ?>

                <!-- Début Fonction "estUtilisateur" -->
                <?php if (estUtilisateur()) { ?>
                    <li><a href="../index.php?action=Reservation">Utilisateur</a></li>
                    <li><a href="../index.php?action=Contact">Contact</a></li>
                    <li><a href="../index.php?action=Test">Test</a></li>
                <!-- Fin Fonction "estUtilisateur" -->
                <?php } ?>

                <!-- Début Fonction "estSecretaire" -->
                <?php if (estSecretaire()) { ?>
                    <li><a href="../index.php?action=Reservation">Réservations</a></li>
                    <li><a href="../index.php?action=Contact">Contact</a></li>
                    <li><a href="../index.php?action=Test">Test</a></li>
                <!-- Fin Fonction "estSecretaire" -->
                <?php } ?>

                <!-- Début Fonction "estResponsable" -->
                <?php if (estResponsable()) { ?>
                    <li><a href="../index.php?action=Reservation">Réservations</a></li>
                    <li><a href="../index.php?action=Contact">Contact</a></li>
                    <li><a href="../index.php?action=Test">Test</a></li>
                <!-- Fin Fonction "estResponsable" -->
                <?php } ?>

                <!-- Début Fonction "estAdmin" -->
                <?php if (estAdmin()) { ?>
                    <li><a href="../index.php?action=Reservation">Réservations</a></li>
                    <li><a href="../index.php?action=Contact">Contact</a></li>
                    <li><a href="../index.php?action=Test">Test</a></li>
                <!-- Fin Fonction "estAdmin" -->
                <?php } ?>

                <!-- Fin Fonction "estConnecte" -->
            <?php } else { ?>
                <!-- Si l'utilisateur n'est pas connecté alors -->
                    <li><a href="../index.php?action=Reservation">PASCO</a></li>
                    <li><a href="../index.php?action=Contact">Contact</a></li>
                    <li><a href="../index.php?action=Test">Test</a></li>
                <?php } ?>
        </ul>
    </nav>

<!-- Début Fonction "estConnecte" -->
    <?php if (estConnecte()) { ?>
        <!-- Affichage du nom d'utilisateur, s'il est connecté -->
        <a href="../index.php?action=Connexion"><?php echo getNom(); ?></a>
        <!-- Fin Fonction "estConnecte" -->
    <?php } else { ?>
        <!-- Affichage "Utilisateur non identifié, s'il est pas connecté -->
        <a href="../index.php?action=Connexion">Utilisateur non identifié</a>
    <?php } ?>
</header>

<!-- Import du CSS pour le Header -->
<link rel="stylesheet" href="../css/header.css">
<!-- Import du CSS pour le Style Principal -->
<link rel="stylesheet" href="../css/style.css">