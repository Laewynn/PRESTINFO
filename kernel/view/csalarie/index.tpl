<p id="titre_page">SALARIES </p>

<a href="<?php echo DIR_WEBROOT; ?>ccategorie/fcreate/"> <p id ="add_texte"> AJOUTER</p><svg id="add" xmlns="http://www.w3.org/2000/svg" fill="#165a70" width="32" height="32" viewBox="0 0 24 24"><path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"/> </svg>   </a>
<?php
$v = $this->viewvar;
if(!empty($v)){
echo "
<table>

<tr id='titres'>
	<th> Id du salarie </th>
	<th> Nom </th>
	<th> Prénom</th>
	<th> Rue </th>
	<th> Code Postal</th>
	<th> Villes</th>
	<th> Modification</th>
	<th> Suppression</th>
</tr>";
 foreach($salarie as $k => $v) {
		echo '<a href =  "'.DIR_WEBROOT.'csalarie/read/'.$v['id_salarie'].'">
		<tr>
			<td> '.$v['id_salarie'].'</td>
			<td> '.$v['nom_salarie'].'</td>
			<td> '.$v['prenom_salarie'].'</td>
			<td> '.$v['rue_salarie'].'</td>
			<td> '.$v['codepostal_salarie'].'</td>
			<td> '.$v['ville_salarie'].'</td>
			<td> <a href="'.DIR_WEBROOT.'csalarie/fupdate/'.$v['id_salarie'].'"><img src="'.DIR_IMG.'update_white_18x18.png"/> </a> </td>
			<td> <svg id="'.$v['id_salarie'].'" class="corbeille" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z"/></svg>  </td>
			<!-- <a href="'.DIR_WEBROOT.'csalarie/delete/'.$v['id_salarie'].'"> -->

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
