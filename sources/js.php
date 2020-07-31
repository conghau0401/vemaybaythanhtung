
<!-- Plugin JS -->
<script src="themes/js/jquery-2.2.3.min.js" type="text/javascript"></script>
<div id="pre-loader">
    <div class="loader"></div>
</div>
<script type='text/javascript'>
    setTimeout(function() {
        $("#pre-loader").fadeOut(1000);
    }, 500);
</script>
<!-- Google Analytisc -->
<?= $row_setting['gg'] ?>
<?php if ($source == 'lien-he') { ?>
    <script type='text/javascript'>
        $(document).ready(function() {
            $('.img_recaptcha').click(function() {
                $.ajax({
                    type: 'post',
                    url: 'sources/ajax.php',
                    data: {
                        'do': 'recaptcha'
                    },
                    success: function(data) {
                        $('.recaptcha').html(data);
                    }
                })
            });
        });
    </script>
<?php } ?>
<script src="themes/js/owl.carousel.min.js" type="text/javascript"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!-- Main JS -->
<script src="themes/js/main.js" type="text/javascript"></script>
<!-- Product detail JS,CSS -->
<script type="text/javascript">
    WebFontConfig = {
        google: {
            families: ['Roboto:400,500,700']
        },
        custom: {
            families: ['FontAwesome'],
            urls: ['https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css']
        }
    };
    (function() {
        var wf = document.createElement('script');
        wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
        wf.type = 'text/javascript';
        wf.async = 'true';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(wf, s);
    })();
</script>


