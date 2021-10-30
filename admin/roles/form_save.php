<?php
if(!empty($_POST)) {
	//$id = getPost('id');
	$name = getPost('name');

    $sql = "insert into roles(name) values ('$name')";
	execute($sql);
	header('Location: index.php');
	die();
}
?>