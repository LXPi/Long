<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/8/30
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <link rel="stylesheet" type="text/css" href="../css/tanchuang.css" />
    <%--<script type="text/javascript" src="../Js/jquery.sorted.js"></script>--%>
    <script type="text/javascript" src="../Js/jquery.js"></script>
    <script type="text/javascript" src="../Js/bootstrap.js"></script>
    <script type="text/javascript" src="../Js/ckform.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>
    <script type="text/javascript" src="../Js/getUrlParam.js"></script>
    <script type="text/javascript" src="../Js/jquery.cookie.js"></script>
    <script type="text/javascript" src="../Js/json2.js"></script>
    <%--<script type="text/javascript" src="../Js/jaaulde-cookies.js"></script>--%>
    <script type="text/javascript" src="../Js/js.cookie.js"></script>
</head>
<body>
<form enctype="multipart/form-data" id="definewidth" method="post" class="definewidth m20">
    <input type="hidden" name="ids" id="ids" value="" />
    <table class="table table-bordered table-hover ">
        <tr>
            <td width="10%" class="tableleft">产品名</td>
            <td><input type="text" name="canpingming" id="canpingming" value=""/></td>
        </tr>
        <tr>
            <td class="tableleft">产品种类</td>
            <td ><input type="text" name="canpingzhonglei" id="canpingzhonglei" value=""/></td>
        </tr>
        <tr>
            <td class="tableleft">产品描述</td>
            <td >
                <%--<input type="radio" name="status" value="1" checked/> 启用--%>
                <%--<input type="radio" name="status" value="0" /> 禁用--%>
                <input type="text" name="describe" id="describe"/>
            </td>
        </tr>
        <tr style="height: 100px">
            <td class="tableleft">产品图片</td>
            <td height="100px" width="100px"><img  name="canpingtupian" id="canpingtupian" src="" alt="" style="height: 100px;width: 100px">  <input type="file" name="moduletitle"  id="moduletitle" value="" /></td>

        </tr>
        <tr>
            <td class="tableleft"></td>
            <td>
                <button type="submit" class="btn btn-primary" type="button">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
            </td>
        </tr>
    </table>
</form>
</body>
<script>
    window.onload=function (ev) {
        var a=JSON.parse(decodeURIComponent($.cookie('login')));
        if(a!=null){
            var formData = new FormData();
            formData.append('username',a.username);
            formData.append('password',a.password);
            $.ajax({
                url: "ajax/hlogin.action",
                type: 'post',
                dataType: 'json',
                data:formData,
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                async: false,
                success: function (data) {
                },
                error: function () {
                    window.open("houtai.jsp");
                },
            });
        }else {
            window.open("houtai.jsp");
        }

    };
    $("#definewidth").submit(function (event) {
        var formData = new FormData(this);
        // formData.append("ids",$(this).find("input[name=ids]").val());
       if( $("#canpingming").val()=="" ||  $("#canpingzhonglei").val()=="" || $("#describe").val()=="" ||   $("#moduletitle").val()==""){
         alert("数据都不能为空!");
       }else {
           $.ajax({
               async: false,
               type: "POST",
               url: "ajax/Add.action",
               data: formData,
               dataType: "JSON",
               mimeType: "multipart/form-data",
               contentType: false,
               cache: false,
               processData: false,
               success: function (data) {
                   if(data[0]='success'){
                       alert("成功添加!");
                   }else {
                       alert("添加失败!");
                   }
               },error: function () {
                   alert("添加失败!");
               },
           });
       }
        return false;
    });
</script>
</html>
