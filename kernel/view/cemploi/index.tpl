<html>
<head>
<meta charset="UTF-8">

</head>
<p id="titre_page" xmlns="http://www.w3.org/1999/html">SALARIES </p>

<a href="<?php echo DIR_WEBROOT; ?>cemploi/fcreate/" id="lien_add"> <text id="add_texte"> AJOUTER </text> <svg id="add"  xmlns="http://www.w3.org/2000/svg" fill="#165a70" width="18" height="18" viewBox="1 1 18 18"><path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"/> </svg>   </a>
<br/>
<?php
$v = $this->viewvar;
if(!empty($v)){
echo "
<table>
	<br/>
<tr id='titres'>
	<th> Matricule emploi </th>
	<th> Libellé </th>
	<th> Taux horaire base emploi </th>
	<th> Matricule de la catégorie </th>
	<th> Modification</th>
	<th> Suppression</th>
</tr>";
 foreach($emploi as $k => $v) {
		echo '<a href =  "'.DIR_WEBROOT.'cemploi/read/'.$v['matricule_emploi'].'">
		<tr>
			<td> <a href="'.DIR_WEBROOT.'cemploi/fupdate/'.$v['matricule_emploi'].'">'.$v['matricule_emploi'].'  </td>
			<td> '.$v['libelle_emploi'].'</td>
			<td> '.$v['taux_horaire_base_emploi'].'</td>
			<td> '.$v['matricule_categorie'].'</a></td>
			<td> <a href="'.DIR_WEBROOT.'cemploi/fupdate/'.$v['matricule_emploi'].'"><img src="'.DIR_IMG.'update_white_18x18.png"/> </a> </td>
			<td> <svg id="'.$v['matricule_emploi'].'" class="corbeille" xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25"><path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z"/></svg>  </td>
			<!-- <a href="'.DIR_WEBROOT.'cemploi/delete/'.$v['matricule_emploi'].'"> -->
		</tr>
	</a> ';
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
					window.location.href = "'.DIR_WEBROOT.'cemploi/delete/" + $("#id_sup").html();
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
</html>