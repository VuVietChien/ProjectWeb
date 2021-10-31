<?php
//session_start();
//$db = new Database();
include_once  '../../db/database.php';
include_once  '../../utils/utility.php';

// $user = Utility::getUserToken();
// if($user == null) {
// 	die();
// }

if(!empty($_POST)) {
	$action = Utility::getPost('action');

	switch ($action) {
		case 'delete':
			deleteProduct();
			break;
	}
}

function deleteProduct() {
	$db = new Database();
	$id = Utility::getPost('id');
	//$updated_at = date("Y-m-d H:i:s");
	$sql = "DELETE FROM products where id=$id ";
	$db->execute($sql);
}