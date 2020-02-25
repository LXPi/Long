<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
 <head>
  <title>后台管理系统</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
  <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/main-min.css" rel="stylesheet" type="text/css" />
 </head>
 <body>

  <div class="header">
    
      <div class="dl-title">
       <!--<img src="/chinapost/Public/assets/img/top.png">-->
      </div>

    <div class="dl-log">欢迎您，<span class="dl-log-user">root</span><a onclick="tuichi()" title="退出系统" class="dl-log-quit">[退出]</a>
    </div>
  </div>
   <div class="content">
    <div class="dl-main-nav">
      <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
      <ul id="J_Nav"  class="nav-list ks-clear">
        		<li class="nav-item dl-selected"><div class="nav-item-inner nav-home">系统管理</div></li>		<li class="nav-item dl-selected"><div class="nav-item-inner nav-order">业务管理</div></li>       

      </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
   </div>
  <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="assets/js/bui-min.js"></script>
  <script type="text/javascript" src="assets/js/common/main-min.js"></script>
  <script type="text/javascript" src="assets/js/config-min.js"></script>
  <script type="text/javascript" src="Js/jquery.cookie.js"></script>
  <script type="text/javascript" src="Js/json2.js"></script>
  <%--<script type="text/javascript" src="../Js/jaaulde-cookies.js"></script>--%>
  <script type="text/javascript" src="Js/js.cookie.js"></script>

  <script>
      window.onload=function (ev) {
          var a=JSON.parse(decodeURIComponent($.cookie('login')));
          if(a!=null && a!=undefined && a!='' && a!=""){
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
                      window.open("hlogin.jsp");
                  },
              });
          }else {
              window.open("hlogin.jsp");
          }

          };
      //添加产品图片记录(产品类型，名称，图片地址，id，说明)上传图片，
      //查看产品(可以分类查看)//删除产品图片记录
      //选择产品图片到网站首页(推荐产品)
    BUI.use('common/main',function(){
      var config = [{id:'1',menu:[{text:'系统管理',items:[{id:'2',text:'机构管理',href:'Node/indexZ.html'},
                  {id:'3',text:'角色管理',href:'Role/indexZ.html'},
                  {id:'4',text:'用户管理',href:'User/indexZ.html'},
                  {id:'6',text:'菜单管理',href:'Menu/indexZ.html'}]}]},
          {id:'7',homePage : '9',menu:[{text:'产品管理',items:[
              {id:'9',text:'查看产品',href:'Node/index.jsp?caozuo=chakan'}, {id:'10',text:'增加产品',href:'Node/Add.jsp'},
                      {id:'11',text:'服务管理',href:'Node/servicecontrol.html'},
                      {id:'12',text:'套餐管理',href:'Node/Taocao.html'},
                      {id:'13',text:'首页动图',href:'Node/Shouyedongtu.html'}]}]}];

      /**服务管理
      * 套餐管理
      * 首页动图
      * 首页产品
     * */
      new PageUtil.MainPage({
        modulesConfig : config
      });
    });
     function tuichi(){
         alert('退出系统自动退出账号!')
     }
  </script>
 </body>
</html>