<link rel="stylesheet" href=".DIR_WEBROOT.'tabs.scss'" />
<?php

// if ($_SESSION("Admin")) {}
 	$header= "<a href='".DIR_WEBROOT."' > 
 	            <h1> PRESTINFO -
 	           Gestion des salariés</h1> </a>";
 	     if($_SESSION['id'] == 0){
			 $header .= "<div  id='connexion'>
 	        
 	            <form action='".DIR_WEBROOT."csalarie/connexion' method=\"post\">
    Pseudo: <input type=\"text\" name=\"pseudo\" value=\"\" /> 
     
    Mot de passe: <input type=\"password\" name=\"mdp\" value=\"\" />
     
    <input type=\"submit\" name=\"connexion\" value=\"Connexion\" />
</form></div>";
		 }
		 else{
			 $header .= "<div  id='connexion'>Connecté en tant que {$_SESSION['surnom']} [{$_SESSION['typeCompte']}] ({$_SESSION['emploi']}) <a href='".DIR_WEBROOT."csalarie/deconnexion'>
			 Déconnexion</a></div>";
		 }


$header .= " 	           	   
<!--\  -------- \ MENU SALARIE -------- -->	           
<ul>
    <li><a href=".DIR_WEBROOT."cindex>ACCUEIL </a></li>
    <hr width=\"2px\" size=\"14px\" />
    <li><a href=".DIR_WEBROOT."ccategorie>CALCULS</a></li>
    <li><a href=".DIR_WEBROOT."csalarie>SALARIES</a></li>
    <li><a href=".DIR_WEBROOT."cemploi>EMPLOI</a></li>
    <li><a href=".DIR_WEBROOT."cprofil>PROFILS</a></li>
    <li><a href=".DIR_WEBROOT."ccategorie>CATEGORIES</a></li>
</ul>


<!--
/* -------- MENU ADMINISTRATEUR --------*/
<ul>
    <li><a href=".DIR_WEBROOT."cindex>ACCUEIL </a></li>
    <li><a href=".DIR_WEBROOT."cindex>ACCUEIL </a></li>
</ul>




/* -------- MENU COMPTABLE -------- */-->

";
?>

