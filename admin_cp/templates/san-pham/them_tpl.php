<?php @include "sources/editor.php" ?>
<?php
    $phuongtien = $d->o_fet("select * from #_phuongtien where hien_thi = 1 order by id asc");
?>
<ol class="breadcrumb">
    <li><a href="<?= urladmin ?>"><i class="glyphicon glyphicon-home"></i> Trang chủ</a></li>
    <li class="active"><a href="<?= urladmin ?>index.php">Danh mục</a></li>
    <li class="active"><a href="<?= urladmin ?>index.php?p=san-pham&a=man">Sản phẩm</a></li>
    <li class="active"><a href="#"><?php if (isset($_GET['id'])) echo "Sửa";
                                    else echo "Thêm mới" ?></a></li>
</ol>
<div class="col-xs-12">
    <form name="CHm" method="post" action="index.php?p=san-pham&a=save&id=<?= @$_REQUEST['id'] ?>&page=<?= @$_REQUEST['page'] ?>" enctype="multipart/form-data">


        <div class="ar_admin">
            <div class="title_thongtinchung">
                Thông tin chung
            </div>
            <table class="table table-bordered table-hover them_dt" style="border:none">
                <tbody>
                    <?php if (isset($_GET['id'])) { ?>
                        <tr>
                            <td class="td_left">
                                Hình ảnh:
                            </td>
                            <td class="td_right">
                                <?php if ($items[0]['hinh_anh'] <> '') { ?>
                                    <img src="../img_data/images/<?php echo @$items[0]['hinh_anh'] ?>" width="120" alt="NO PHOTO" />
                                <?php } ?>
                            </td>
                        </tr>
                    <?php } ?>
                    <tr>
                        <td class="td_left">
                            Hình ảnh:
                        </td>
                        <td class="td_right">
                            <input type="file" name="file2" class="input width400 form-control" />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            Hình ảnh slide:
                        </td>
                        <td class="td_right ">
                            <div class="td_hinhanh">
                                <?php
                                $hinhanh =  $d->o_fet("select * FROM #_sanpham_hinhanh where id_sp ='" . $_GET['id'] . "'");
                                foreach ($hinhanh as $val) {
                                ?>
                                    <div class="dv-img-ad">
                                        <div class="img_addimage">
                                            <?= ($val['hinh_anh'] <> '') ? "<img src='" . URLPATH . "thumb.php?src=" . URLPATH . "img_data/images/" . $val['hinh_anh'] . "&w=140&h=90&zc=2'>" : "<img src='" . URLPATH . "thumb.php?src=" . URLPATH . "images/no-image.png&w=140&h=90&zc=2'>"; ?>
                                        </div>
                                        <div class="icon_deleteimage">
                                            <a href="javascript:xoa_anh_sp('<?= $val['id'] ?>','<?= $val['id_sp'] ?>')" onclick="if(!confirm('Xác nhận xóa?')) return false;  "><img src="public/images/delete.png" alt="Delete"></a>
                                        </div>
                                        <div class="name_addimg"><?php echo @$val['title'] ?></div>
                                    </div>
                                <?php } ?>
                            </div>
                            <div class="add_img">

                            </div>
                            <div style="clear:both"></div>
                            <div style=""><a href="javascript:them_anh()" style="  background-color: rgb(66, 139, 202);  padding: 5px 22px;  border-radius: 3px;  color: #fff;  text-decoration: none;">Thêm ảnh</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            Danh mục:
                        </td>
                        <td class="td_right">
                            <!-- <select name="id_loai" class="input width400 form-control" style="border-radius:4px">
                                <option value="0">Chọn danh mục</option>
                                <?= $loai ?>
                            </select> -->
                            <?php
                                $danhmuc1 = $d->o_fet("select * from #_category where hien_thi = 1 and id_loai IN ('489','490') order by so_thu_tu asc");
                            ?>
                            <select class="select2 form-control" name="id_loai[]" multiple="multiple">
                                <?php foreach ($danhmuc1 as $key => $value) { 
                                    $danhmuc2 = $d->o_fet("select * from #_category where hien_thi = 1 and id_loai = '".$value['id']."' order by id desc");
                                    
                                    $arr_list = explode(',',$items[0]['id_loai']);
                                ?>
                                    <optgroup label="<?=$value['ten_vn']?>">
                                        <?php foreach ($danhmuc2 as $key => $value1) { ?>
                                            <option value="<?=$value1['id']?>" <?= (in_array($value1['id'], $arr_list) ? 'selected' : '')?>><?=$value1['ten_vn']?></option>
                                        <?php } ?>
                                    </optgroup>
                                <?php } ?>
                            </select>
                        </td>
                    </tr>


                    <!-- <tr>
                <td class="td_left">
                    Mã sản phẩm:
                </td>
                <td class="td_right">
                    <?php if (isset($_GET['id'])) { ?>
                        <input class="input width400 form-control" type="text" name="ma_sp" value="<?php echo @$items[0]['ma_sp'] ?>"  />
                    <?php } else { ?>
                        <input class="input width400 form-control" type="text" name="ma_sp" value="<?= $d->chuoird(4); ?>"  />
                    <?php } ?>
                </td>
            </tr> -->

                    <tr>
                        <td class="td_left">
                            Giá cũ:
                        </td>
                        <td class="td_right">
                            <input class="input width400 form-control" autocomplete="off" type="text" OnkeyUp="gia_khuyen_mai(this,'#giacu')" name="khuyen_mai" id="khuyenmai" value="<?php echo @$items[0]['khuyen_mai'] ?>" />
                            <font id="giacu">
                                <p style="margin-top:5px;color:red"><?php if (!empty($items[0]['khuyen_mai'])) echo $d->vnd($items[0]['khuyen_mai']) ?></p>
                            </font>
                        </td>
                    </tr>

                    <tr>
                        <td class="td_left">
                            Giá:
                        </td>
                            <td class="td_right">
                                <div class="box-gia">
                                    <div class="flex-gia">
                                        <label for="">Người lớn</label>
                                        <input class="input width400 form-control" autocomplete="off" OnkeyUp="gia_khuyen_mai(this,'#gia_nguoilon')" type="text" name="gia" id="gia" value="<?php echo @$items[0]['gia'] ?>" />
                                    </div>
                                    <font id="gia_nguoilon">
                                        <p style="margin-top:5px;color:red"><?php if (!empty($items[0]['gia'])) echo $d->vnd($items[0]['gia']) ?></p>
                                    </font>
                                </div>
                                <div class="box-gia">
                                    <div class="flex-gia">
                                        <label for="">Trẻ em</label>
                                        <input class="input width400 form-control" autocomplete="off" OnkeyUp="gia_khuyen_mai(this,'#gia_treem')" type="text" name="gia_treem" id="gia" value="<?php echo @$items[0]['gia_treem'] ?>" />
                                    </div>
                                    <font id="gia_treem">
                                        <p style="margin-top:5px;color:red"><?php if (!empty($items[0]['gia_treem'])) echo $d->vnd($items[0]['gia_treem']) ?></p>
                                    </font>
                                </div>
                                <div class="box-gia">
                                    <div class="flex-gia">
                                        <label for="">Em bé</label>
                                        <input class="input width400 form-control" autocomplete="off" OnkeyUp="gia_khuyen_mai(this,'#gia_embe')" type="text" name="gia_embe" id="gia" value="<?php echo @$items[0]['gia_embe'] ?>" />
                                    </div>
                                    <font id="gia_embe">
                                        <p style="margin-top:5px;color:red"><?php if (!empty($items[0]['gia_embe'])) echo $d->vnd($items[0]['gia_embe']) ?></p>
                                    </font>
                                </div>
                            </td>
                    </tr>


                    <tr>
                        <td class="td_left">
                            Phương tiện:
                        </td>
                        <td class="td_right">
                            <?php  
                                $arr_pt = explode(',',$items[0]['phuongtien']);
                            ?>
                            <select class="select2 form-control" name="phuongtien[]" multiple="multiple">
                                <?php foreach ($phuongtien as $key => $value) { ?>
                                    <option value="<?=$value['id']?>" <?= (in_array($value['id'], $arr_pt) ? 'selected' : '')?>><?=$value['ten_vn']?></option>
                                <?php } ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left">
                            Thời gian :
                        </td>
                        <td class="td_right">
                            <div class="flex-date">
                                <div class="box">
                                    <input type="number" class="input form-control" id="ngay" min="0" name="ngay" value="<?php echo @$items[0]['ngay'] ?>" /> Ngày
                                </div>
                                <div class="box">
                                    <input type="number" class="input form-control" id="dem" min="0" name="dem" value="<?php echo @$items[0]['dem'] ?>" /> Đêm
                                </div>
                            </div>
                        </td>
                    </tr>
                    <!-- <tr>
                <td class="td_left">
                    Khuyến mãi:
                </td>
                <td class="td_right">
                    <input class="input width400 form-control" autocomplete="off" OnkeyUp="gia_khuyen_mai(this,'#km')" type="text" name="khuyen_mai" id="khuyen_mai" value="<?php echo @$items[0]['khuyen_mai'] ?>"  />
                    <font id="km"><p style="margin-top:5px;color:red"><?php if (!empty($items[0]['khuyen_mai'])) echo $d->vnd($items[0]['khuyen_mai']) ?></p></font>
                </td>
            </tr> -->
                </tbody>
            </table>
        </div>
        <div class="bs-example bs-example-tabs" data-example-id="togglable-tabs">
            <ul id="myTabs" class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active">
                    <a href="#id_viet" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Ngôn ngữ VN </a>
                </li>
                <li role="presentation" class="">
            <a href="#id_us" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">Ngôn ngữ EN</a>
        </li>
                <!--li role="presentation" class="">
            <a href="#id_ch" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">Ngôn ngữ Japan</a>
        </li-->
                <li role="presentation" class="">
                    <a href="#id_seo" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">Hỗ trợ SEO</a>
                </li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div role="tabpanel" class="tab-pane fade active in" id="id_viet" aria-labelledby="home-tab">
                    <!-- //lang viet -->
                    <div class="ar_admin">
                        <table class="table table-bordered table-hover them_dt" style="border:none">
                            <tbody>
                                <tr>
                                    <td class="td_left">
                                        Tiêu đề :
                                    </td>
                                    <td class="td_right">
                                        <input class="input width400 form-control" OnkeyUp="addText(this,'#alias_vn','#title_vn')" id="ten_vn" name="ten_vn" value="<?php echo @$items[0]['ten_vn'] ?>" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td_left">
                                        Đường dẫn:
                                    </td>
                                    <td class="td_right">
                                        <input class="input width400 form-control" name="alias_vn" id="alias_vn" value="<?php echo @$items[0]['alias_vn'] ?>" OnkeyUp="addText(this,'#alias_vn')" />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="td_left">
                                        Khởi hành:
                                    </td>
                                    <td class="td_right">
                                        <input class="input width400 form-control" id="khoihanh_vn" name="khoihanh_vn" value="<?php echo @$items[0]['khoihanh_vn'] ?>" />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="td_left">
                                        Mô tả:
                                    </td>
                                    <td class="td_right">
                                        <textarea class="input width400 form-control" style="height:80px" name="mo_ta_vn" id="mo_ta_vn"><?= @$items[0]['mo_ta_vn'] ?></textarea>
                                        <?php $ckeditor->replace('mo_ta_vn'); ?>
                                    </td>
                                </tr>


                                <tr>
                                    <td class="td_left">
                                        Thông tin nội dung:
                                    </td>
                                    <td class="td_right">
                                        <textarea name="thong_tin_vn" id="thong_tin_vn"><?= @$items[0]['thong_tin_vn'] ?></textarea>
                                        <?php $ckeditor->replace('thong_tin_vn'); ?>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="td_left">
                                        Chính sách tour:
                                    </td>
                                    <td class="td_right">
                                        <textarea name="chinhsach_vn" id="chinhsach_vn"><?= @$items[0]['chinhsach_vn'] ?></textarea>
                                        <?php $ckeditor->replace('chinhsach_vn'); ?>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    <!-- end -->
                </div>
                <div role="tabpanel" class="tab-pane fade" id="id_us" aria-labelledby="profile-tab">
                    <!-- lang us -->
                    <div class="ar_admin">
                        <table class="table table-bordered table-hover them_dt" style="border:none">
                            <tbody>
                                <tr>
                                    <td class="td_left">
                                        Tiêu đề (en):
                                    </td>
                                    <td class="td_right">
                                        <input class="input width400 form-control" OnkeyUp="addText(this,'#alias_us','#title_us')" id="ten_us" name="ten_us" value="<?php echo @$items[0]['ten_us'] ?>" />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="td_left">
                                        Đường dẫn (en):
                                    </td>
                                    <td class="td_right">
                                        <input class="input width400 form-control" name="alias_us" id="alias_us" value="<?php echo @$items[0]['alias_us'] ?>" OnkeyUp="addText(this,'#alias_us')" />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="td_left">
                                        Khởi hành (en):
                                    </td>
                                    <td class="td_right">
                                        <input class="input width400 form-control" id="khoihanh_us" name="khoihanh_us" value="<?php echo @$items[0]['khoihanh_us'] ?>" />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="td_left">
                                        Mô tả (en):
                                    </td>
                                    <td class="td_right">
                                        <textarea class="input width400 form-control" style="height:80px" name="mo_ta_us" id="mo_ta_us"><?= @$items[0]['mo_ta_us'] ?></textarea>
                                        <?php $ckeditor->replace('mo_ta_us'); ?>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="td_left">
                                        Nội dung chi tiết (en):
                                    </td>
                                    <td class="td_right">
                                        <textarea name="thong_tin_us" id="thong_tin_us"><?= @$items[0]['thong_tin_us'] ?></textarea>
                                        <?php $ckeditor->replace('thong_tin_us'); ?>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="td_left">
                                        Chính sách tour:
                                    </td>
                                    <td class="td_right">
                                        <textarea name="chinhsach_us" id="chinhsach_us"><?= @$items[0]['chinhsach_us'] ?></textarea>
                                        <?php $ckeditor->replace('chinhsach_us'); ?>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- end -->
                    </div>
                </div>

                <div role="tabpanel" class="tab-pane fade" id="id_ch" aria-labelledby="profile-tab">
                    <!-- lang ch -->
                    <div class="ar_admin">
                        <table class="table table-bordered table-hover them_dt" style="border:none">
                            <tbody>
                                <tr>
                                    <td class="td_left">
                                        Tiêu đề (ja):
                                    </td>
                                    <td class="td_right">
                                        <input class="input width400 form-control" OnkeyUp="addText(this,'#alias_ch','#alias_ch')" id="ten_ch" name="ten_ch" value="<?php echo @$items[0]['ten_ch'] ?>" />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="td_left">
                                        Đường dẫn (ja):
                                    </td>
                                    <td class="td_right">
                                        <input class="input width400 form-control" name="alias_ch" id="alias_ch" value="<?php echo @$items[0]['alias_ch'] ?>" OnkeyUp="addText(this,'#alias_ch')" />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="td_left">
                                        Mô tả (ja):
                                    </td>
                                    <td class="td_right">
                                        <textarea class="input width400 form-control" style="height:80px" name="mo_ta_ch" id="mo_ta_ch"><?= @$items[0]['mo_ta_ch'] ?></textarea>
                                    </td>
                                </tr>


                                <tr>
                                    <td class="td_left">
                                        Nội dung chi tiết (ja):
                                    </td>
                                    <td class="td_right">
                                        <textarea name="thong_tin_ch" id="thong_tin_ch"><?= @$items[0]['thong_tin_ch'] ?></textarea>
                                        <?php $ckeditor->replace('thong_tin_ch'); ?>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- end -->
                </div>

                <div role="tabpanel" class="tab-pane fade" id="id_seo" aria-labelledby="profile-tab">
                    <!-- /seo -->
                    <div class="ar_admin">
                        <table class="table table-bordered table-hover them_dt" style="border:none">
                            <tbody>
                                <tr>
                                    <td class="td_left">
                                        Title:
                                    </td>
                                    <td class="td_right">
                                        <input class="input width400 form-control" autocomplete="off" type="text" name="title_vn" id="title_vn" value="<?php echo @$items[0]['title_vn'] ?>" />
                                    </td>
                                </tr>
                                <!--tr>
                        <td class="td_left">
                            Title (en):
                        </td>
                        <td class="td_right">
                            <input class="input width400 form-control" autocomplete="off"  type="text" name="title_us" id="title_us" value="<?php echo @$items[0]['title_us'] ?>"  />
                        </td>
                    </tr-->
                                <!--tr>
                        <td class="td_left">
                            Title (ja):
                        </td>
                        <td class="td_right">
                            <input class="input width400 form-control" autocomplete="off"  type="text" name="title_ch" id="title_ch" value="<?php echo @$items[0]['title_ch'] ?>"  />
                        </td>
                    </tr-->
                                <tr>
                                    <td class="td_left">
                                        Keyword:
                                    </td>
                                    <td class="td_right">
                                        <textarea class="input width400 form-control" style="height:70px" name="keyword" id="keyword"><?= @$items[0]['keyword'] ?></textarea>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="td_left">
                                        Description:
                                    </td>
                                    <td class="td_right">
                                        <textarea class="input width400 form-control" style="height:70px" name="des" id="des"><?= @$items[0]['des'] ?></textarea>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- end -->
                    </div>
                </div>


                <div class="ar_admin last">
                    <table class="table table-bordered table-hover them_dt" style="border:none">
                        <tbody>
                            <tr>
                                <td class="td_left">
                                    Tác vụ:
                                </td>
                                <td class="td_right">
                                    <input type="checkbox" class="chkbox" name="tieu_bieu" <?php if (isset($items[0]['tieu_bieu'])) {
                                                                                                if (@$items[0]['tieu_bieu'] == 1) echo 'checked="checked"';
                                                                                                else echo '';
                                                                                            } ?> id="tieu_bieu"><label class="lb_nut" for="tieu_bieu">SP Tiêu biểu</label>
                                    <input type="checkbox" class="chkbox" name="hien_thi" <?php if (isset($items[0]['hien_thi'])) {
                                                                                                if (@$items[0]['hien_thi'] == 1) echo 'checked="checked"';
                                                                                            } else echo 'checked="checked"'; ?> id="hien_thi"><label class="lb_nut" for="hien_thi">Hiển thị</label>
                                </td>
                            </tr>
                            <div class="clear"></div>
                            <tr>
                                <td class="td_left" style="text-align:right">
                                </td>
                                <td class="td_right">
                                    <input type="submit" value="Lưu" class="btn btn-primary" />
                                    <input type="button" value="Thoát" onclick="javascript:window.location='index.php?p=san-pham&a=man'" class="btn btn-primary" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>
</div>

<script>
    function addText(text, target, title) {
        var str = $(text).val();
        var link = locdau(str);
        $(target).val(link);
        $(title).val(str);
    }

    function xoa_anh_sp(id, idsp) {
        $.ajax({
            url: "./sources/ajax_xoaanh_sp.php",
            type: 'POST',
            data: "id=" + id + "&idsp=" + idsp,
            success: function(data) {
                $(".td_hinhanh").html(data);
            }
        })
    }

    var fs_img = 0;

    function them_anh() {
        fs_img++;
        if (fs_img < 16) {
            $(".add_img").append('<div class="dv-img-ad hide_js_' + fs_img + '"><input type="hidden" name="txt_up_' + fs_img + '" class="txt_up_' + fs_img + '"  value="1"><input type="file" class="file_img" name="file_' + fs_img + '"><a style="margin-top:3px; display:block;position:absolute; bottom:5px;margin: 0px auto;left: 0px;right: 0px;text-align:center;" href="javascript:;" onclick="xoa_anh_up(\'' + fs_img + '\')"> Xóa ảnh </a></div>');
        } else {
            alert("Mỗi lần up tối đa 15 ảnh.");
        }
    }

    function xoa_anh_up(id) {
        $(".hide_js_" + id).hide();
        $(".txt_up_" + id).val("0");

    }

    function gia_khuyen_mai(obj, val) {
        var gia = $(obj).val();
        var km = "";
        if (gia == '') gia = 0;
        $.ajax({
            url: "./sources/giakm.php",
            type: 'POST',
            data: "gia=" + gia + "&khuyenmai=" + km,
            success: function(data) {
                $(val).html(data);
            }
        })
    }
</script>

<style>
    .flex-date{
        display: flex;
    }
    .box{
        width: 100px;
        display: flex;
        margin-right: 10px;
    }
    .box input{
        margin-right: 10px;
    }
    .flex-gia{
        display: flex;
    }
    .flex-gia label{
        width: 120px;
    }
</style>