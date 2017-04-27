<?php
require_once(DIR_CTRL.'/controller.php');
//require(DIR_CORE.'class/classCategories.php');
class ccategorie extends Controller {

    //attribs
    var $models = array('categorie');

    public function index() {
        $data['categorie'] = $this->categorie->find();
        $this->set($data);
        $this->render('index');
    }

    public function read($id) {
        $categorie = new categorie();
        $this->categorie->read($id);
        $data['categorie'] = $this->categorie->totable();
        $this->set($data);
        $this->render('read');
    }

    public function create() {
        $this->categorie->setMatriculeCategorie($_POST['matricule_categorie']);
        $this->categorie->setLibelleCategorie($_POST['libelle_categorie']);
        $this->categorie->setPuKm($_POST['pu_km']);
        $this->categorie->setPuRepas($_POST['pu_repas']);
        $this->categorie->create();
        $this->render('create');
    }


    public function fcreate(){

        $this->render('fcreate');
    }


    public function fupdate($id){
        $this->categorie->read($id);
        $data['categorie'] = $this->categorie->totable();
        $this->set($data);

        $this->render('fupdate');
    }

    public function update($id) {
        var_dump($_POST);
        $this->categorie->setMatriculeCategorie('');
        $this->categorie->setLibelleCategorie($_POST['libelle_categorie']);
        $this->categorie->setPuKm($_POST['pu_km']);
        $this->categorie->setPuRepas($_POST['pu_repas']);
        $this->categorie->update($id);
        $this->render('update');
    }

    public function delete($id){
        //$this->categorie->read($id);
        $this->categorie->delete($id);
        $this->index();

    }
}
?>