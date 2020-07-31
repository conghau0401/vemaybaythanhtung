<?php  
    $nav=$d->o_fet("select * from #_category where tieu_bieu=1 and hien_thi=1 order by so_thu_tu asc, id desc");
?>

<nav>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul id="nav" class="nav container">
                    <li class="nav-item"><a href=""><?=_trangchu?></a></li>
                    <?php foreach ($nav as $key => $value) { ?>
                        <?php $sub1=$d->o_fet("select * from #_category where id_loai={$value['id']} and hien_thi=1 order by so_thu_tu asc, id desc"); ?>
                        <li class="nav-item">
                            <a href="<?=URLPATH.$d->create_long_link($value['alias_'.$lang],$lang) ?>.html" title="<?=$value['ten_'.$lang]?>" class="nav-link">
                                <?=$value['ten_'.$lang]?>
                                <?php if(count($sub1)>0) { ?>
                                    <i class="fa fa-angle-right" data-toggle="dropdown"></i>
                                <?php } ?>
                            </a>
                            <?php if (count($sub1)>0) { ?>
                            <ul class="dropdown-menu">
                                <?php foreach ($sub1 as $key => $value1) { ?>
                                    <?php $sub2=$d->o_fet("select * from #_category where id_loai={$value1['id']} and hien_thi=1 order by so_thu_tu asc, id desc"); ?>
                                    <li class="dropdown-submenu nav-item-lv2">
                                        <a class="nav-link" href="<?=URLPATH.$d->create_long_link($value1['alias_'.$lang],$lang) ?>.html" title="<?=$value1['ten_'.$lang]?>">
                                            <?=$value1['ten_'.$lang]?>
                                            <?php if(count($sub2)>0) { ?>
                                                <i class="fa fa-angle-right" data-toggle="dropdown"></i>
                                            <?php } ?>
                                        </a>
                                        <?php if (count($sub2)>0) { ?>
                                        <ul class="dropdown-menu">
                                            <?php foreach ($sub2 as $key => $value2) { ?>
                                                <li class="nav-item-lv3">
                                                    <a class="nav-link" href="<?=URLPATH.$d->create_long_link($value2['alias_'.$lang],$lang) ?>.html" title="<?=$value2['ten_'.$lang]?>">
                                                        <?=$value2['ten_'.$lang]?>
                                                    </a>
                                                </li>
                                            <?php } ?>
                                        </ul>
                                        <?php } ?>
                                    </li>
                                <?php } ?>
                            </ul>
                            <?php } ?>
                        </li>
                    <?php } ?>
                    <!-- <li class="nav-item active">
                        <a class="nav-link" href="/">Trang chủ</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="/gioi-thieu">Giới thiệu</a>
                    </li>
                    <li class="nav-item  has-mega">
                        <a href="/tour-trong-nuoc" class="nav-link">Tour trong nước
                            <i class="fa fa-angle-right" data-toggle="dropdown"></i>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a href="/tour-nuoc-ngoai" class="nav-link">Tour nước ngoài
                            <i class="fa fa-angle-right" data-toggle="dropdown"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-submenu nav-item-lv2">
                                <a class="nav-link" href="/du-lich-chau-a">Du lịch Châu Á
                                    <i class="fa fa-angle-right"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-bhutan">Du lịch Bhutan</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-nhat-ban">Du lịch Nhật Bản</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-han-quoc">Du lịch Hàn Quốc</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-singapore">Du lịch Singapore</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-malaysia">Du lịch Malaysia</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu nav-item-lv2">
                                <a class="nav-link" href="/du-lich-chau-au">Du lịch Châu Âu
                                    <i class="fa fa-angle-right"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-phap">Du lịch Pháp</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-bi">Du lịch Bỉ</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-ha-lan">Du lịch Hà Lan</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-duc">Du lịch Đức</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu nav-item-lv2">
                                <a class="nav-link" href="/du-lich-chau-uc">Du lịch Châu Úc
                                    <i class="fa fa-angle-right"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-new-zealand">Du lịch New Zealand</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-uc">Du lịch Úc</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu nav-item-lv2">
                                <a class="nav-link" href="/du-lich-chau-my">Du lịch Châu Mỹ
                                    <i class="fa fa-angle-right"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-my">Du lịch Mỹ</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-canada">Du lịch Canada</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-nam-my">Du lịch Nam Mỹ</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-brazil">Du lịch Brazil</a>
                                    </li>
                                    <li class="nav-item-lv3">
                                        <a class="nav-link" href="/du-lich-cuba">Du lịch Cuba</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="/dich-vu-tour">Dịch vụ tour</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="/cam-nang-du-lich">Cẩm nang du lịch</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="/lien-he">Liên hệ</a>
                    </li> -->
                </ul>
            </div>
        </div>
    </div>
</nav>