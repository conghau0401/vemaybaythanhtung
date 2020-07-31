<?php
	// $property=explode('@1@',$ctsp[0]['property']);
	// if(count($ctsp) == 0) $d->location(URLPATH."404.html");

	// $sanpham = $d->o_fet("select * from #_sanpham where hien_thi = 1  and id <> '".@$ctsp[0]['id']."' and id_loai = '".@$ctsp[0]['id_loai']."' order by id desc limit 0,16");
	
	$ctsp = $d->o_fet("select * from #_sanpham where hien_thi = 1 and alias_".$_SESSION['lang']." = '".$com."'");
	$hinh_anh_sp = $d->o_fet("select * from #_sanpham_hinhanh where id_sp = '".@$ctsp[0]['id']."' order by id desc");
	$phuongtien = $d->o_fet("select * from #_phuongtien where hien_thi = 1 and FIND_IN_SET(id, '".$ctsp[0]['phuongtien']."') order by id desc");
    $tourgoiy = $d->o_fet("select * from #_sanpham where hien_thi = 1 AND tieu_bieu=1 order by so_thu_tu asc, id desc");

?>

<section class="bread-crumb margin-bottom-10">
	<div class="container">
	<div class="row">
		<div class="col-xs-12">
		<ul class="breadcrumb">
			<li class="home">
				<a href="<?=URLPATH ?>" title="<?=_trangchu?>">
					<span><i class="fa fa-home"></i></span>
				</a>
				<span><i class="fa fa-angle-right"></i></span>
			</li>
			<li>
				<a href="<?=$ctsp[0]['alias_'.$lang]?>.html" title="<?=$ctsp[0]['ten_'.$lang]?>">
					<span><?=$ctsp[0]['ten_'.$lang]?></span>
				</a>
			</li>

		</ul>
		</div>
	</div>
	</div>
</section>
<section class="product p-multiple" itemscope="" itemtype="http://schema.org/Product">
	<div class="container">
		<div class="row">
		<div class="col-lg-12 details-product">
			<div class="row margin-bottom-10 margin-bottom-20">
				<div class="col-md-6">
					<div id="sync1" class="owl-carousel owl-theme not-dqowl">
						<div class="item">
							<img onerror="this.src='<?=URLPATH ?>themes/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$ctsp[0]['hinh_anh'] ?>&w=555&h=370">
						</div>
						<?php foreach ($hinh_anh_sp as $key => $value) { ?>
							<div class="item">
								<img onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=555&h=370">
							</div>
						<?php } ?>
					</div>
					<div id="sync2" class="owl-carousel owl-theme not-dqowl">
						<?php if (count($hinh_anh_sp)>0) { ?>
							<div class="item">
							<img onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$ctsp[0]['hinh_anh'] ?>&w=100&h=70">
							</div>
						<?php } ?>
						<?php foreach ($hinh_anh_sp as $key => $value) { ?>
							<div class="item">
								<img onerror="this.src='<?=URLPATH ?>templates/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=100&h=70">
							</div>
						<?php } ?>
					</div>
				</div>
				<div class="col-md-6">
					<div class="details-pro">
					<h1 class="title-head"><?=$ctsp[0]['ten_'.$lang]?></h1>
					<!-- <div class="journey">
						<span>Hành trình:</span> Hồ Chí Minh - Mỹ
					</div> -->
					<ul class="ct_course_list">
						<?php foreach($phuongtien as $key => $value) { ?>
							<li>
								<div class="ulimg">
									<img src="<?=URLPATH ?>img_data/images/<?=$value['hinh_anh_vn'] ?>" alt="<?=$value['ten_'.$lang]?>" title="<?=$value['ten_'.$lang]?>">
								</div>
								<?=_dichuyenbang?> <?=$value['ten_'.$lang]?>
							</li>
						<?php } ?>
						<li>
							<div class="ulimg"><img src="themes/img/tag_icon_4.svg" alt="<?=$ctsp[0]['khoihanh_'.$lang]?>"></div>
							<span id="date-khoi-hanh"><?=$ctsp[0]['khoihanh_'.$lang]?></span>
						</li>
						<li>
							<div class="ulimg"><img src="themes/img/tag_icon_5.svg" alt="6 ngày 5 đêm"></div>
							<?=$ctsp[0]['ngay']?> <?=_ngay?> <?=$ctsp[0]['dem']?> <?=_dem?>
						</li>
					</ul>
					<div class="product-summary product_description margin-bottom-10 margin-top-5">
						<div class="rte description">
							<?=$ctsp[0]['mo_ta_'.$lang]?>
						</div>
					</div>

					<div class="call-me-back">
						<ul class="row">
							<li class="col-md-6 col-sm-6 col-xs-6 col-100">
								<a href="#book-tour-now" title="<?=_dattour?>" class="icon-mouse-scroll">
									<i class="fa fa-paper-plane" aria-hidden="true"></i> <?=_dattour?>
								</a>
							</li>
							<li class="col-md-6 col-sm-6 col-xs-6 col-100">
								<button class="btn-callmeback" type="button" data-toggle="modal" data-target="#myModal">
									<i class="fa fa-phone" aria-hidden="true"></i> <?=_call?>
								</button>
							</li>
						</ul>
					</div>
					</div>
				</div>
			</div>
			<div class="row" id="book-tour-now">
				<div class="col-xs-12 col-sm-12 col-md-7 details-pro">
					<div class="form-product">
					<form>
						<div class="pd_tour_variants clearfix">
						<ul class="pd_variants_title nostyled ohidden clearfix">
							<li class="col-xs-4">
								<?=_loaikhach?>
							</li>
							<li class="col-xs-2 col-xss-4 noleftpadding norightpadding">
								<?=_soluong?>
							</li>
							<li class="col-xs-3 col-xss-4 text-right">
								<?=_dongia?>
							</li>
							<li class="col-xs-3 hidden-xss text-right">
								<?=_tonggia?>
							</li>
						</ul>
						<div class="pd_variants_content clearfix">
							<ul class="nostyled variant_list clearfix" id="16258437">
							<li class="col-xs-4 variant_title">
								<div class="variant_mutiple" title="<?=_nguoilon?>"><?=_nguoilon?></div>
								<!-- <span class="stock-multiple block">(Chỉ còn <strong>1</strong> chỗ)</span> -->
							</li>
							<li class="col-xs-2 col-xss-4 norightpadding noleftpadding">
								<div class="quantity product-quantity clearfix">
									<button type="button" class="minus">
										<i class="fa fa-angle-down"></i>
									</button>
									<input max="1" type="number" step="1" min="1" name="quantity" value="1" title="Số lượng"
										class="qty" size="4" id="quantity-0" disabled="">
									<button type="button" value="+" class="plus">
										<i class="fa fa-angle-up"></i>
									</button>
								</div>
							</li>
							<li class="col-xs-3 col-xss-4 text-right variant_price">
								<?=($ctsp[0]['gia']>0) ? $d->vnd($ctsp[0]['gia']) :  _lienhe;?>
								<input type="hidden" name="variant_price" value="<?=$ctsp[0]['gia']?>">
							</li>
							<li class="col-xs-3 hidden-xss subtotal text-right"><?=$d->vnd($ctsp[0]['gia'])?></li>
							</ul>
							<ul class="nostyled variant_list clearfix" id="16258438">
							<li class="col-xs-4 variant_title">
								<div class="variant_mutiple" title="<?=_treem?>"><?=_treem?></div>
							</li>
							<li class="col-xs-2 col-xss-4 norightpadding noleftpadding">
								<div class="quantity product-quantity clearfix">
									<button type="button" class="minus">
										<i class="fa fa-angle-down"></i>
									</button>
									<input type="number" step="1" min="1" name="quantity" value="0" title="Số lượng" class="qty"
										size="4" id="quantity-1" disabled="">
									<button type="button" value="+" class="plus">
										<i class="fa fa-angle-up"></i>
									</button>
								</div>
							</li>
							<li class="col-xs-3 col-xss-4 text-right variant_price">
								<?=($ctsp[0]['gia_treem']>0) ? $d->vnd($ctsp[0]['gia_treem']) :  _lienhe;?>
								<input type="hidden" name="variant_price" value="44000000.0000">
							</li>
							<li class="col-xs-3 hidden-xss subtotal text-right"><?=$d->vnd($ctsp[0]['gia_treem'])?></li>
							</ul>
							<ul class="nostyled variant_list clearfix" id="16258439">
							<li class="col-xs-4 variant_title">
								<div class="variant_mutiple" title="<?=_embe?>"><?=_embe?></div>
							</li>
							<li class="col-xs-2 col-xss-4 norightpadding noleftpadding">
								<div class="quantity product-quantity clearfix">
								<input type="hidden" value="16258439" name="variantId" id="variant-2">
								<button type="button" class="minus">
									<i class="fa fa-angle-down"></i>
								</button>
								<input type="number" step="1" min="1" name="quantity" value="0" title="Số lượng" class="qty"
									size="4" id="quantity-2" disabled="">
								<button type="button" value="+" class="plus">
									<i class="fa fa-angle-up"></i>
								</button>
								</div>
							</li>
							<li class="col-xs-3 col-xss-4 text-right variant_price">
								<?=$d->vnd($ctsp[0]['gia_embe'])?>
								<input type="hidden" name="variant_price" value="<?=$ctsp[0]['gia_embe']?>">
							</li>
							<li class="col-xs-3 hidden-xss subtotal text-right"><?=$d->vnd($ctsp[0]['gia_embe'])?></li>
							</ul>
							<div class="totalPrice ohidden text-right clearfix">
							<span class="col-md-8 col-sm-9">
								<?=_tongtien?>
							</span>
							<?php  
								$total_price = $ctsp[0]['gia_embe'] + $ctsp[0]['gia_treem'] + $ctsp[0]['gia'];
							?>
							<strong class="col-md-4 col-sm-3" data-price="<?=$total_price?>"><?=$d->vnd($total_price)?></strong>
							</div>
						</div>
						</div>
						<div class="row contact_btn_group">
						<div class="col-md-6 col-sm-7 col-xs-6 col-100">
							<div class="line-item-property__field">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
								<input required="" class="required tourmaster-datepicker hasDatepicker" id="datesss"
								name="properties[Ngày đi]" type="text" placeholder="<?=_chonngaydi?>"
								data-date-format="dd MM yyyy" readonly="readonly">
							</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-5 add-to-cart col-xs-6 col-100">
							<button type="submit" id="submit-table"
							class="pull-right btn btn-default buynow add-to-cart button nomargin">
							<i class="fa fa-paper-plane" aria-hidden="true"></i> Đặt tour
							</button>
						</div>
						</div>
						<div class="alert alert-warning alert-dismissible margin-top-20 hidden" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
							aria-hidden="true">×</span></button>
						Vui lòng liên hệ <strong><a href="tel:0982362509">0982 362 509</a></strong> để đặt Tour.
						</div>
					</form>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-5 tour-policy">
					<div class="tour-policy-content">
					<?php if($ctsp[0]['chinhsach_'.$lang] == '') { ?>
						<div class="main-project__tab--content tour-no-content">
							<div class="product-promotions-list">
							<h2 class="product-promotions-list-title"><?=_chinhsachtour?></h2>
							<div class="product-promotions-list-content">
								Chính sách đang được cập nhật.
							</div>
							</div>
						</div>
					<?php }else{ ?>
						<div class="main-project__tab--content">
							<div class="product-promotions-list">
							<h2 class="product-promotions-list-title"><?=_chinhsachtour?></h2>
							<div class="product-promotions-list-content">
								<?=$ctsp[0]['chinhsach_'.$lang]?>
							</div>
							</div>
						</div>
					<?php } ?>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-9 margin-top-15 margin-bottom-10">
					<div class="tour-tab-title">
						<?=_lichtrinhtour?>
					</div>
					<div class="product-tab">
						<?=$ctsp[0]['thong_tin_'.$lang]?>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
					<div class="right_module">
						<div class="similar-product">
							<div class="right-bestsell clearfix">
								<h2><?=_tourgoiy?></h2>
								<div class="list-bestsell clearfix">
									<?php foreach ($tourgoiy as $key => $value) { ?>
										<div class="list-bestsell-item">
											<div class="thumbnail-container clearfix">
												<div class="product-image">
													<a href="<?=$value['alias_'.$lang]?>.html">
														<img onerror="this.src='<?=URLPATH ?>themes/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=600&h=400">
													</a>
												</div>
												<div class="product-meta">
												<h3><a href="<?=$value['alias_'.$lang]?>.html" title="<?=$value['ten_'.$lang]?>"><?=$value['ten_'.$lang]?></a></h3>
												<div class="product-price-and-shipping">
													<span class="price"><?=($value['gia']>0) ? $d->vnd($value['gia']) :  _lienhe;?></span>
													<span class="regular-price"><?=$d->vnd($value['khuyen_mai'])?></span>
												</div>
												</div>
											</div>
										</div>
									<?php } ?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="related-product margin-bottom-30">
			<div class="section_tour-new_title">
				<h2>
					<?php if($lang == 'vn') { ?>
						Tour
						<span><?=_lienquan?></span>
					<?php }else { ?>
						<span><?=_lienquan?></span>
						Tour
					<?php } ?>
				</h2>
				<div class="title-line">
				<div class="tl-1"></div>
				<div class="tl-2"></div>
				<div class="tl-3"></div>
				</div>
			</div>
			<div class="section-tour-owls-rela owl-carousel owl-theme not-dqowl">
				<div class="product-box">
					<div class="product-thumbnail">
						<a href="<?=$value['alias_'.$lang]?>.html">
							<img onerror="this.src='<?=URLPATH ?>themes/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=600&h=400">
						</a>
						<div class="sale-off">- 9%</div>
					</div>
					<div class="product-info a-left">
						<h3 class="product-name"><a class="line-clamp" href="/du-lich-phap-bi-ha-lan-hoi-hoa-tulip-keukenhof"
							title="<?=$value['ten_'.$lang]?>"><?=$value['ten_'.$lang]?></a></h3>
						<div class="clearfix">
						<div class="box-prices">
							<div class="price-box clearfix">
							<div class="special-price f-left">
								<span class="price product-price"><?=($value['gia']>0) ? $d->vnd($value['gia']) :  _lienhe;?></span>
							</div>
							<?php if($value['khuyen_mai'] >0 ) { ?>
							<div class="old-price">
								<span class="price product-price-old">
								<?=$d->vnd($value['khuyen_mai'])?>
								</span>
							</div>
							<?php } ?>
						</div>
						</div>
						<div class="box-tag">
						<ul class="ct_course_list">
							<?php
							$phuongtien = $value['phuongtien'];
							$move = $d->o_fet("select * from #_phuongtien where hien_thi = 1 and id IN ($phuongtien) order by id asc");
							?>
							<?php foreach ($move as $key => $value1) { ?>
							<li data-toggle="tooltip" data-placement="top" title="<?=$value1['ten_'.$lang]?>">
								<!-- <img onerror="this.src='<?=URLPATH ?>themes/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value1['hinh_anh_vn'] ?>&w=100&h=100&zc=2"> -->
								<img src="<?=URLPATH ?>img_data/images/<?=$value1['hinh_anh_vn'] ?>" alt="<?=$value1['ten_'.$lang]?>">
							</li>
							<?php } ?>
						</ul>
						</div>
						</div>
						<div class="box-date-tour">
							<ul class="ct_course_list">
							<li class="clearfix">
								<div class="ulimg">
								<img src="themes/img/tag_icon_4.svg" alt="<?=$value['khoihanh_'.$lang]?>" />
								</div> <?=_khoihanh?>: <?=$value['khoihanh_'.$lang]?>
							</li>
							<li class="clearfix">
								<div class="ulimg">
								<img src="themes/img/tag_icon_5.svg" alt="<?=$value['thoigian_'.$lang]?>" />
								</div> <?=_thoigian?>: <?=$value['ngay']?> <?=_ngay?> <?=$value['dem']?> <?=_dem?>
							</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
