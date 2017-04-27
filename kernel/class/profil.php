<?php

class profil extends Model{
    protected $surnom_profil;
    protected $mdp_profil;
    protected $accreditation_profil;
    protected $id_profil;

    /**
     * profil constructor.
     * @param $surnom_profil
     * @param $mdp_profil
     * @param $accreditation_profil
     * @param $id_profil
     */
    public function __construct($surnom_profil, $mdp_profil, $accreditation_profil, $id_profil)
    {
        $this->surnom_profil = $surnom_profil;
        $this->mdp_profil = $mdp_profil;
        $this->accreditation_profil = $accreditation_profil;
        $this->id_profil = $id_profil;
    }

    /**
     * @return mixed
     */
    public function getSurnomProfil()
    {
        return $this->surnom_profil;
    }

    /**
     * @param mixed $surnom_profil
     */
    public function setSurnomProfil($surnom_profil)
    {
        $this->surnom_profil = $surnom_profil;
    }

    /**
     * @return mixed
     */
    public function getMdpProfil()
    {
        return $this->mdp_profil;
    }

    /**
     * @param mixed $mdp_profil
     */
    public function setMdpProfil($mdp_profil)
    {
        $this->mdp_profil = $mdp_profil;
    }

    /**
     * @return mixed
     */
    public function getAccreditationProfil()
    {
        return $this->accreditation_profil;
    }

    /**
     * @param mixed $accreditation_profil
     */
    public function setAccreditationProfil($accreditation_profil)
    {
        $this->accreditation_profil = $accreditation_profil;
    }

    /**
     * @return mixed
     */
    public function getIdProfil()
    {
        return $this->id_profil;
    }

    /**
     * @param mixed $id_profil
     */
    public function setIdProfil($id_profil)
    {
        $this->id_profil = $id_profil;
    }




}

?>