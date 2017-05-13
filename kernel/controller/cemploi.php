<?php
require_once(DIR_CTRL.'/controller.php');
//require(DIR_CORE.'class/classCategories.php');
class cemploi extends Controller {

    //attribs
    var $models = array('emploi');

    public function index() {
        $data['emploi'] = $this->emploi->find();
        $this->set($data);
        $this->render('index');
    }

    public function read($id) {
        $categorie = new categorie();
        $this->emploi->read($id);
        $data['emploi'] = $this->emploi->totable();
        $this->set($data);
        $this->render('read');
    }

    public function create() {
        $this->emploi->setMatriculeEmploi($_POST['matricule_emploi']);
        $this->emploi->setLibelleEmploi($_POST['libelle_emploi']);
        $this->emploi->setTauxHoraireBaseEmploi($_POST['taux_horaire_base_emploi']);
        $this->emploi->setMatriculeCategorie($_POST['matricule_categorie']);
        $this->emploi->create();
        $this->index();
    }


    public function fcreate(){

        $this->render('fcreate');
    }


    public function fupdate($id){
        $this->emploi->read($id);
        $data['emploi'] = $this->emploi->totable();
        $this->set($data);

        $this->render('fupdate');
    }

    public function update($id) {
        //var_dump($_POST);
        $this->emploi->setMatriculeEmploi('');
        $this->emploi->setLibelleEmploi($_POST['libelle_emploi']);
        $this->emploi->setTauxHoraireBaseEmploi($_POST['taux_horaire_base_emploi']);
        $this->emploi->setMatriculeCategorie($_POST['matricule_categorie']);
        $this->emploi->update($id);
        $this->index();
    }

    public function delete($id){
        //$this->categorie->read($id);
        $this->emploi->delete($id);
        $this->index();

    }
}
?>