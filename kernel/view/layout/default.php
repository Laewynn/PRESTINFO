<?php
require_once(DIR_VIEW."layout/header.php");
require_once(DIR_VIEW."layout/footer.php");
?>

<html>
<head>
 <meta charset="UTF-8"> 
<title> PRESTINFO </title>
	<link href= <?php echo DIR_CSS."style.css";?> rel="stylesheet" media="all" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="<?php echo DIR_JS;?>jquery-ui-1.12.1.custom/jquery-ui.css"/>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- <style type="text/css" media="all">@import 'DIR_CSS/.css';</style> -->
</head>
	<body>
	<div id="header">
		<?php echo $header;

		?>
	</div>

	<div id="content">
		<?php
			echo $content;
		?>
	</div>
	<div id="footer">
		<?php 
			echo $footer; 
		?>
	</div>
	</body>
</html>


