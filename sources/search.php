<?php
	$key = $_GET['textsearch'];

	// $sanpham = $d->o_fet("select  * from #_sanpham where hien_thi = 1 and ten_{$_SESSION['lang']} like '%".addslashes($key)."%' order by id desc");

	$sanpham = $d->o_fet("select  * from #_tintuc where hien_thi = 1 and ten_{$_SESSION['lang']} like '%".addslashes($key)."%' order by id desc");

	$name = _ketquatimkiem. " (".count($sanpham).")";
	//if(count($loai) == 0) $d->location(URLPATH."404.html");

    if(isset($_GET['page']) && !is_numeric(@$_GET['page'])) $d->location(URLPATH."404.html");
    
    $curPage = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
    $url= $d->fullAddress();
    $maxR=16;
    $maxP=5;
    $phantrang=$d->phantrang($sanpham, $url, $curPage, $maxR, $maxP,'classunlink','classlink','page');
    $sanpham=$phantrang['source'];
?>
<section>
	<div class="page-title">
		<ul class="breadcrumb">
			<li><a href="<?=URLPATH ?>" title="<?=_trangchu?>"><i class="fa fa-home"></i></a></li>
			<li><a title="<?=_search?>"><?=$name?></a></li>
		</ul>
	</div>
		<!-- Tin tức -->
		<?php foreach ($sanpham  as $i => $item) { ?>
			<div class="item-content-row" >
				<div class="img">
					<a href="<?=URLPATH.$d->create_long_link($item['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" title="<?=@$item['ten_'.$_SESSION['lang']] ?>">
					<img src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$item['hinh_anh']?>&w=150&h=120" alt="<?=@$item['ten_'.$_SESSION['lang']] ?>" onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';">
					</a>
				</div>
				<div class="content">
					<h3 class="name"><a href="<?=URLPATH.$d->create_long_link($item['alias_'.$_SESSION['lang']],$_SESSION['lang']) ?>.html" title="<?=@$item['ten_'.$_SESSION['lang']] ?>"><?=@$item['ten_'.$_SESSION['lang']] ?></a></h3>
					<div class="ngaydang">
		                <i class="fa fa-calendar" aria-hidden="true"></i>Ngày đăng: <?=date('d/m/Y',$item['ngay_dang'])?>
					</div>
					<div class="quote hidden-xs"><?=$d->catchuoi_new(strip_tags($item['mo_ta_'.$_SESSION['lang']]),250) ?></div>
				</div>
			</div>
		<?php } ?>
		<!-- Sản phẩm -->

		<!-- <?php foreach ($sanpham  as $i => $item) { ?>	
			<div class="ar_product col-md-4 col-sm-4 col-xs-6">
				<div class="item-pro mb23">
					<div class="img">
						<a href="<?=URLPATH.$item['alias_'.$_SESSION['lang']] ?>.html" title="<?=$item['ten_'.$_SESSION['lang']] ?>">
							<img onerror="this.src='<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>templates/error/error.jpg&w=262&h=210';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$item['hinh_anh'] ?>&w=262&h=210">				
						</a>
					</div>

					<div class="info">
						<a href="<?=URLPATH.$item['alias_'.$_SESSION['lang']] ?>.html" title="<?=$item['ten_'.$_SESSION['lang']] ?>">
							<h3><?=$item['ten_'.$_SESSION['lang']] ?></h3>
						</a>
						<div class="cart_more">
							<div class="cart_sp" title="Bỏ vào giỏ hàng">
								<form method="post" action="<?=URLPATH."gio-hang.html" ?>">
									<input type="hidden" name="id" value="<?=$item['id'] ?>">
									<button type="submit" name="addcart" class="submit_index">
											<img src="images/giohang.png" alt="giỏ hàng">Giỏ hàng
									</button>
								</form>
							</div>
							<div class="more_sp">
								<a href="<?=URLPATH.$item['alias_'.$_SESSION['lang']] ?>.html" title="<?=$item['ten_'.$_SESSION['lang']] ?>">
									Chi tiết
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>	
		<?php } ?> -->
		<div class="clearfix"></div>
	<?php if(@$phantrang['paging'] <> ''){ ?>
	<div class="pagination-page">
		<?php echo @$phantrang['paging']?>
	</div>
	<?php } ?>
</section>

