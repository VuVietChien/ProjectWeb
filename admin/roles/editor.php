<?php
	$title = 'Thêm/Sửa Tài Khoản Người Dùng';
	$baseUrl = '../';
	include_once '../layouts/header.php';
    $name='';
    require_once('form_save.php');

	
?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-md-12">
                    <h1 class="m-0 mb-3">Thêm/Sửa Quyền</h1>
                    
                    <div class="panel-body">
				<form method="post" onsubmit="return validateForm();">
					<div class="form-group">
					  <label for="usr">NAME:</label>
					  <input required="true" type="text" class="form-control" id="usr" name="fullname" value="<?=$name?>">
					  <input type="text" name="id" value="<?=$id?>" hidden="true">
					<button class="btn btn-success"  style="margin-top: 25px;">Save</button>
				</form>
			</div>
        </div>
    </div>
</div>
<aside class="control-sidebar control-sidebar-dark">
</aside>
</div>
<?php
	require_once('../layouts/footer.php');
?>