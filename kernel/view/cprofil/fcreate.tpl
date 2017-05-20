
<!--  if (empty($POST['$affichage']) matrciule_categorie && $libelle_categorie && $pu_km && $pu_repas)) {
    echo 'les éléments sont vides ! ';
else { -->

<form action=<?php echo DIR_WEBROOT.'cprofil/create';?> method="post">
<div id="erreur">
    <p>Vous n'avez pas rempli correctement les champs du formulaire !</p>
</div>

    <fieldset id="formulaire">
        <table id="tableau">
        <legend> Création d'un profil </legend> <!-- Titre du fieldset -->
        <tr>
            <td id="libelle">Id : </td>
            <td><input id="champ"type="text" name="id_profil" * /></td>
        </tr>

        <tr>
            <td id="libelle">Pseudo : </td>
            <td><input id="champ" type="text" name="surnom_profil"/></td>
        </tr>
            <tr>
                <td id="libelle" >Mot de passe :</td>
                <td><input id="champ" type="text" name="mdp_profil"/></td>
            </tr>

        <tr>
            <td id="libelle" >Accréditation :</td>
            <td><input id="champ" type="text" name="accreditation_profil" onkeyup="verif()" /></td>
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
    function redirect(){
        window.location.href = "<?php echo DIR_WEBROOT; ?>cprofil/index";
    }

    $(function(){
        $( ".bouton" ).button();
    });
</script>

