<?php

 class salarie extends Model{
 	protected $id_salarie;
 	protected $nom_salarie;
 	protected $prenom_salarie;
 	protected $codepostal_salarie;
 	protected $rue_salarie;
 	protected $ville_salarie;
 	 

 	public function __construct($ID, $Nom, $Prenom, $CodePostal, $Rue, $Ville){
 		$this->id_salarie=$ID;
 		$this->nom_salaire=$Nom;
 		$this->prenom_salarie=$Prenom;
 		$this->codepostal_salarie=$CodePostal;
 		$this->rue_salarie=$Rue;
 		$this->ville_salarie=$Ville;
 	}

 	public function getID(){
 		return $this->id_salarie;
 	}

 	public function setID($var){
 		$this->id_salarie=$var;
 	}

 	public function getNom(){
 		return $this->nom_salarie;
 	}

 	public function setNom($var){
 		$this->pseudo_sujet=$var;
 	}

 	public function getPrenom(){
 		return $this->date_commentaire;
 	}

 	public function setPrenom($var){
 		$this->date_commentaire=$var;
 	}

 	public function getCodePostal(){
 		return $this->id_utilisateur;
 	}

 	public function setCodePostal($var){
 		$this->id_utilisateur=$var;
 	}

 	public function getRue(){
 		return $this->id_sujet;
 	}

 	public function setRue($var){
 		$this->id_sujet=$var;
 	}




}


?>