<form action=<?php echo DIR_WEBROOT.'ccategorie/create';?> method="post">
	<p>Matricule : <input type="text" name= 'matricule_categorie'/></p>
	<p>Libellé : <input type="text" name= 'libelle_categorie'/></p>
	<p>Prix unitaire du repas : <input type="text" name= 'email'/></p>
	<p>Prix unitaire kilométre : <input type="text" name= 'email'/></p>
	<input type="submit" value="OK"/>
	<a href="'.DIR_WEBROOT.'ccategorie" </a> <input type="button" onclick="history.go(-1)" value="Retour"/>
</form>