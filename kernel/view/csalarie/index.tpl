<div id="content">

<h2>Index des sujets</h2>
<a href =  "<?php echo DIR_WEBROOT; ?>cutilisateur/fcreate"> <input type='submit' value='Créer un utilisateur' /></a></br></br>
<a href =  "<?php echo DIR_WEBROOT; ?>cutilisateur/index"> <input type='submit' value='Voir les utilisateurs' /></a></br></br>		
<a href =  "<?php echo DIR_WEBROOT; ?>csujet/fcreate"> <input type='submit' value='Créer un sujet' /></a></br></br>
<?php foreach($sujet as $k => $v) {	
	echo '</br><a href="'.DIR_WEBROOT.'csujet/read/'.$v['id_sujet'].'">'.$v['nom_sujet'].'</a></br>';
	}

?>

</div>