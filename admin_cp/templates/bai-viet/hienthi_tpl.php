<ol class="breadcrumb">
  <li><a href="<?=urladmin ?>"><i class="glyphicon glyphicon-home"></i> Trang chủ</a></li>
  <li class="active"><a href="<?=urladmin ?>">Danh mục</a></li>
  <li class="active"><a href="<?=urladmin ?>index.php?p=bai-viet&a=man">Bài viết</a></li>
</ol>

<div class="col-xs-12">
<div class="form-group">
	<div class="btn-group">
		<select id="action" name="action" onclick="form_submit(this)" class="form-control">
			<option selected>Tác vụ</option>
			<option value="delete">Xóa</option>
		</select>
	</div>

	<div class="btn-group">
		<input id="search" name="search" type="text" class="form-control" placeholder="Tìm kiếm"/>
	</div>
	<div class="btn-group">
		<select id="action" onchange="seach(this,'bai-viet')" name="action" class="form-control">
			<option value="0" selected>Tìm theo</option>
			<option value="1">ID</option>
			<option value="2">Tên</option>
		</select>
	</div>
	<script type="text/javascript">
	    jQuery(document).ready(function($) {
	        $('input#search').keypress(function (e) {
	         var key = this.value;
	           if (e.which == 13) {
	             window.location = "index.php?p=bai-viet&a=man&seach=name&key="+key;
	           }
	        });        
	    }); 
	</script>
	<div class="btn-group">
		<select id="action" onchange="show(this,'bai-viet')" name="action" class="form-control">
			<option value="0" selected>Số hiển thị</option>
			<option value="1">15</option>
			<option value="2">25</option>
			<option value="3">50</option>
			<option value="4">75</option>
			<option value="5">100</option>
			<option value="6">200</option>
			<option value="7">300</option>
		</select>
	</div>
	<div class="btn-group">
		<select id="action" onchange="loc_tin(this,'bai-viet')" name="action" class="form-control">
			<option value="0" selected>Xem tất cả bài viết</option>
			<?=$loai?>
		</select>
	</div>
	<a href="index.php?p=bai-viet&a=add" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-plus"></i> Thêm mới</a>
</div>

<form id="form" method="post" action="index.php?p=bai-viet&a=delete_all" role="form">

<table class="table table-bordered table-hover">
	<thead>
		<tr>
			<th style="width:3%"><input class="chk_box checkall" type="checkbox" name="chk" value="0"  id="check_all"></th>
			<th style="width:4%">STT</th>
			<th style="width:17%; text-align:left">Danh mục</th>
			<th style="width:18%; text-align:left">Bài viết</th>
			<th style="width:8%">IMG</th>
			<th style="width:12%">Cập nhật</th>
            <!-- <th style="width:7%">Tiêu biểu</th> -->
			<th style="width:7%">Nổi bật</th>
			<th style="width:7%">Hiển thị</th>
			<th style="width:7%">Tác vụ</th>
		</tr>
	</thead>
	<tbody>
		<?php $count=count($items); for($i=0; $i<$count; $i++){ ?>
		<tr>
			<td>
				<input class="chk_box" type="checkbox" name="chk_child[]" value="<?=$items[$i]['id']?>">
			</td>
			<td><input type="number" value="<?=$items[$i]['so_thu_tu']?>" class="a_stt" data-table="#_tintuc" data-col="so_thu_tu" data-id="<?=$items[$i]['id']?>" /></td>


			<td style="text-align:left">
				<?php 
					$query = $d->simple_fetch("select * from #_category where id={$items[$i]['id_loai']}");					
					$str = ""; for($k=0;$k<$query['level'];$k++) { $str.="= "; }	
					echo $str.$query['ten_vn'] 
				
				?>
			</td>
			<td style="text-align:left">
				<a href="index.php?p=bai-viet&a=edit&id=<?=$items[$i]['id']?>&page=<?=@$_GET['page']?>"><?=$items[$i]['ten_vn']?></a>
			</td>
			<td>
				<?=($items[$i]['hinh_anh'] <> '')?"<img src='".URLPATH."thumb.php?src=".URLPATH."img_data/images/".$items[$i]['hinh_anh']."&w=60&h=40&zc=2'>":"<img src='".URLPATH."thumb.php?src=".URLPATH."images/no-image.png&w=40&h=40&zc=2'>";?>
			</td>
			<!-- <td><?=$items[$i]['so_thu_tu']?></td> -->
			<td><?=date('d-m-Y h:i:s', $items[$i]['ngay_dang']) ?></td>
            <!-- <td>
				<input class="chk_box" type="checkbox" onclick="on_check(this,'#_tintuc','tieu_bieu','<?=$items[$i]['id']?>')" <?php if($items[$i]['tieu_bieu'] == 1) echo 'checked="checked"'; ?>>
			</td> -->
			<td>
				<input class="chk_box" type="checkbox" onclick="on_check(this,'#_tintuc','noi_bat','<?=$items[$i]['id']?>')" <?php if($items[$i]['noi_bat'] == 1) echo 'checked="checked"'; ?>>
			</td>
			
			<td>
				<input class="chk_box" type="checkbox" onclick="on_check(this,'#_tintuc','hien_thi','<?=$items[$i]['id']?>')" <?php if($items[$i]['hien_thi'] == 1) echo 'checked="checked"'; ?>>
			</td>
			<td>
				<a href="index.php?p=bai-viet&a=edit&id=<?=$items[$i]['id']?>&page=<?=@$_GET['page']?>&loaitin=<?=@$_GET['loaitin']?>" class="text-danger" title="Sửa"><i class="glyphicon glyphicon-edit"></i></a>&nbsp;&nbsp;&nbsp;
				<a href="index.php?p=bai-viet&a=delete&id=<?=$items[$i]['id']?>&page=<?=@$_GET['page']?>&loaitin=<?=@$_GET['loaitin']?>" onClick="if(!confirm('Xác nhận xóa?')) return false;" class="text-danger" title="Xóa"><i class="glyphicon glyphicon-remove"></i></a>
			</td>
		</tr>
		<?php } ?>
	</tbody>
</table>
</form>
</div>
<div class="pagination">
  <?php echo @$paging['paging']?>
</div>
<script type="text/javascript">
function loc_tin (obj,tenp) {
	var show = $(obj).val();
	window.location.href = "index.php?p="+tenp+"&a=man&loaitin="+show;
}
</script>