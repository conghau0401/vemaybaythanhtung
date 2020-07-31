<?php
	if($com=='tags') {
		$tags=addslashes($_REQUEST['alias']);
		$query = $d->simple_fetch("select * from #_tags where alias = '$tags'");
		$tintuc = $d->o_fet("select  * from #_tintuc where hien_thi = 1 and alias_{$_SESSION['lang']} like '%".$tags."%' order by so_thu_tu asc, id desc");

	}
	else {
		$loai = $d->simple_fetch("select * from #_category where hien_thi = 1 and alias_{$_SESSION['lang']} = '$com'");

		if(count($loai) == 0) $d->location(URLPATH."404.html");
		$id_sub=substr($d->findIdSub($loai['id'],1),1);
		
		$id_loai=$loai['id'].$d->findIdSub($loai['id']);
		$tintuc = $d->o_fet("select * from #_tintuc where hien_thi = 1 and FIND_IN_SET(id_loai,'$id_loai') <> 0 order by so_thu_tu asc, id desc");
	}

   if(isset($_GET['page']) && !is_numeric(@$_GET['page'])) $d->location(URLPATH."404.html");
  
    $curPage = isset($_GET['page']) ? addslashes($_GET['page']) : 1;
    $url= $d->fullAddress();
    $maxR=9;
    $maxP=5;
    $phantrang=$d->phantrang($tintuc, $url, $curPage, $maxR, $maxP,'classunlink','classlink','page');
    $tintuc=$phantrang['source'];

?>

<section class="bread-crumb margin-bottom-10">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul class="breadcrumb" >
            <li class="home" >
              <a itemprop="item" href="index.php" title="Trang chủ">
                <span itemprop="name">Trang chủ</span>
                <meta itemprop="position" content="1">
              </a>
              <span><i class="fa fa-angle-right"></i></span>
            </li>

            <li itemprop="itemListElement">
              <strong itemprop="name">Giới thiệu</strong>
              <meta itemprop="position" content="2">
            </li>

          </ul>
        </div>
      </div>
    </div>
</section>
<section class="page">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
          <div class="page-title category-title">
            <h1 class="title-head"><a href="#">Giới thiệu</a></h1>
          </div>
          <div class="content-page rte">
		 	 <?=@$tintuc[0]['noi_dung_'.$_SESSION['lang']]?>
          </div>
        </div>
      </div>
    </div>
  </section>

