<?php
if(!defined('_source')) die("Error");
$a = (isset($_REQUEST['a'])) ? addslashes($_REQUEST['a']) : "";
switch($a){
	case "man":
		showdulieu();
		$template = @$_REQUEST['p']."/hienthi";
		break;
	case "add":
		showdulieu();
		$template = @$_REQUEST['p']."/them";
		break;
	case "edit":
		showdulieu();
		$template = @$_REQUEST['p']."/them";
		break;
	case "save":
		luudulieu();
		break;
	case "delete":
		xoadulieu();
		break;
	case "delete_all":
		xoadulieu_mang();
		break;
	default:
		$template = "index";
}

function showdulieu(){

	global $d, $items, $paging,$loai,$soluong;
	if($_REQUEST['a'] == 'man'){
		if(isset($_GET['seach'])){
			$seach = addslashes($_GET['seach']);
			$key = (isset($_GET['key']))? addslashes($_GET['key']):"";
			if($seach == 'id'){
				$items = $d->o_fet("select * from #_question where id = '".$key."'");
			}else{
				$items = $d->o_fet("select * from #_question where ten like '%".$key."%'");
			}
		}
		else  $items = $d->o_fet("select * from #_question order by id desc");

		if(isset($_GET['hienthi'])){
			$maxR= $d->lay_show_hienthi(addslashes($_GET['hienthi']));
		}
		else $maxR=25;
		// phan trang
		$page = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
		$url=$d->fullAddress();
		$maxP=$maxR;
		$paging=$d->phantrang($items, $url, $page, $maxR, $maxP,'classunlink','classlink','page');
		$items=$paging['source'];
		//
	}else{
		//lay noi dung theo id
		if(isset($_REQUEST['id'])){
			@$id = addslashes($_REQUEST['id']);
			$items = $d->o_fet("select * from #_question where id =  '".$id."'");
		}
		$soluong = $loai = $d->o_fet("select * from #_question");
	}

}

function luudulieu(){
	global $d;
	$id = (isset($_REQUEST['id'])) ? addslashes($_REQUEST['id']) : "";

	if($id != '')
	{

		$data['ten'] = addslashes($_POST['ten']);		
		$data['cau_hoi'] = addslashes($_POST['cau_hoi']);
		$data['tra_loi'] = addslashes($_POST['tra_loi']);
		$data['hien_thi'] = isset($_POST['hien_thi']) ? 1 : 0;
		
		$d->setTable('#_question');
		$d->setWhere('id',$id);
		if($d->update($data)){
			$d->redirect("index.php?p=question&a=man&page=".@$_REQUEST['page']."");
		}
		else{
			 $d->transfer("Cập nhật dữ liệu bị lỗi", "index.php?p=question&a=man");
		}
	}
	else
	{
		$data['ten'] = addslashes($_POST['ten']);		
		$data['cau_hoi'] = addslashes($_POST['cau_hoi']);
		$data['tra_loi'] = addslashes($_POST['tra_loi']);
		$data['hien_thi'] = isset($_POST['hien_thi']) ? 1 : 0;

		$d->setTable('#_question');
		if($d->insert($data))
		{
			$d->redirect("index.php?p=question&a=man");
		}
		else{
			 $d->transfer("Thêm dữ liệu bị lỗi!", "index.php?p=question&a=man");
		}
	}
}

function xoadulieu(){
	global $d;
	if(isset($_GET['id'])){
		$id =  addslashes($_GET['id']);

		$d->reset();
		$d->setTable('#_question');
		$d->setWhere('id',$id);
		if($d->delete()){
			$d->redirect("index.php?p=question&a=man&page=".@$_REQUEST['page']."");
		}else{
			$d->transfer("Xóa dữ liệu bị lỗi", "index.php?p=question&a=man");
		}
	}else $d->transfer("Không nhận được dữ liệu", "index.php?p=question&a=man");
}

function xoadulieu_mang(){
	global $d;
	if(isset($_POST['chk_child'])){
		$chuoi = "";
		foreach ($_POST['chk_child'] as $val) {
			$chuoi .=$val.',';
		}
		$chuoi = trim($chuoi,',');
		//lay danh sách idsp theo chuoi
		$hinhanh = $d->o_fet("select * from #_question where id in ($chuoi)");
		if($d->o_que("delete from #_question where id in ($chuoi)")){

			$d->redirect("index.php?p=question&a=man&page=".@$_REQUEST['page']."");
		}
		else $d->transfer("Xóa dữ liệu bị lỗi", "index.php?p=question&a=man");
	}else $d->redirect("index.php?p=question&a=man&page=".@$_REQUEST['page']."");
}
?>