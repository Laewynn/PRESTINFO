<?php
require_once(DIR_CTRL.'/controller.php');
class cindex extends controller {
 // protected $models = array('');

 public function index(){

  /* require_once (DIR_CTRL.'/ccategorie.php');
  $categorie_con = ccategorie();
  $categorie_con->index(); */
  $this->render('index');
 }
}

?>
