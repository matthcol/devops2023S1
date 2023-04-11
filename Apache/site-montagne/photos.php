
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Photos</title>
	<link rel="stylesheet" href="main.css">
</head>
<body>
	<h1>Photos</h1>

	<section class="photo">
	<?php
	foreach (glob("Images/*.png") as $filename) {
    		echo "<img src=\"$filename\" alt=\"beautiful mountain\" />\n";
	}?>
	</section>

</body>
</html>

