    <?php
        $query=$d->simple_fetch("select * from #_category where alias_{$_SESSION['lang']}='$com'");
        $id_loai=$query['id'];
        $all_id=$id_loai.$d->findIdSub($id_loai);

        // if($d->findIdSub($id_loai)!='') {
        //     $nav_child=$d->o_fet("select * from #_category where id_loai=$id_loai and hien_thi=1 order by so_thu_tu asc, id desc");
        // }
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

        $sanpham = $d->o_fet("select * from #_sanpham where hien_thi = 1 and style=0 ".$query_id." order by so_thu_tu asc, id desc");

        if($id_loai == '') $d->location(URLPATH."404.html");

        if(isset($_GET['page']) && !is_numeric(@$_GET['page'])) $d->location(URLPATH."404.html");

        $curPage = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
        $url= $d->fullAddress();
        $maxR= 16;
        $maxP=5;
        $phantrang=$d->phantrang($sanpham, $url, $curPage, $maxR, $maxP,'classunlink','classlink','page');
        $sanpham=$phantrang['source'];
        
        $link=explode("?",$d->fullAddress());
        $vari=explode("&",$link[1]);
        $search=array();
        foreach($vari as $item) {
        $str=explode("=",$item);
        $search["$str[0]"]=$str[1];
        }$and = "";
    ?>



    <section class="bread-crumb margin-bottom-10">
        <div class="container">
        <div class="row">
            <div class="col-xs-12">
            <ul class="breadcrumb">
                <li class="home">
                <a itemprop="item" href="index.php" title="Trang chủ">
                    <span itemprop="name">Trang chủ</span>
                    <meta itemprop="position" content="1">
                </a>
                <span><i class="fa fa-angle-right"></i></span>
                </li>
                <li itemprop="itemListElement">
                <strong itemprop="name"><?=$query['ten_'.$lang]?></strong>
                <meta itemprop="position" content="2">
                </li>
            </ul>
            </div>
        </div>
        </div>
    </section>

    <div class="container">
        <div class="row">
        <section class="main_container collection col-md-12 tour-grid">
            <h1 class="title-head margin-top-0 margin-bottom-30 text-center"><?=$query['ten_'.$lang]?></h1>
            <div class="category-products products">
            <section class="products-view products-view-grid">
                <div class="row">
                    <?php foreach($sanpham as $key => $value) { ?>
                        <div class="col-100 col-xs-6 col-sm-4 col-lg-3">
                            <div class="product-box">
                            <div class="product-thumbnail">
                                <a href="<?=$value['alias_'.$lang]?>.html" title="<?=$value['ten_'.$lang]?>">
                                    <img onerror="this.src='<?=URLPATH ?>themes/error/error.jpg';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh'] ?>&w=600&h=400&zc=2">
                                </a>
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
                
                <div class="pagination-page">
                    <?php echo @$phantrang['paging']?>
                </div>
            </section>
            </div>
        </section>
        </div>
    </div>
