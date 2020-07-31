<?php
if (!isset($_SESSION)) {
    session_start();
}
ob_start();
error_reporting(0);
define('_source', './sources/');
define('_lib', './admin_cp/lib/');
@include _lib . "config.php";
@include_once _lib . "function.php";
global $d;
global $lang;
$d = new func_index($config['database']);
date_default_timezone_set('Asia/Ho_Chi_Minh');

if ($_REQUEST['lang']) {
    $_SESSION['lang'] = $_REQUEST['lang'];
    header("Location:" . URLPATH);
} elseif (!isset($_SESSION['lang'])) {
    $_SESSION['lang'] = 'vn';
}
$lang = $_SESSION['lang'];
include _source . "lang.php";
include _source . "language_" . $_SESSION['lang'] . ".php";
include _source . "file_router_index.php";
$row_setting = $d->simple_fetch("select * from #_thongtin limit 0,1");
$url_page = $d->fullAddress();

unset($_SESSION['nav']);
$d->getActive($com, $_SESSION['lang']);

?>
<?php
if (isset($_POST['addcart'])) {
    $id = $_POST['id'];
    $soluong = isset($_POST['soluong']) ? $_POST['soluong'] : 1;
    $detail = $d->simple_fetch("select * from #_sanpham where id={$id}");
    if (!empty($detail)) {
        $id_product = $detail['id'];
        if (isset($_SESSION['cart'][$id_product])) {
            $_SESSION['cart'][$id_product] = $_SESSION['cart'][$id_product] + $soluong;
        } else {
            $_SESSION['cart'][$id_product] = $soluong;
        }
    }
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" class="metaview">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="format-detection" content="telephone=no">
    <base href="<?= URLPATH ?>" />
    <?php
    if (empty($_GET['com']) || $source == 'index') {
        echo '<link rel="canonical" href="' . URLPATH . '" />';
    } else {
        $exp_cal = explode("&", $d->fullAddress());
        $exp_cal = explode("?", $exp_cal[0]);
        echo '<link rel="canonical" href="' . $exp_cal[0] . '" />';
    }
    ?>
    <?php if (strpos($_SERVER['HTTP_HOST'], "phuongnamvina.com") <> null) {  ?>
        <meta name="robots" content="noindex">
        <meta name="googlebot" content="noindex">
    <?php } ?>
    <link href="<?= URLPATH ?>templates/images/favicon.png" rel="shortcut icon" type="image/x-icon" />
    <?php include _source . "seo.php" ?>
    <link href="<?= URLPATH ?>templates/extra/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Build Main CSS -->
    <link href="themes/css/base.css" rel="stylesheet" type="text/css" />
    <link href="themes/css/settings.css" rel="stylesheet" type="text/css" />
    <link href="themes/css/style.css" rel="stylesheet" type="text/css" />
    <link href="themes/css/main.css" rel="stylesheet" type="text/css" />
</head>

<body class="<?php if ($com != '') echo 'module' ?>">
    <div id="full">
        <?php include _source . "header.php"; ?>
        <?php if ($source == 'index') { ?>
            <?php include _source . "slider.php"; ?>
        <?php } ?>
        <div id="container">
            <?php include _source . $source . ".php"; ?>
        </div>
        <?php include _source . "footer.php"; ?>
        
    </div>
    <?php include _source . 'js.php'; ?>
</body>

</html>
<?php $d->disconnect() ?>