<?php $t = explode('/',$_GET['p']); 
foreach($profil as $k => $v) {
echo '<form action="'.DIR_WEBROOT.'cprofil/update/'.$t[2].'" method="post">
    <fieldset id="formulaire">
        <table id="tableau">
            <legend> Modification d\'un profil </legend> <!-- Titre du fieldset -->
            <tr>
                <th> Id : </th>
                <th> <input id="champ"  type="text" name= "id_profil" value="'.$v['id_profil'].'"/></th>
            </tr>

            <tr>
                <th> Pseudo : </th>
                <th> <input id="champ" type="text" name= "surnom_profil" value="'.$v['surnom_profil'].'"/></th>
            </tr>

            <tr>
                <th> Mot de passe : </th>
                <th> <input id="champ" type="text" name= "mdp_profil" value="'.$v['mdp_profil'].'"/></th>
            </tr>

            <tr>
                <th> Accréditation : </th>
                <th><input id="champ" type="text" name= "accreditation_profil" value="'.$v['accreditation_profil'].'"/></th>
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
    }
    ?>
</form>

<script>
    function redirect(){
        window.location.href = "<?php echo DIR_WEBROOT; ?>cprofil/index";
    }

    $(function(){
        $( ".bouton" ).button();
    });

</script>