<?php
require_once(DIR_CORE."Model.php");
 class salarie extends Model{
 	protected $id_salarie;
 	protected $nom_salarie;
 	protected $prenom_salarie;
 	protected $codepostal_salarie;
 	protected $rue_salarie;
 	protected $ville_salarie;

     /**
      * salarie constructor.
      * @param $id_salarie
      * @param $nom_salarie
      * @param $prenom_salarie
      * @param $codepostal_salarie
      * @param $rue_salarie
      * @param $ville_salarie
      */
     public function __construct($id_salarie = null, $nom_salarie = null, $prenom_salarie= null, $codepostal_salarie= null, $rue_salarie= null, $ville_salarie= null)
     {
         parent::__construct("salarie", "id_salarie", false, array());
         $this->id_salarie = $id_salarie;
         $this->nom_salarie = $nom_salarie;
         $this->prenom_salarie = $prenom_salarie;
         $this->codepostal_salarie = $codepostal_salarie;
         $this->rue_salarie = $rue_salarie;
         $this->ville_salarie = $ville_salarie;
     }

     /**
      * @return mixed
      */
     public function getIdSalarie()
     {
         return $this->id_salarie;
     }

     /**
      * @param mixed $id_salarie
      */
     public function setIdSalarie($id_salarie)
     {
         $this->id_salarie = $id_salarie;
     }

     /**
      * @return mixed
      */
     public function getNomSalarie()
     {
         return $this->nom_salarie;
     }

     /**
      * @param mixed $nom_salarie
      */
     public function setNomSalarie($nom_salarie)
     {
         $this->nom_salarie = $nom_salarie;
     }

     /**
      * @return mixed
      */
     public function getPrenomSalarie()
     {
         return $this->prenom_salarie;
     }

     /**
      * @param mixed $prenom_salarie
      */
     public function setPrenomSalarie($prenom_salarie)
     {
         $this->prenom_salarie = $prenom_salarie;
     }

     /**
      * @return mixed
      */
     public function getCodepostalSalarie()
     {
         return $this->codepostal_salarie;
     }

     /**
      * @param mixed $codepostal_salarie
      */
     public function setCodepostalSalarie($codepostal_salarie)
     {
         $this->codepostal_salarie = $codepostal_salarie;
     }

     /**
      * @return mixed
      */
     public function getRueSalarie()
     {
         return $this->rue_salarie;
     }

     /**
      * @param mixed $rue_salarie
      */
     public function setRueSalarie($rue_salarie)
     {
         $this->rue_salarie = $rue_salarie;
     }

     /**
      * @return mixed
      */
     public function getVilleSalarie()
     {
         return $this->ville_salarie;
     }

     /**
      * @param mixed $ville_salarie
      */
     public function setVilleSalarie($ville_salarie)
     {
         $this->ville_salarie = $ville_salarie;
     }




 }


?>