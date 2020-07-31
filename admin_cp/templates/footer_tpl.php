<footer>© Bản quyền thuộc về Vé máy bay Thanh Tùng</footer>
<script type="text/javascript" src="public/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="public/js/ajax.js"></script>
<script type="text/javascript" src="public/js/bootstrap.min.js"></script>
<script type="text/javascript" src="public/extra/select2/select2.full.js"></script>
<script type="text/javascript" src="public/js/admin.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#check_all').change(function() {
            $('.table input:checkbox').prop('checked', this.checked);
        });
        $('#action').change(function() {
            $('#product_form').submit();
        });
        $('#search').keyup(function(e) {
            if (e.which == 13) {
                $('#product_form').submit();
            }
        });
        $('.select2').select2();
        $("select").on("select2:close", function(e) {
            $(this).valid();
        });
    });
</script>
</body>

</html>