<?php $t = explode('/',$_GET['p']);
$emploi = $this->viewvar['emploi'];
var_dump($emploi);

echo '<form action="'.DIR_WEBROOT.'csalarie/update/'.$t[2].'" method="post">
    <fieldset id="formulaire">
        <table id="tableau">
            <legend> Modification d\'un salarié </legend> <!-- Titre du fieldset -->
            <tr>
                <th> Id du salarié : </th>
                <th> <input id="champ"  type="text" name= "id_salarie" value="'.$emploi['matricule'].'"/></th>
            </tr>

            <tr>
                <th> Nom : </th>
                <th> <input id="champ" type="text" name= "nom_salarie" value="'.$emploi['nom_salarie'].'"/></th>
            </tr>

            <tr>
                <th> Prénom : </th>
                <th> <input id="champ" type="text" name= "prenom_salarie" value="'.$emploi['prenom_salarie'].'"/></th>
            </tr>

            <tr>
                <th> Rue du salarié  : </th>
                <th><input id="champ" type="text" name= "rue_salarie" value="'.$emploi['rue_salarie'].'"/></th>
            </tr>

            <tr>
                <th> Code Postal : </th>
                <th> <input id="champ" type="text" name= "codepostal_salarie" value="'.$emploi['codepostal_salarie'].'"/></th>
            </tr>

            <tr>
                <th> Ville : </th>
                <th><input id="champ" type="text" name= "ville_salarie" value="'.$emploi['ville_salarie'].'"/></th>
            </tr>

            </table>
    </fieldset>
        <br/>

        <table id="bouton">
            <tr>
                <th> <input class="bouton"  type="submit" value="OK"/></th>
                <th><input class="bouton"  type="button" onclick="redirect()" value="Retour"/></th>
            </tr>
        </table>';

    ?>
</form>

<script>
    function redirect(){
        window.location.href = "<?php echo DIR_WEBROOT; ?>csalarie/index";
    }

    $(function(){
        $( ".bouton" ).button();
    });

</script>