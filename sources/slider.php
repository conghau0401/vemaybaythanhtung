<?php  
  $slide = $d->o_fet("select * from #_slide_sp where hien_thi = 1 order by so_thu_tu asc, id desc");
?>

<!-- slider -->
<section class="awe-section-1">
    <section class="rev-slider">
      <ul class="slider-header owl-carousel owl-theme">
        <?php foreach($slide as $i => $value) {?>
            <li>
                <!-- <img src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['hinh_anh']?>&w=1423&h=520" alt="<?=$value['title_'.$lang]?>" /> -->
                <img src="<?=URLPATH ?>img_data/images/<?=$value['hinh_anh']?>" alt="<?=$value['title_'.$lang]?>" />
            </li>
        <?php } ?>
      </ul>
    </section>
  </section>