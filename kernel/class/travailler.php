<?php

class categorie extends Model{
    protected $id_travailler;
    protected $num_semaine_travailler;
    protected $nbheures_travailler;
    protected $nbh100_travailler;
    protected $nbh125_travailler;
    protected $nbh150_travailler;
    protected $nbkm_travailler;
    protected $nbrepas_travailler;
    protected $salairebrutmensuel_travailler;
    protected $salairenetmensuel_travailler;
    protected $salairenetvalues_travailler;

    /**
     * categorie constructor.
     * @param $id_travailler
     * @param $num_semaine_travailler
     * @param $nbheures_travailler
     * @param $nbh100_travailler
     * @param $nbh125_travailler
     * @param $nbh150_travailler
     * @param $nbkm_travailler
     * @param $nbrepas_travailler
     * @param $salairebrutmensuel_travailler
     * @param $salairenetmensuel_travailler
     * @param $salairenetvalues_travailler
     */
    public function __construct($id_travailler, $num_semaine_travailler, $nbheures_travailler, $nbh100_travailler, $nbh125_travailler, $nbh150_travailler, $nbkm_travailler, $nbrepas_travailler, $salairebrutmensuel_travailler, $salairenetmensuel_travailler, $salairenetvalues_travailler)
    {
        $this->id_travailler = $id_travailler;
        $this->num_semaine_travailler = $num_semaine_travailler;
        $this->nbheures_travailler = $nbheures_travailler;
        $this->nbh100_travailler = $nbh100_travailler;
        $this->nbh125_travailler = $nbh125_travailler;
        $this->nbh150_travailler = $nbh150_travailler;
        $this->nbkm_travailler = $nbkm_travailler;
        $this->nbrepas_travailler = $nbrepas_travailler;
        $this->salairebrutmensuel_travailler = $salairebrutmensuel_travailler;
        $this->salairenetmensuel_travailler = $salairenetmensuel_travailler;
        $this->salairenetvalues_travailler = $salairenetvalues_travailler;
    }

    /**
     * @return mixed
     */
    public function getIdTravailler()
    {
        return $this->id_travailler;
    }

    /**
     * @param mixed $id_travailler
     */
    public function setIdTravailler($id_travailler)
    {
        $this->id_travailler = $id_travailler;
    }

    /**
     * @return mixed
     */
    public function getNumSemaineTravailler()
    {
        return $this->num_semaine_travailler;
    }

    /**
     * @param mixed $num_semaine_travailler
     */
    public function setNumSemaineTravailler($num_semaine_travailler)
    {
        $this->num_semaine_travailler = $num_semaine_travailler;
    }

    /**
     * @return mixed
     */
    public function getNbheuresTravailler()
    {
        return $this->nbheures_travailler;
    }

    /**
     * @param mixed $nbheures_travailler
     */
    public function setNbheuresTravailler($nbheures_travailler)
    {
        $this->nbheures_travailler = $nbheures_travailler;
    }

    /**
     * @return mixed
     */
    public function getNbh100Travailler()
    {
        return $this->nbh100_travailler;
    }

    /**
     * @param mixed $nbh100_travailler
     */
    public function setNbh100Travailler($nbh100_travailler)
    {
        $this->nbh100_travailler = $nbh100_travailler;
    }

    /**
     * @return mixed
     */
    public function getNbh125Travailler()
    {
        return $this->nbh125_travailler;
    }

    /**
     * @param mixed $nbh125_travailler
     */
    public function setNbh125Travailler($nbh125_travailler)
    {
        $this->nbh125_travailler = $nbh125_travailler;
    }

    /**
     * @return mixed
     */
    public function getNbh150Travailler()
    {
        return $this->nbh150_travailler;
    }

    /**
     * @param mixed $nbh150_travailler
     */
    public function setNbh150Travailler($nbh150_travailler)
    {
        $this->nbh150_travailler = $nbh150_travailler;
    }

    /**
     * @return mixed
     */
    public function getNbkmTravailler()
    {
        return $this->nbkm_travailler;
    }

    /**
     * @param mixed $nbkm_travailler
     */
    public function setNbkmTravailler($nbkm_travailler)
    {
        $this->nbkm_travailler = $nbkm_travailler;
    }

    /**
     * @return mixed
     */
    public function getNbrepasTravailler()
    {
        return $this->nbrepas_travailler;
    }

    /**
     * @param mixed $nbrepas_travailler
     */
    public function setNbrepasTravailler($nbrepas_travailler)
    {
        $this->nbrepas_travailler = $nbrepas_travailler;
    }

    /**
     * @return mixed
     */
    public function getSalairebrutmensuelTravailler()
    {
        return $this->salairebrutmensuel_travailler;
    }

    /**
     * @param mixed $salairebrutmensuel_travailler
     */
    public function setSalairebrutmensuelTravailler($salairebrutmensuel_travailler)
    {
        $this->salairebrutmensuel_travailler = $salairebrutmensuel_travailler;
    }

    /**
     * @return mixed
     */
    public function getSalairenetmensuelTravailler()
    {
        return $this->salairenetmensuel_travailler;
    }

    /**
     * @param mixed $salairenetmensuel_travailler
     */
    public function setSalairenetmensuelTravailler($salairenetmensuel_travailler)
    {
        $this->salairenetmensuel_travailler = $salairenetmensuel_travailler;
    }

    /**
     * @return mixed
     */
    public function getSalairenetvaluesTravailler()
    {
        return $this->salairenetvalues_travailler;
    }

    /**
     * @param mixed $salairenetvalues_travailler
     */
    public function setSalairenetvaluesTravailler($salairenetvalues_travailler)
    {
        $this->salairenetvalues_travailler = $salairenetvalues_travailler;
    }


}

?>