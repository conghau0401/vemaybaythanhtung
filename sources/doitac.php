<?php  $doitac=$d->getImg(466); ?>
<div class="center">
  <div id="doitac">
      <div class="title-doitac"><h3>Khách hàng của chúng tôi</h3></div>
      <div class="slick_doitac">
        <?php foreach ($doitac as $key => $value) { ?>
            <div>
                <div class="item_doitac">
                    <a href="<?=$value['link']?>" target='_blank' title='<?=$value['title_'.$lang] ?>'>
                        <img onerror="this.src='<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>templates/error/error.jpg&w=212&h=128&zc=2';"  src="<?=URLPATH ?>thumb.php?src=<?=URLPATH ?>img_data/images/<?=$value['picture'] ?>&w=212&h=128&zc=2" alt='<?=$value['title_'.$lang] ?>'>
                        <h3><?=$value['title_'.$lang] ?></h3>
                    </a>
                </div>
            </div>
        <?php } ?>
      </div>
  </div>
</div>