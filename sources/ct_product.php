
<div class="row">
<?php if (count($sanpham) > 0) { ?>
<?php foreach($sanpham as $item) {?>
	<div class="ar_product col-md-4 col-sm-4 col-xs-6">
		<div class="item-pro mb23">
			<div class="img">
				<a href="<?=URLPATH.$item['alias_'.$_SESSION['lang']] ?>.html" title="<?=$item['ten_'.$_SESSION['lang']] ?>">
					<img onerror="this.src='<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>templates/error/error.jpg&w=262&h=210';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$item['hinh_anh'] ?>&w=262&h=210" alt='<?=$item['ten_'.$_SESSION['lang']] ?>'>				
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
									Giỏ hàng
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
<?php } ?>
<?php }else{echo "<div class='note'>"._noidungdangcapnhat."</div>"; }?>
<div class="clear"></div>
</div>