<?php $t = explode('/',$_GET['p']); 
foreach($salarie as $k => $v) {
echo '<form action="'.DIR_WEBROOT.'ccategorie/update/'.$t[2].'" method="post">
    <fieldset id="formulaire">
        <table id="tableau">
            <legend> Modification d\'un salarié </legend> <!-- Titre du fieldset -->
            <tr>
                <th> Matricule : </th>
                <th> <input id="champ"  type="text" name= "id_salarie" value="'.$v['id_salarie'].'"/></th>
            </tr>

            <tr>
                <th> Libellé : </th>
                <th> <input id="champ" type="text" name= "nom_salarie" value="'.$v['nom_salarie'].'"/></th>
            </tr>

            <tr>
                <th> Prix unitaire du km : </th>
                <th> <input id="champ" type="text" name= "prenom_salarie" value="'.$v['prenom_salarie'].'"/></th>
            </tr>

            <tr>
                <th> Prix unitaire du repas  : </th>
                <th><input id="champ" type="text" name= "rue_salarie" value="'.$v['rue_salarie'].'"/></th>
            </tr>

            <tr>
                <th> Prix unitaire du km : </th>
                <th> <input id="champ" type="text" name= "pu_km" value="'.$v['pu_km'].'"/></th>
            </tr>

            <tr>
                <th> Prix unitaire du repas  : </th>
                <th><input id="champ" type="text" name= "pu_repas" value="'.$v['pu_repas'].'"/></th>
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
        window.location.href = "<?php echo DIR_WEBROOT; ?>ccategorie/index";
    }

    $(function(){
        $( ".bouton" ).button();
    });

</script>