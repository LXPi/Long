<%@page contentType="text/html;charset=utf-8" language="java" %>
    <!DOCTYPE html>
<html>
<style>
    @import "http://cdn.bootcss.com/font-awesome/4.5.0/css/font-awesome.min.css";
    .select { position: relative; display: block; margin: 0 auto; width: 100%; max-width: 70px; color: #cccccc; vertical-align: middle; text-align: left; user-select: none; -webkit-touch-callout: none;}
    .select .placeholder { position: relative; display: block; background-color: #393d41; z-index: 1; padding: 1em; border-radius: 2px; cursor: pointer;}
    .select .placeholder:hover { background: #34383c;}
    .select .placeholder:after { position: absolute; right: 1em; top: 50%; transform: translateY(-50%); font-family: 'FontAwesome'; content: '\f078'; z-index: 10;}
    .select.is-open .placeholder:after { content: '\f077';}
    .select.is-open ul { display: block;}
    .select.select--white .placeholder { background: #fff; color: #999;}
    .select.select--white .placeholder:hover { background: #fafafa;}
    .select ul { display: none; position: absolute; overflow: hidden; width: 100%; background: #fff; border-radius: 2px; top: 100%; left: 0; list-style: none; margin: 5px 0 0 0; padding: 0; z-index: 100;}
    .select ul li { display: block; text-align: left; padding: 0.8em 1em 0.8em 1em; color: #999; cursor: pointer;}
    .select ul li:hover { background: #4ebbf0; color: #fff;}
</style>
<head>
    <title></title>
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

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;

            }
        }


    </style>
</head>
<body>
<form class="form-inline definewidth m20" action="index.jsp" method="get">
    机构名称：
    <input type="text" name="rolename" id="rolename"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="shua">刷新</button>
</form>
<!-- 弹窗 -->
<div id="myModal" class="modal">
    <form enctype="multipart/form-data" id="definewidth" method="post" class="definewidth m20" style="display: none;position:absolute; left: 300px; top: 20px">
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
    <!-- 关闭按钮 -->
    <span class="close" onclick="document.getElementById('myModal').style.display='none'">&times;</span>

    <!-- 弹窗内容 -->
    <img class="modal-content" id="img01">

    <!-- 文本描述 -->
    <div id="caption"></div>
</div>
<table class="table table-bordered table-hover definewidth m10" id="showkan">
    <thead id="thead">
    <%--(图片地址，名称，图片地址，id，说明)--%>
    <tr><th>&nbsp;</th><th>名称</th><th>图片</th><th>说明</th><th>类型</th><th>操作</th></tr></thead>

</table>

</body>
</html>
<script>
    var ab;   //存放ajax数据
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
                    var a=UrlParam.paramValues("caozuo");
                    if(a=='chakan'){
                        $.ajax({
                            url: "ajax/kan.action",
                            type: 'post',
                            dataType: 'json',
                            success: function (data) {
                                ab=data;
                                for (var b=0;b<ab.length;b++){
                                    var kan=" <tr> <td>"+(b+1)+"</td> <td>"+ab[b].name+"</td><td>"+ab[b].imgurl+"</td> <td>"+ab[b].miaosu+"</td><td>"+ab[b].lei+"</td><td><div class='select'><span class='placeholder'></span><ul> <li onclick='shanchu("+ab[b].id+")'>删除</li> <li onclick='chakan( \"" + ab[b].imgurl+ "\",\"" + ab[b].miaosu+ "\")'>查看</li> <li id='bianji' onclick='bianji("+b+")'>编辑</li> </ul></div></td> </tr>";
                                    // <td> <a href='edit.htm'>编辑</a> </td>
                                    $("#showkan").append(kan);

                                }
                                $("#showkan .select").on('click', '.placeholder', function(e) {
                                    var parent = $(this).closest('#showkan .select');
                                    console.log("22");
                                    if (!parent.hasClass('is-open')) {
                                        parent.addClass('is-open');
                                        $('#showkan .select .is-open').not(parent).removeClass('is-open');
                                    } else {
                                        parent.removeClass('is-open');
                                    }
                                    e.stopPropagation();
                                }).on('click', 'ul>li', function() {
                                    var parent = $(this).closest('#showkan .select');
                                    parent.removeClass('is-open').find('.placeholder').text(''); //$(this).text()
                                });
                                $('body').on('click', function() {
                                    $('#showkan .select .is-open').removeClass('is-open');
                                });
                                $("#showkan").trigger("create");
                            },
                            error: function () {
                            },
                        });
                    }
                },
                error: function () {
                    window.open("hlogin.jsp");
                },
            });
        }else {
            window.open("hlogin.jsp");
        }

    };
</script>
<script>
    $("#shua").click( function(){
        $.ajax({
            url: "ajax/kan.action",
            type: 'post',
            dataType: 'json',
            success: function (data) {
                ab=data;
                $("#showkan  tr:not(:first)").remove();
                for (var b=0;b<ab.length;b++){
                    var kan=" <tr> <td>"+(b+1)+"</td> <td>"+ab[b].name+"</td><td>"+ab[b].imgurl+"</td> <td>"+ab[b].miaosu+"</td><td>"+ab[b].lei+"</td><td><div class='select'><span class='placeholder'></span><ul> <li onclick='shanchu("+ab[b].id+")'>删除</li> <li onclick='chakan( \"" + ab[b].imgurl+ "\",\"" + ab[b].miaosu+ "\")'>查看</li> <li id='bianji' onclick='bianji("+b+")'>编辑</li> </ul></div></td> </tr>";
                    // <td> <a href='edit.htm'>编辑</a> </td>
                    $("#showkan").append(kan);

                }
                $("#showkan .select").on('click', '.placeholder', function(e) {
                    var parent = $(this).closest('#showkan .select');
                    console.log("22");
                    if (!parent.hasClass('is-open')) {
                        parent.addClass('is-open');
                        $('#showkan .select .is-open').not(parent).removeClass('is-open');
                    } else {
                        parent.removeClass('is-open');
                    }
                    e.stopPropagation();
                }).on('click', 'ul>li', function() {
                    var parent = $(this).closest('#showkan .select');
                    parent.removeClass('is-open').find('.placeholder').text(''); //$(this).text()
                });
                $('body').on('click', function() {
                    $('#showkan .select .is-open').removeClass('is-open');
                });
                $("#showkan").trigger("create");
            },
            error: function () {
            },
        });




});
function shanchu(s) {    //操作删除按钮
    if(confirm("确定要删除吗?"))
    {
        $.ajax({
            url: "Shan.action",
            type: 'post',
            data:{id:s,datasoure:'canpin'},
            dataType : "text",
            success: function (data) {
                console.log(data);
                if(data[0]='success'){
                    alert("成功删除!");
                }else {
                    alert("删除失败!");
                }
            }, error: function () {
                alert("删除失败!");
            },
        });
    }else{

    }
}
function chakan(url,caption) {   //操作查看按钮
     var modal = document.getElementById('myModal');     // 获取弹窗
// // 获取图片插入到弹窗 - 使用 "alt" 属性作为文本部分的内容
//     var img = document.getElementById('myImg');
    var modalImg = document.getElementById("img01");
     var captionText = document.getElementById("caption");
        modal.style.display = "block";
        modalImg.style.display ="block";
        modalImg.src ="../"+url;
        captionText.style.display ="block";
        captionText.innerHTML = caption+"";
}

function bianji(s) {   //操作编辑按钮
    var modal = document.getElementById('myModal');     // 获取弹窗
    modal.style.display = "block";
   $("#definewidth").css("display","inline");
   $("#canpingming").val(ab[s].name);
    $("#canpingzhonglei").val(ab[s].lei);
    $("#describe").val(ab[s].miaosu);
    var modalImg = document.getElementById("canpingtupian");
    modalImg.src ="../"+ab[s].imgurl;
    document.getElementById('ids').value=ab[s].id;
console.log(document.getElementById('ids').value);
}
</script>
<script>                         //查看弹窗
$(".close").on('click',function () {       //关闭弹窗
    $("#definewidth").css("display","none");
    var modal = document.getElementById('myModal');     // 获取弹窗
    var modalImg = document.getElementById("img01");
    modalImg.style.display ="none";
    modal.style.display = "none";
    var captionText = document.getElementById("caption");
    captionText.style.display = "none";
})
    $("#definewidth").submit(function (event) {
        var formData = new FormData(this);
       // formData.append("ids",$(this).find("input[name=ids]").val());
        $.ajax({
            async: false,
            type: "POST",
            url: "ajax/Edit.action",
            data: formData,
            dataType: "JSON",
            mimeType: "multipart/form-data",
            contentType: false,
            cache: false,
            processData: false,
            success: function (data) {
                if(data[0]='success'){
                    alert("成功修改!");
                }else {
                    alert("修改失败!");
                }
            },error: function () {
                alert("修改失败!");
            },
        });
        return false;
    });

</script>

