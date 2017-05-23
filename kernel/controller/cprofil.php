<?php
require_once(DIR_CTRL.'/controller.php');
//require(DIR_CORE.'class/classCategories.php');
class cprofil extends Controller {

	//attribs
	var $models = array('profil');

	public function index() {
		$data['profil'] = $this->profil->find();
		$this->set($data);
		$this->render('index');
	}

	public function read($id) {
		$categorie = new categorie();
		$this->profil->read($id);
		$data['profil'] = $this->profil->totable();
		$this->set($data);
		$this->render('read');
	}

	public function create() {
		$this->profil->setIdProfil($_POST['id_profil']);
		$this->profil->setSurnomProfil($_POST['surnom_profil']);
		$this->profil->setMdpProfil($_POST['mdp_profil']);
		$this->profil->setAccreditationProfil($_POST['accreditation_profil']);
		$this->profil->create();
		$this->index();
	}


	public function fcreate(){

		$this->render('fcreate');
	}

	public function connexion(){
		function erreur(){
			require_once(CONTROLLER.'Erreur.php');
			$Erreur = new controller_erreur();
			$Erreur->eu401();
		}
		$result = $this->Profil->find("surnom_profil = '".$_POST['surnom']."'", null);
		if(sizeof($result) == 1){
			$this->Profil->read($result[0]['id_profil']);
			if(password_verify($_POST['mdp_profil'], $this->Profil->getMdpProfil())){
				$_SESSION['id_profil'] = $this->Utilisateur->getIdProfil();
				$_SESSION['surnom_profil'] = $this->Utilisateur->getSurnomProfil();
				$_SESSION['accreditation_profil'] = $this->Utilisateur->getAccreditationProfil();
				require_once(DIR_WEBROOT.'index.php');
				$Accueil = new controller_accueil();
				$Accueil->index();
			}
			else{
				erreur();
			}
		}
		else{
			erreur();
		}
	}

	/**
	 *	deconnexion - Deconnecte l'utilisateur et détruit la session
	 */
	public function deconnexion(){
		unset($_SESSION['id']);
		session_destroy();
		require_once(CONTROLLER.'Accueil.php');
		$Accueil = new controller_accueil();
		$Accueil->index();
	}
	/**
	 * appelle la vue associée pour affichage
	 * @param $script le nom de la vue à afficher
	 */
	public function search(){
		$search = $_POST['search'];

	}


	public function fupdate($id){
		$this->profil->read($id);
		$data['profil'] = $this->profil->totable();
		$this->set($data);

		$this->render('fupdate');
	}

	public function update($id) {
		//var_dump($_POST);
		$this->profil->setIdProfil($_POST['id_profil']);
		$this->profil->setSurnomProfil($_POST['surnom_profil']);
		$this->profil->setMdpProfil($_POST['mdp_profil']);
		$this->profil->setAccreditationProfil($_POST['accreditation_profil']);
		$this->profil->update($id);
		$this->index();
	}

	public function delete($id){
		//$this->categorie->read($id);
		$this->profil->delete($id);
		$this->index();

	}
}
?>