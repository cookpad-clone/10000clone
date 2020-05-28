<script type="text/javascript">
            
            $(document).ready(function () {
                $('#appDownLayerBtn').click(function (e) {
                    // Used to stop the event bubbling..
                    e.stopPropagation();
                    if ($('.app_layer').is(':visible')) {
                        $('.app_layer').hide();
                    } else {
                        $('.app_layer').show();
                    }
                });
                $(document).click(function () {
                    $('.app_layer').hide();
                });
            });

        function customerPropose() {
            if (!$("#customerSend").val()) {
                alert('의견을 입력해주세요.');
                $("#customerSend").focus();
                return false;
            }

            $.ajax({
                type: "POST",
                url: "/customer/insert.html",
                data: {
                    q_mode: 'insert',
                    bid: '4',
                    board_txt: $("#customerSend").val()
                },
                dataType: "json",
                success: function (result) {
                    if (result.result == 'SUCCESS') {
                        alert('의견이 접수되었습니다. 감사합니다.');
                        $("#customerSend").val('');
                    } else if (result.result == 'ERROR') {
                        alert(result.msg);
                    }
                }
            });
        }
    
    </script>