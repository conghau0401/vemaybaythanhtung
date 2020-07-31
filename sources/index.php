<?php
    $newTour = $d->o_fet("select * from #_sanpham where hien_thi = 1 AND sp_moi=1 order by so_thu_tu asc, id desc");
    $about = $d->simple_fetch("select  * from #_tintuc where hien_thi = 1 and id_loai='272'  order by so_thu_tu asc, id desc");
    $travelguide = $d->o_fet("select  * from #_tintuc where hien_thi = 1 and id_loai='476'  order by so_thu_tu asc, id desc limit 0,5");
    $id_tour = '251'.$d->findIdSub('251');
    $favorite_tour = $d->o_fet("select * from #_category where hien_thi = 1 AND menu=1 AND FIND_IN_SET(id_loai, '".$id_tour."') order by so_thu_tu asc, id desc");
?>
<!-- tour new -->
<section class="awe-section-2">
  <div class="section_tour-new">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="section_tour-new_title">
            <h2>
              <?php if($lang == 'vn') { ?>
                Tour
                <span><?=_moinhat?></span>
              <?php }else { ?>
                <span><?=_moinhat?></span>
                Tour
              <?php } ?>
            </h2>
            <p><?=_sloganNewTour?></p>
          </div>
        </div>
      </div>
      <div class="row">
        <?php foreach($newTour as $key => $value) { ?>
          <div class="col-md-4 col-sm-6 col-xs-6 col-100">
            <div class="product-box">
              <div class="product-thumbnail">
                <a href="<?=$value['alias_'.$lang]?>.html" title="<?=$value['ten_'.$lang]?>">
                  <img onerror="this.src='<?=URLPATH ?>themes/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=600&h=400&zc=2">
                </a>
                <div class="sale-off">
                  <?php
                    $oldPrice = $value['khuyen_mai'];
                    $currentPrice = $value['gia'];
                    echo $percentOff = '-' . round(100 - (($currentPrice * 100) / $oldPrice),1) . '%';
                  ?>
                </div>
              </div>
              <div class="product-info a-left">
                <h3 class="product-name">
                  <a class="line-clamp" href="<?=$value['alias_'.$lang]?>.html" title="<?=$value['ten_'.$lang]?>"><?=$value['ten_'.$lang]?>
                  </a>
                </h3>
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
        <?php } ?>
      </div>
    </div>
  </div>
</section>

<?php  
  $list_tour = $d->o_fet("select * from #_category where hien_thi = 1 AND tieu_bieu=1 AND id_loai=251 order by so_thu_tu asc, id desc");
?>
<?php foreach($list_tour as $key => $value) { 
  $sub_list = $d->o_fet("select * from #_category where hien_thi = 1 AND id_loai='".$value['id']."' order by so_thu_tu asc, id desc");
?>
  <section class="awe-section-<?='3'+$key?>">
    <div class="section_tour-inbound <?=$key>0 ? 'section_tour-outbound' : ''?>">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section_tour-new_title">
              <h2>
                <span><?=$value['ten_'.$lang]?></span>
              </h2>
              <div class="title-line">
                <div class="tl-1"></div>
                <div class="tl-2"></div>
                <div class="tl-3"></div>
              </div>
              <p><?=$value['mo_ta_'.$lang]?>
              </p>
            </div>
          </div>
        </div>
        <div class="row tour-travel-item">
          <div class="col-md-12 e-tabs not-dqtab ajax-tab-1" data-section="ajax-tab-1">
            <div class="content">
              <div>
                <ul class="tabs tabs-title tab-mobile clearfix hidden-sm hidden-md hidden-lg">
                  <li class="prev">
                    <i class="fa fa-angle-left"></i>
                  </li>
                  <li class="tab-link tab-title hidden-sm hidden-md hidden-lg current tab-titlexs" data-tab="tab-1">
                    <span>Miền Trung</span>
                  </li>
                  <li class="next">
                    <i class="fa fa-angle-right"></i>
                  </li>
                </ul>
                <ul class="tabs tabs-title ajax clearfix hidden-xs">
                  <?php foreach ($sub_list as $key => $value1) { ?>
                    <li class="tab-link has-content" data-tab="tab-<?=$key?>">
                      <span><?=$value1['ten_'.$lang]?></span>
                    </li>
                  <?php } ?>
                </ul>
                <?php 
                  $query_id = '';
                  foreach ($sub_list as $key => $value1) {
                    $all_id = $value1['id'].$d->findIdSub($value1['id']);
                    $arrId = explode(',', $all_id);
                    $countArr = count($arrId);
                    $query_id = '';
                    foreach ($arrId as $s => $id) {
                      if($s == 0 && $countArr > 1){
                        $query_id .= ' AND ( FIND_IN_SET('.$id.', id_loai)';
                      }
                      else if($countArr == $s+1){
                        $query_id .= ' OR FIND_IN_SET('.$id.', id_loai) )';
                      }
                      else{
                        $query_id .= ' OR FIND_IN_SET('.$id.', id_loai)';
                      }
                    }
                    
                    if($countArr == 1){
                      $query_id = ' AND FIND_IN_SET('.$id.', id_loai)';
                    }

                    $tourTabs = $d->o_fet("select * from #_sanpham where hien_thi = 1 ".$query_id." order by so_thu_tu asc, id desc");
                  
                  ?>
                  <div class="tab-<?=$key?> <?=$key==0?'current':''?> tab-content">
                    <div class="section-tour-owl products products-view-grid owl-carousel">
                      <?php foreach ($tourTabs as $key => $value2) { ?>
                        <div class="item">
                          <div class="product-box">
                            <div class="product-thumbnail">
                              <a href="<?=$value2['alias_'.$lang]?>.html" title="<?=$value2['ten_'.$lang]?>">
                                <img onerror="this.src='<?=URLPATH ?>themes/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value2['hinh_anh'] ?>&w=600&h=400&zc=2">
                              </a>
                              <div class="sale-off">
                                <?php
                                  $oldPrice = $value2['khuyen_mai'];
                                  $currentPrice = $value2['gia'];
                                  echo $percentOff = '-' . round(100 - (($currentPrice * 100) / $oldPrice),1) . '%';
                                ?>
                              </div>
                            </div>
                            <div class="product-info a-left">
                              <h3 class="product-name">
                                <a class="line-clamp" href="<?=$value2['alias_'.$lang]?>.html" title="<?=$value2['ten_'.$lang]?>"><?=$value2['ten_'.$lang]?>
                                </a>
                              </h3>
                              <div class="clearfix">
                                <div class="box-prices">
                                  <div class="price-box clearfix">
                                    <div class="special-price f-left">
                                      <span class="price product-price"><?=($value2['gia']>0) ? $d->vnd($value2['gia']) :  _lienhe;?></span>
                                    </div>
                                    <?php if($value2['khuyen_mai'] >0 ) { ?>
                                      <div class="old-price">
                                        <span class="price product-price-old">
                                          <?=$d->vnd($value2['khuyen_mai'])?>
                                        </span>
                                      </div>
                                    <?php } ?>
                                  </div>
                                </div>
                                <div class="box-tag">
                                  <ul class="ct_course_list">
                                    <?php
                                      $phuongtien = $value2['phuongtien'];
                                      $move = $d->o_fet("select * from #_phuongtien where hien_thi = 1 and id IN ($phuongtien) order by id asc");
                                    ?>
                                    <?php foreach ($move as $key => $value2) { ?>
                                      <li data-toggle="tooltip" data-placement="top" title="<?=$value2['ten_'.$lang]?>">
                                        <img src="<?=URLPATH ?>img_data/images/<?=$value2['hinh_anh_vn'] ?>" alt="<?=$value2['ten_'.$lang]?>">
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
                      <?php } ?>
                    </div>
                  </div>
                <?php } ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<?php } ?>


<section class="awe-section-5">
  <div class="section_tour-holiday">
    <div class="container">
      <div class="row">
        <div class="col-md-5">
          <div class="video-wrappers padding-top padding-bottom">
            <div class="video-wrapper-title">
              <h5 class="sub-title"><?=_trainghiem?></h5>
              <h2 class="title"><?=$about['ten_'.$lang]?></h2>
              <div class="text"><?=$about['mo_ta_'.$lang]?></div>
            </div>
            <a href="<?=$about['alias_'.$lang]?>.html" class="btn-maincolor"><?=_xemthem?></a>
          </div>
        </div>
        <div class="col-md-7">
          <div class="video-thumbnail">
            <div class="embed-responsive embed-responsive-16by9">
              <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/QdkZmzCSPDQ"
                allowfullscreen></iframe>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="awe-section-6">
  <div class="section_tour-location">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="section_tour-new_title">
            <h2>
              <span><?=_diemden?></span>
            </h2>
            <div class="title-line">
              <div class="tl-1"></div>
              <div class="tl-2"></div>
              <div class="tl-3"></div>
            </div>
            <p><?=_desfavorite?></p>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="section-location-owl owl-carousel owl-theme not-dqowl">
          <?php foreach ($favorite_tour as $key => $value) { ?>
            <div class="item">
              <div class="tourmaster-tour-category-item-wrap">
                <div class="tourmaster-tour-category-thumbnail tourmaster-media-image">
                    <img onerror="this.src='<?=URLPATH ?>themes/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=400&h=480">
                </div>
                <div class="tourmaster-tour-category-overlay"></div>
                <div class="tourmaster-tour-category-overlay-front"></div>
                <div class="tourmaster-tour-category-head">
                  <div class="tourmaster-tour-category-head-display clearfix">
                    <h3 class="tourmaster-tour-category-title">
                      <i class="fa fa-map-marker color-x"></i><?=$value['ten_'.$lang]?>
                    </h3>
                  </div>
                  <div class="tourmaster-tour-category-head-animate">
                    <a class="tourmaster-tour-category-head-link" href="<?=$value['alias_'.$lang]?>.html"><?=_xemthem?></a>
                    <div class="tourmaster-tour-category-head-divider"></div>
                  </div>
                </div>
              </div>
            </div>
          <?php } ?>
      </div>
    </div>
  </div>
</section>


<section class="awe-section-7">
  <section class="section-news margin-bottom-20">
    <div class="container">
      <div class="blogs-content">
        <div class="row">
          <div class="col-md-12">
            <div class="section_tour-new_title">
              <h2><?=_camnangdulich?></h2>
              <div class="title-line">
                <div class="tl-1"></div>
                <div class="tl-2"></div>
                <div class="tl-3"></div>
              </div>
              <p><?=_descamnang?></p>
            </div>
          </div>
        </div>
        <!--  -->
        <div class="news_hot_left">
          <div class="row">
            <div class="news_owl col-lg-6 col-md-6 col-sm-6 col-xs-12 cam-nang-du-lich">
              <div class="item_blog_big">
                <div class="figure-big">
                  <div class="img_thumb_blogs">
                    <a href="<?=$travelguide[0]['alias_'.$lang]?>.html" class="big_img_h">
                      <picture>
                          <img onerror="this.src='<?=URLPATH ?>themes/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$travelguide[0]['hinh_anh'] ?>&w=555&h=370" class="img-responsive center-block">
                      </picture>
                    </a>
                  </div>
                  <div class="content_item_blogs">
                    <div class="blog_home_title margin-top-10 margin-bottom-10">
                      <h3 class="news_home_content_short_info">
                        <a href="<?=$travelguide[0]['alias_'.$lang]?>.html" title="<?=$travelguide[0]['ten_'.$lang] ?>"><?=$travelguide[0]['ten_'.$lang] ?></a>
                      </h3>
                    </div>
                    <div class="content-sum">
                      <?=catchuoi($travelguide[0]['mo_ta_'.$lang],250) ?>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="content-blog-index col-lg-6 col-md-6 col-sm-6 col-xs-12">
              <?php foreach ($travelguide as $key => $value) { ?>
              <?php if($key > 0) { ?>
                <div class="xxx clearfix">
                  <div class="myblog">
                    <div class="item_blog_big">
                      <div class="figure-big">
                        <div class="image-blog-left img_thumb_blogs">
                          <a href="<?=$value['alias_'.$lang]?>.html">
                            <picture>
                              <img onerror="this.src='<?=URLPATH ?>themes/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=160&h=107" class="img-responsive center-block">
                            </picture>
                          </a>
                        </div>
                      </div>
                    </div>
                    <div class="content-right-blog">
                      <div class="title_blog_home">
                        <h3>
                          <a href="<?=$value['alias_'.$lang]?>.html"
                            title="<?=$value['ten_'.$lang]?>"><?=$value['ten_'.$lang]?></a>
                        </h3>
                      </div>
                      <div class="content-sum"> 
                        <?=catchuoi($value['mo_ta_'.$lang],100) ?>
                      </div>
                    </div>
                  </div>
                </div>
              <?php } ?>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</section>