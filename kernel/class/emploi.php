<?php
require_once(DIR_CORE."Model.php");
class emploi extends Model{
    protected $matricule_emploi;
    protected $libelle_emploi;
    protected $taux_horaire_base_emploi;
    protected $matricule_categorie;

    /**
     * emploi constructor.
     * @param $matricule_emploi
     * @param $libelle_emploi
     * @param $taux_horaire_base_emploi
     * @param $matricule_categorie
     */
    public function __construct($matricule_emploi = null, $libelle_emploi =null , $taux_horaire_base_emploi =null , $matricule_categorie = null)
    {
        parent::__construct("emploi", "matricule_emploi", false, array());
        $this->matricule_emploi = $matricule_emploi;
        $this->libelle_emploi = $libelle_emploi;
        $this->taux_horaire_base_emploi = $taux_horaire_base_emploi;
        $this->matricule_categorie = $matricule_categorie;
    }

    /**
     * @return mixed
     */
    public function getMatriculeEmploi()
    {
        return $this->matricule_emploi;
    }

    /**
     * @param mixed $matricule_emploi
     */
    public function setMatriculeEmploi($matricule_emploi)
    {
        $this->matricule_emploi = $matricule_emploi;
    }

    /**
     * @return mixed
     */
    public function getLibelleEmploi()
    {
        return $this->libelle_emploi;
    }

    /**
     * @param mixed $libelle_emploi
     */
    public function setLibelleEmploi($libelle_emploi)
    {
        $this->libelle_emploi = $libelle_emploi;
    }

    /**
     * @return mixed
     */
    public function getTauxHoraireBaseEmploi()
    {
        return $this->taux_horaire_base_emploi;
    }

    /**
     * @param mixed $taux_horaire_base_emploi
     */
    public function setTauxHoraireBaseEmploi($taux_horaire_base_emploi)
    {
        $this->taux_horaire_base_emploi = $taux_horaire_base_emploi;
    }

    /**
     * @return mixed
     */
    public function getMatriculeCategorie()
    {
        return $this->matricule_categorie;
    }

    /**
     * @param mixed $matricule_categorie
     */
    public function setMatriculeCategorie($matricule_categorie)
    {
        $this->matricule_categorie = $matricule_categorie;
    }




}

?>