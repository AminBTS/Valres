<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page de Test</title>
</head>
<body>
    <?php 
    if (estConnecte()){
        echo "Tu es connecté";
        if (estSecretaire()){
            echo "Tu es secrétaire";
        } else if (estResponsable()){
            echo "Tu es responsable";
        } else if(estAdmin()){
            echo "Tu es administrateur";
        } else if(estUtilisateur()){
            echo "Tu es un utilisateur de merde";
        }
    } else {
        echo "Tu n'es pas connecté";
    }
    ?>
</body>
</html>