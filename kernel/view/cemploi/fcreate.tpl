
<!--  if (empty($POST['$affichage']) matrciule_categorie && $libelle_categorie && $pu_km && $pu_repas)) {
    echo 'les éléments sont vides ! ';
else { -->

<form action=<?php echo DIR_WEBROOT.'cemploi/create';?> method="post">
<div id="erreur">
    <p>Vous n'avez pas rempli correctement les champs du formulaire !</p>
</div>

<fieldset id="formulaire">
    <table id="tableau">
        <legend> Création d'un emploi </legend> <!-- Titre du fieldset -->
        <tr>
            <th> Id du salarié : </th>
            <th> <input id="champ"  type="text" name= "matricule_emploi" /></th>
        </tr>

        <tr>
            <th> Nom : </th>
            <th> <input id="champ" type="text" name= "libelle_emploi" /></th>
        </tr>

        <tr>
            <th> Prénom : </th>
            <th> <input id="champ" type="text" name= "taux_horaire_base_emploi" /></th>
        </tr>

        <tr>
            <th> Rue du salarié  : </th>
            <th><input id="champ" type="text" name= "matricule_categorie" /></th>
        </tr>

    </table>
</fieldset>
<br/>
<table id="bouton">
<tr>
   <td>  <input class="bouton" type="submit" value="OK"/></td>
    <td>  <button class="bouton" type="button" onclick="redirect()">Retour</button></td>
</tr>
</table>
</form>


<script>
    $(function(){
        $( ".bouton" ).button();
    });

    function redirect(){
        window.location.href = "<?php echo DIR_WEBROOT; ?>cemploi/index";
    }
</script>

