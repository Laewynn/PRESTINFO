<?php
require_once(DIR_CTRL.'/controller.php');
//require(DIR_CORE.'class/classCategories.php');
class csalarie extends Controller {

    //attribs
    var $models = array('salarie');

    public function index() {
        $data['salarie'] = $this->salarie->find();
        $this->set($data);
        $this->render('index');
    }

    public function read($id) {
        $categorie = new categorie();
        $this->salarie->read($id);
        $data['salarie'] = $this->salarie->totable();
        $this->set($data);
        $this->render('read');
    }

    public function create() {
        $this->salarie->setIdSalarie($_POST['id_salarie']);
        $this->salarie->setNomSalarie($_POST['nom_salarie']);
        $this->salarie->setPrenomSalarie($_POST['prenom_salarie']);
        $this->salarie->setCodePostalSalarie($_POST['codepostal_salarie']);
        $this->salarie->setRueSalarie($_POST['rue_salarie']);
        $this->salarie->setVilleSalarie($_POST['ville_salarie']);
        $this->salarie->create();
        $this->index();
    }


    public function fcreate(){

        $this->render('fcreate');
    }


    public function fupdate($id){
        $this->salarie->read($id);
        $data['salarie'] = $this->salarie->totable();
        $this->set($data);

        $this->render('fupdate');
    }

    public function update($id) {
        // var_dump($_POST);
        $this->salarie->setIdSalarie($_POST['id_salarie']);
        $this->salarie->setNomSalarie($_POST['nom_salarie']);
        $this->salarie->setPrenomSalarie($_POST['prenom_salarie']);
        $this->salarie->setCodePostalSalarie($_POST['codepostal_salarie']);
        $this->salarie->setRueSalarie($_POST['rue_salarie']);
        $this->salarie->setVilleSalarie($_POST['ville_salarie']);
        $this->salarie->update($id);
        $this->index();
    }

    public function delete($id){
        //$this->categorie->read($id);
        $this->salarie->delete($id);
        $this->index();

    }
}
?>