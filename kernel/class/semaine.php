<?php

class semaine extends Model{
    protected $num_semaine;
    protected $libellemois_semaine;

    /**
     * semaine constructor.
     * @param $num_semaine
     * @param $libellemois_semaine
     */
    public function __construct($num_semaine, $libellemois_semaine)
    {
        $this->num_semaine = $num_semaine;
        $this->libellemois_semaine = $libellemois_semaine;
    }

    /**
     * @return mixed
     */
    public function getNumSemaine()
    {
        return $this->num_semaine;
    }

    /**
     * @param mixed $num_semaine
     */
    public function setNumSemaine($num_semaine)
    {
        $this->num_semaine = $num_semaine;
    }

    /**
     * @return mixed
     */
    public function getLibellemoisSemaine()
    {
        return $this->libellemois_semaine;
    }

    /**
     * @param mixed $libellemois_semaine
     */
    public function setLibellemoisSemaine($libellemois_semaine)
    {
        $this->libellemois_semaine = $libellemois_semaine;
    }


}


?>