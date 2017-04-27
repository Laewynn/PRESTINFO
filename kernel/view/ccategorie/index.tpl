<h2>CATÉGORIES</h2>

<a href="<?php echo DIR_WEBROOT; ?>ccategorie/fcreate/"><svg id="add" xmlns="http://www.w3.org/2000/svg" fill="#165a70" width="32" height="32" viewBox="0 0 24 24"><path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"/> </svg> </a>
<?php
$v = $this->viewvar;
if(!empty($v)){
echo "
<table>

<tr id='titres'>
	<th> Matricule catégorie</th>
	<th> Libellé catégorie</th>
	<th> Prix unitaire du kilomètre</th>
	<th> Prix unitaire du repas</th>
	<th> Modification</th>
	<th> Suppression</th>
</tr>";
 foreach($categorie as $k => $v) {
		echo '</br><a href =  "'.DIR_WEBROOT.'ccategorie/read/'.$v['matricule_categorie'].'">
		<tr>
			<td> '.$v['matricule_categorie'].'</td>
			<td> '.$v['libelle_categorie'].'</td>
			<td> '.$v['pu_km'].'</td>
			<td> '.$v['pu_repas'].'</td>
			<td> <a href="'.DIR_WEBROOT.'ccategorie/fupdate/'.$v['matricule_categorie'].'"><img src="'.DIR_IMG.'update_white_18x18.png"/> </a> </td>
			<td> <svg id="'.$v['matricule_categorie'].'" class="corbeille" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z"/></svg>  </td>
			<!-- <a href="'.DIR_WEBROOT.'ccategorie/delete/'.$v['matricule_categorie'].'"> -->

				</tr>
	</a> </br>';
	}

	//print_r($categ);
echo '

</table>
<div id="dialog" title="Suppression">
	<span>Voulez-vous supprimer la catégorie <span id="id_sup"></span> ? </span>
</div>
<script>
	$("#dialog").hide();
	$( function() {
		$( "#dialog" ).dialog({
			autoOpen: false,
			resizable: false,
			height: "auto",
			width: 400,
			modal: true,
			buttons: {
				"Oui": function() {
					window.location.href = "'.DIR_WEBROOT.'ccategorie/delete/" + $("#id_sup").html();
				},
				"Non": function() {
					$( this ).dialog( "close" );
				}
			}
		});

		$(".corbeille").click(function() {

			var id = $(this).attr("id");
			$("#id_sup").html(id);
			$("#dialog").dialog("open");
		});
	} );
</script>
';
}
else{
	echo "<h2 id='Aucun résultat'>Aucun résultat</h2>";
}
?>
