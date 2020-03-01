function test() {
    alert("버튼을 누르셨습니다.");
}

function submitLogin() {
   if (validate("form_id") == false) {
        alert('아이디를 입력하세요');
        return;
    }

    if (validate("form_password") == false) {
        alert('비밀번호를 입력하세요');
        return;
    }/*
    if($("#remember_id").prop("checked")){
        $("#id_save").val("Y");
    }

    if($("#secureLogin").attr("checked") == 'checked') {
        $("#auth_id").val(RSA.encrypt(encodeURIComponent($("#form_id").val()), pubkey));
        $("#auth_password").val(RSA.encrypt(encodeURIComponent(getPasswordElement().val()), pubkey));
    } else {
        $("#auth_id").val($("#form_id").val());
        $("#auth_password").val($("#form_password").val());
    }


    $form = $('form[name="login"]');
    asyncJsonSubmit($form, makeFormHandler($form, function(success, message, data){
        if(data['checkMessage'] && data['checkMessage'] != '') {
            if(confirm(data['checkMessage'])) {
                if(!data.infoUrl) {
                    data.infoUrl = '/member/info';
                }
                data.redirectUrl = data.infoUrl;
            }
        }
    }*/
}

*/
