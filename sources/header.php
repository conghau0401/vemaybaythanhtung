<?php
    $banner = $d->o_fet("select * from #_setting where hien_thi=1 and id=30");
?>

<header class="header header-index">
    <div class="container">
        <div class="header-main">
            <div class="row">
                <div class="col-md-3">
                    <button type="button" class="nav-line-group hidden-lg hidden-md">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="logo">
                        <a href="<?= URLPATH ?>" title="Home" class="logo-wrapper">
                            <img src="<?= URLPATH ?>img_data/images/<?= $banner[0]['hinh_anh_' . $lang] ?>" alt="Logo">
                        </a>
                    </div>
                    <a href="/cart" class="icon-option-cart hidden-lg hidden-md hidden">
                        <span class="ng-binding ng-hide cart-products-count">0</span>
                    </a>
                </div>
                <div class="col-md-5">
                    <div class="search">
                        <div class="header_search search_form">
                            <form class="input-group search-bar search_form" action="/search" method="get" role="search">
                                <input type="search" name="query" value="" placeholder="Tìm kiếm tour..." class="input-group-field st-default-search-input search-text" autocomplete="off">
                                <span class="input-group-btn">
                                    <button class="btn icon-fallback-text">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 hidden-sm hidden-xs">
                    <div class="top-fun">
                        <div class="hotline">
                            <img src="themes/img/hotline.svg" alt="Tổng đài miễn phí" />
                            <div class="hotline-text">
                                <a href="tel:0968240896">0968 24 08 96</a>
                                <span>Tổng đài miễn phí</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <?php include _source . "menu.php"; ?>
</header>