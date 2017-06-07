<?php
require_once(DIR_CORE."Model.php");
class categorie extends Model{
    protected $matricule_categorie;
    protected $libelle_categorie;
    protected $pu_km;
    protected $pu_repas;

    /**
     * emploi constructor.
     * @param $matricule_categorie
     * @param $libelle_categorie
     * @param $pu_km
     * @param $pu_repas
     */
    public function __construct($matricule_categorie = null, $libelle_categorie = null, $pu_km = null, $pu_repas = null)
    {
        parent::__construct("categorie", "matricule_categorie", false, array());
        $this->matricule_categorie = $matricule_categorie;
        $this->libelle_categorie = $libelle_categorie;
        $this->pu_km = $pu_km;
        $this->pu_repas = $pu_repas;
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

    /**
     * @return mixed
     */
    public function getLibelleCategorie()
    {
        return $this->libelle_categorie;
    }

    /**
     * @param mixed $libelle_categorie
     */
    public function setLibelleCategorie($libelle_categorie)
    {
        $this->libelle_categorie = $libelle_categorie;
    }

    /**
     * @return mixed
     */
    public function getPuKm()
    {
        return $this->pu_km;
    }

    /**
     * @param mixed $pu_km
     */
    public function setPuKm($pu_km)
    {
        $this->pu_km = $pu_km;
    }

    /**
     * @return mixed
     */
    public function getPuRepas()
    {
        return $this->pu_repas;
    }

    /**
     * @param mixed $pu_repas
     */
    public function setPuRepas($pu_repas)
    {
        $this->pu_repas = $pu_repas;
    }

}

?>