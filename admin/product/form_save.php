<?php
if(!empty($_POST)) {
	$db = new Database();

	$id = Utility::getPost('id');
	$name = Utility::getPost('name');
	$price = Utility::getPost('price');
	$brand = Utility::getPost('brand');
	$quantity = Utility::getPost('quantity');
	$image = moveFile('image');

	$description = Utility::getPost('description');
	$category_id = Utility::getPost('category_id');
	$active = Utility::getPost('active');

	if($id > 0) {	
	//update
		if($image != '') {
			$sql = "UPDATE products set image = '$image', name = '$name', price = '$price', brand = '$brand', description = '$description', quantity = '$quantity', category_id = '$category_id' active= '$active' where id = $id";
			$db->execute($sql);			  
			$msgsuccess = "Sửa thành công";
			
		} 
		else {
			$sql = "UPDATE products set name = '$name', price = '$price', brand = '$brand', description = '$description', active = '$active', category_id = '$category_id' , quantity = '$quantity' where id = $id";
			$db->execute($sql);
			$msgsuccess = "Sửa thành công";
			
		}
	
	} else {
		//insert
		$sql = "insert into products(image, name, price, brand, description, quantity, active, deleted, category_id)
		values ('$image', '$name', '$price', '$brand', '$description', '$quantity', '$active', 0, 
		$category_id)";
		$db->execute($sql);
		$msgsuccess = "Thêm thành công";
	}
}