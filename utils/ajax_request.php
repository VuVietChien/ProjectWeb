<?php
session_start();
include_once('../utils/utility.php');
include_once('../db/database.php');

$action = Utility::getPost('action');
switch ($action) {
    case 'cart':
        addToCart();
        break;

    default:

        break;
}
function addToCart()
{
    $db = new Database();
    $id = Utility::getPost('id');
    $num = Utility::getPost('num');
    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = [];
    }
    $isFind = false;
    for ($i = 0; $i < count($_SESSION['cart']); $i++) {
        if ($_SESSION['cart'][$i]['id'] == $id) {
            $_SESSION['cart'][$i]['num'] += $num;
            $isFind = true;
            break;
        }
    }
    if (!$isFind) {
        $sql = "select Products.*, Categories.name as category_name from Products left join Categories on Products.category_id = Categories.id where Products.id = $id";
        $product = $db->executeResult($sql, true);
        $product['num'] = $num;
        $_SESSION['cart'][] = $product;
    }
}
