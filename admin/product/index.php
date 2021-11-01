<?php

$title = "Trang Quản lý người dùng";
$baseUrl = '../';
include_once '../layouts/header.php';
$db = new Database();               

$sql = "select products.*, categories.name as category_name from products left join categories on products.category_id = categories.id where products.deleted = 0";

$data = $db->executeResult($sql);

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-md-12">
                    <h1 class="m-0 mb-3">DANH SÁCH SẢN PHẨM</h1>
                    <form action="" method="GET">

                        <div class="row">
                            <div class="col-md-11">
                                <input required class="form-control" type="text" name="search" placeholder="Nhập thông tin cần tìm kiếm ...">
                            </div>
                            <div class="col-md-1">
                                <button type="submit" style="width: 100%;" class="btn btn-dark"><i class="fas fa-search"></i></button>
                            </div>

                        </div>
                    </form>

                    <table class="table table-hover mt-3 table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">STT</th>
                                <th scope="col">Image</th>
                                <th scope="col">Tên sản phẩm</th>
                                <th scope="col">Giá</th>
                                <th scope="col">Danh mục</th>
                                <th scope="col">Kích hoạt</th>
                                <th scope="col">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php

                            $index = 0;
                            foreach ($data as $item) : ?>
                                <tr>
                                    <th scope="row"><?= ++$index ?></th>
                                    <td><img src="<?=fixUrl($item['image'])?>" style="max-height: 100px; margin-top: 5px; margin-bottom: 15px;"></td>
                                    
                                    <td><?= $item['name'] ?></td>
                                    <td><?= number_format($item['price']) ?>VNĐ</td>
                                    <td><?= $item['category_name']?></td>
                                    <td > <?= $item['active'] ==0 ? "<span style='color:red'>Không kích hoạt</span>" : "<span style='color:green'>Kích hoạt</span>" ;?> </td>
                                    
                                    <td>
                                        <a href="./editor.php?id=<?= $item['id'] ?>" class="btn btn-warning">Sửa</a>
                                        
                                        <button onclick="deleteUser(<?= $item['id'] ?>)" class="btn btn-danger">Xoá</button>
                                        
                                    </td>
                                </tr>
                            <?php endforeach ?>

                        </tbody>
                    </table>
                </div>


            </div>
        </div>
    </div>
</div>
<aside class="control-sidebar control-sidebar-dark">
</aside>
</div>

<script>
    function deleteUser(id) {
        option = confirm('Bạn có chắc chắn muốn xoá tài khoản này không?');
        if (!option) {
            return;
        }
        $.post('form_api.php', {
            'id': id,
            'action': 'delete'
        }, function(data) {
            location.reload();
        })
    }
</script>

<?php

include_once '../layouts/footer.php';
?>