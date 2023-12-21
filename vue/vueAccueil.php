<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page de Test</title>
</head>
<body>
    <?php 
// Test des différentes fonctions
if (estConnecte()){
    echo "Est connecté : " . (estConnecte() ? 'Oui' : 'Non') . "<br>";
    echo "Est administrateur : " . (estAdmin() ? 'Oui' : 'Non') . "<br>";
    echo "Est responsable : " . (estResponsable() ? 'Oui' : 'Non') . "<br>";
    echo "Est secrétaire : " . (estSecretaire() ? 'Oui' : 'Non') . "<br>";
    echo "Est utilisateur : " . (estUtilisateur() ? 'Oui' : 'Non') . "<br>";
    echo "Tu es : ". getNom(). " " . getPrenom(). "<br>"; 
    echo "Ton mail est : ". getMail();
}else {
    echo "Tu n'es pas connecté chef";
}


?>
</body>
</html>

    