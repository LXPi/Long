<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>后台管理系统</title>
	<meta charset="UTF-8">
   <link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../Css/style.css" />
    <script type="text/javascript" src="../Js/jquery.js"></script>
    <script type="text/javascript" src="../Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="../Js/bootstrap.js"></script>
    <script type="text/javascript" src="../Js/ckform.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>
    <script type="text/javascript" src="../Js/jquery.cookie.js"></script>
    <script type="text/javascript" src="../Js/json2.js"></script>
    <%--<script type="text/javascript" src="../Js/jaaulde-cookies.js"></script>--%>
    <script type="text/javascript" src="../Js/js.cookie.js"></script>

    <style type="text/css">
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 300px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
        }

        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }

    </style>  
</head>
<body>
<div class="container">

    <form  enctype="multipart/form-data" id="login" class="form-signin" method="post" >
        <h2 class="form-signin-heading">登录系统</h2>
        <input type="text" name="username" id="username" class="input-block-level" placeholder="账号">
        <input type="password" name="password" id="password" class="input-block-level" placeholder="密码">
        <input type="text" name="verify" class="input-medium" placeholder="验证码">
        <p><button class="btn btn-large btn-primary" type="submit">登录</button></p>
    </form>

</div>
</body>
<script>

    $("#login").submit(function (event) {
        var formData = new FormData(this);
        console.log(formData);
        $.ajax({
            url: "ajax/hlogin.action",
            type: 'post',
            dataType: 'json',
            data:formData,
            mimeType: "multipart/form-data",
            contentType: false,
            cache: false,
            processData: false,
            async: false,                // 当async属性的值为false时是同步的，Ajax请求将整个浏览器锁死，只有ajax请求返回结果后，才执行ajax后面的alert语句。
// 当async属性的值为true时是异步的，即不会等待ajax请求返回的结果，会直接执行ajax后面的alert语句。
            success: function (data) {
                console.log(data);
                    alert("登陆成功!");
                    console.log(data[0]);
                  //  var obj = [{"username":data[0].username,"password":data[0].password}];
                    $.cookie('login',encodeURIComponent(JSON.stringify(data[0])));
                    window.open("houtai.jsp");
            },error: function () {
                alert("用户或密码错误!");
            },
        });
        return false;
    });

</script>
</html>