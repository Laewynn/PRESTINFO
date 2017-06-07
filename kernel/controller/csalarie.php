<?php
require_once(DIR_CTRL.'/controller.php');
//require(DIR_CORE.'class/classCategories.php');
class csalarie extends Controller {

    //attribs
    var $models = array('profil', 'categorie', 'emploi', 'salarie');

    public function index() {
        $data['salarie'] = $this->salarie->find();
        $this->set($data);
        /*echo "<pre>";
        var_dump($this->viewvar);
        echo "</pre>";*/
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
        $data['emploi'] = $this->emploi->find();
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
        $this->salarie->setMatriculeEmploi($_POST['matricule_emploi']);
        $this->salarie->update($id);
        $this->index();
    }

    public function delete($id){
        //$this->categorie->read($id);
        $this->salarie->delete($id);
        $this->index();

    }

    public function connexion(){

        $result = $this->profil->find("surnom_profil = '{$_POST['pseudo']}'");
        if($_POST['pseudo'] != "" && sizeof($result) == 1){
            $result = $this->salarie->find("profil_salarie = ".$result[0]['id_profil']);
            $this->salarie->read($result[0]['id_salarie']);
            var_dump($this->salarie->getProfilSalarie()->getMdpProfil());

            if($_POST['mdp'] == $this->salarie->getProfilSalarie()->getMdpProfil()){
                $_SESSION['id'] = $this->salarie->getIdSalarie();
                $_SESSION['surnom'] = $this->salarie->getProfilSalarie()->getSurnomProfil();
                $_SESSION['emploi'] = $this->salarie->getMatriculeEmploi()->getLibelleEmploi();
                $_SESSION['typeCompte'] = $this->salarie->getProfilSalarie()->getAccreditationProfil();
                $this->index();
            }
            else{
                $this->index();
            }
        }
        else{
            $this->index();
        }
    }

    public function deconnexion(){
        $_SESSION['typeCompte'] = "Visiteur";
        $_SESSION['surnom'] = "";
        $_SESSION['id'] = 0;
        $_SESSION['emploi'] = "rien";
        $this->index();
    }



}
?>