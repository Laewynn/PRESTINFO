<?php $t = explode('/',$_GET['p']); 
foreach($categorie as $k => $v) {
echo '<form action="'.DIR_WEBROOT.'ccategorie/update/'.$t[2].'" method="post">
    <th> Matricule : </th>
    <p> <input type="text" name= "matricule_categorie" value="'.$v['matricule_categorie'].'"/></p>
    <p>Libellé : <input type="text" name= "libelle_categorie" value="'.$v['libelle_categorie'].'"/></p>
    <p>Prix unitaire du km : <input type="text" name= "pu_km" value="'.$v['pu_km'].'"/></p>
    <p>Prix unitaire du repas  : <input type="text" name= "pu_repas" value="'.$v['pu_repas'].'"/></p>
    <input type="submit" value="OK"/>
    <a href="'.DIR_WEBROOT.'ccategorie" </a> <input type="button" onclick="history.go(-1)" value="Retour"/>
</form>';
}
?>