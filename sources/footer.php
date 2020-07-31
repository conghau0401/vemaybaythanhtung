<?php
    $textfooter = $d->getTemplates(28);
    $list_tour_footer = $d->o_fet("select * from #_category where hien_thi = 1 AND tieu_bieu=1 AND id_loai=251 order by so_thu_tu asc, id desc limit 0,2");
?>

<footer class="footer">
    <div class="site-footer">
      <div class="container">
        <div class="footer-inner padding-top-25 padding-bottom-10">
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4">
              <div class="footer-widget foote-contact-box">
                <h3>
                  <span>Liên hệ</span>
                </h3>
                <div class="footer-widget-content">
                  <div class="icon">
                    <img src="themes/img/fot_hotline.svg"
                      alt="Liên hệ" />
                  </div>
                  <div class="info">
                    <p class="questions"><?=_hotro?></p>
                    <p class="phone">
                      Hotline:<a href="tel:<?=$row_setting['hotline']?>"><?=$row_setting['hotline']?></a>
                    </p>
                    <p class="mail">
                      <a href="mailto:<?=$row_setting['email']?>"><?=$row_setting['email']?></a>
                    </p>
                    <p class="address">
                        <?=$row_setting['address_'.$lang]?>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-3">
              <div class="footer-widget">
                <h3>
                  <span><?=$row_setting['company_'.$lang]?></span>
                </h3>
                <ul class="list-menu">
                    <?php foreach ($nav as $key => $value) { ?>
                        <li>
                            <a href="<?=$value1['alias_'.$lang]?>.html"><?=$value['ten_'.$lang]?></a>
                        </li>
                    <?php } ?>
                </ul>
              </div>
            </div>
            <?php foreach ($list_tour_footer as $key => $value) { 
                $sub_list_footer = $d->o_fet("select * from #_category where hien_thi = 1 AND id_loai='".$value['id']."' order by so_thu_tu asc, id desc limit 0,6");
            ?>
                <div class="col-xs-12 col-sm-4 col-md-2">
                    <div class="footer-widget">
                        <h3>
                        <span><?=$value['ten_'.$lang]?></span>
                        </h3>
                        <ul class="list-menu">
                            <?php foreach ($sub_list_footer as $key => $value1) { ?>
                                <li>
                                    <a href="<?=$value1['alias_'.$lang]?>.html"><?=$value1['ten_'.$lang]?></a>
                                </li>
                        <?php } ?>
                        </ul>
                    </div>
                </div>
            <?php } ?>
          </div>
        </div>
      </div>
    </div>
    <div class="copyright clearfix">
      <div class="container">
        <div class="inner clearfix">
          <div class="row">
            <div class="col-sm-12 text-center">
              <span>© Bản quyền thuộc về
                <b>Toad Travel</b>
                <span class="s480-f">|</span> Cung cấp bởi
                <a href="http://laotama.com/" title="laotama" target="_blank" rel="nofollow">Thanh Tùng</a>
              </span>
            </div>
          </div>
        </div>
        <div class="back-zalo">
          <a target="_blank" href="http://zalo.me/0968 24 08 96" title="Chat qua Zalo">
            <span class="ti-zalo"></span>
          </a>
        </div>
        <div class="back-hotline">
          <button type="button" data-toggle="modal" data-target="#hotlineModal">
            <i class="fa fa-phone"></i>
          </button>
        </div>
        <div class="back-to-top">
          <i class="fa fa-arrow-circle-up"></i>
        </div>
      </div>
    </div>
  </footer>