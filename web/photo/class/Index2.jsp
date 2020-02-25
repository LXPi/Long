<%@ page import="org.hibernate.Transaction" %>
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="com.xc.HibernautUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="com.longimage.ServicesEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="net.sf.json.JSONArray" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=7">
<title>合作医院-官网</title>
<meta content="" name="keywords">
<meta content="" name="description">
	<link href="../../base/templates/css/common.css" rel="stylesheet" type="text/css">
	<link href="../../advs/templates/css/advsgloballb.css" rel="stylesheet" type="text/css">
    <link href="../templates/css/photoquery.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="../../Js/jquery.js"></script>
	<script type="text/javascript" src="../../Menu/js/dropmenu48.js"></script>
	<script type="text/javascript" src="../../base/js/form.js"></script>
	<script type="text/javascript" src="../../base/js/blockui.js"></script>
	<script type="text/javascript" src="../../Js/bootstrap.js"></script>
	<script type="text/javascript" src="../../Js/ckform.js"></script>
	<script type="text/javascript" src="../../Js/common.js"></script>
	<script type="text/javascript" src="../../Js/getUrlParam.js"></script>
	<script type="text/javascript" src="../../Js/jquery.cookie.js"></script>
	<script type="text/javascript" src="../../Js/json2.js"></script>
	<script type="text/javascript" src="../../su_new.js"></script>
	<script type="text/javascript" src="../../advs/js/advsgloballb.js"></script>
	<style type="text/css">
		#dropmenu{
			margin: 0;
			padding: 0;
			width:100%;
		}

		#dropmenu li{
			float: left;
			list-style: none;
			font: 16px/35px  SimSun,'microsoft yahei',Verdana,Arial;

		}

		#dropmenu li a{
			display: block;
			padding: 0px;
			text-align:center;
			text-decoration: none;
			width: 100px;
			color: #1A57A2;
			white-space: nowrap;
			font: 16px/35px  SimSun,'microsoft yahei',Verdana,Arial;
		}

		#dropmenu li a:hover{
			color: #fff;
			background: url(../../Menu/templates/images/menu48.png) repeat;
			font: 16px/35px  SimSun,'microsoft yahei',Verdana,Arial;
		}

		#dropmenu li ul{
			margin: 0 0 0 0px;
			padding: 10px 0px;
			width: 100px;
			position: absolute;
			visibility: hidden;
			background: url(../../Menu/templates/images/smenubg48.png) repeat;
		}

		#dropmenu li ul li{
			float: none;
			display: inline;
			width: 100px;
			height:30px;
			font: 12px/30px  SimSun,'microsoft yahei',Verdana,Arial;
		}

		#dropmenu li ul li a{
			padding: 0px;
			text-align:center;
			color: #303030;
			background: transparent;
			font: 12px/30px  SimSun,'microsoft yahei',Verdana,Arial;
		}

		#dropmenu li ul li a:hover{
			padding: 0px;
			color: #fff;
			background: #1a57a2;
			font: 12px/30px  SimSun,'microsoft yahei',Verdana,Arial;
		}
	</style>
	<% SessionFactory sessionFactory =HibernautUtil.getSessionFactory(5);
		Session sessions = sessionFactory.openSession();
		Transaction t = sessions.beginTransaction();
		Query q1 = sessions.createQuery("from ServicesEntity ");
		List<ServicesEntity> list1=q1.list();
		t.commit();
		sessionFactory.close();
		sessions.close();
	%>
</head>
<body style='background:transparent url(../../effect/source/bg/1491902298.jpg) no-repeat scroll 50% 0%'>
<script>
var PDV_PAGEID='290'; 
var PDV_RP='../../'; 
var PDV_COLTYPE='photo'; 
var PDV_PAGENAME='query'; 
</script>

<div id='contain' style='width:1258px;background:url(../../effect/source/bg/1262661247.gif) repeat-y;margin:0px auto;padding:0px'>

<div id='top' style='width:1258px;height:821px;background:none 0% 0% repeat scroll transparent'>


<!-- 全站通栏轮播广告 -->

<div id='pdv_18408' class='pdv_class' title='' style='width:1258px;height:532px;top:180px;left:0px; z-index:1'>
<div id='spdv_18408' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/photo/class/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px;overflow:hidden">

<script type="text/javascript" src="../../advs/js/advsgloballb.js"></script>
<div id="advsexDiv"><a href=""><img src="../../advs/templates/images/advsgloballb.png"></a></div>
	<div id="simg" style="padding: 0px;overflow:hidden">
		<!--<div class="advsexList" style="background:url(../../advs/pics/20170412/1491980402.jpg) center top no-repeat"><a href=""></a></div>-->
		<!--<div class="advsexList" style="background:url(../../advs/pics/20170412/1491980406.jpg) center top no-repeat"><a href=""></a></div>-->
		<!--<div class="advsexList" style="background:url(../../advs/pics/20170412/1491980410.jpg) center top no-repeat"><a href=""></a></div>-->
	</div>
	<script>
        var shoua=new Array();
        shoua= JSON.parse(decodeURIComponent($.cookie('shoua')));
        for (var i = 0; i <3; i++) {
            var aimg = "<div class='advsexList' style='background:url(../../"+ shoua[i] + "); background-position: top ; background-repeat:no-repeat; '> <a href=''></a></div>";
            $("#simg").append(aimg);
        }
        $("#simg").trigger("create");
	</script>


</div>
</div>

</div>
</div>

<!-- 网站标志 -->

<div id='pdv_18412' class='pdv_class' title='' style='width:428px;height:51px;top:80px;left:0px; z-index:6'>
<div id='spdv_18412' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/photo/class/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">


<a href="../../index.jsp"><img src="../../advs/pics/20170412/1491980304.png" border="0"></a>


</div>
</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_18404' class='pdv_class' title='' style='width:296px;height:31px;top:3px;left:962px; z-index:7'>
<div id='spdv_18404' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">
<div style="FONT-SIZE: 12px; COLOR: #fff; LINE-HEIGHT: 24px">全国服务热线：13388320330&nbsp;&nbsp;&nbsp;&nbsp;  15008113875</div>
</div>
</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_18403' class='pdv_class' title='' style='width:445px;height:25px;top:4px;left:0px; z-index:8'>
<div id='spdv_18403' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">
<div style="line-height: 24px;font-size: 12px;COLOR: #fff">欢迎光自贡祥安阁礼仪服务公司官网！</div>
</div>
</div>

</div>
</div>

<!-- 二级下拉菜单48 -->

<div id='pdv_18410' class='pdv_class' style='width:817px;height:39px;top:87px;left:439px; z-index:9'>
<div id='spdv_18410' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		导航菜单
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/photo/class/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

	<ul id="dropmenu">

		<li><a href="www.xiangange.com">网站首页</a>

		</li>

		<li><a href="../../page/html/companys.html">公司简介</a>

		</li>

		<li><a href="../../photo/class/server.jsp">服务套餐</a>

		</li>

		<li><a href="../../product/class/Index.jsp">殡葬用品</a>

		</li>

		<li><a href="../../photo/class/Index2.jsp">殡葬服务</a>

		</li>

		<li><a href="../../page/service/contact.html">联系我们</a>

		</li>

	</ul>
<div class="clear"> </div>

</div>
</div>

</div>
</div>

<!-- 单行滚动文章列表 -->

<div id='pdv_18405' class='pdv_class' title='' style='width:540px;height:58px;top:761px;left:75px; z-index:10'>
<div id='spdv_18405' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<div id="newsscroll1" class="newslist21">
<ul class="newslist21">

</ul>
</div>

</div>
</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_18406' class='pdv_class' title='' style='width:68px;height:25px;top:761px;left:0px; z-index:11'>
<div id='spdv_18406' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<div style="line-height: 24px;font-size: 12px;COLOR: #333">最新动态：</div>
</div>
</div>

</div>
</div>
</div>
<div id='content' style='width:1258px;height:691px;background:repeat-y;margin:0px auto'>


<!-- 当前位置提示条 -->

<div id='pdv_16888' class='pdv_class' title='' style='width:995px;height:39px;top:6px;left:256px; z-index:2'>
<div id='spdv_16888' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;background:url(../../base/border/788/images/title.png) 0 0 no-repeat;padding:0px;margin:0px;height:100%;">

<div id="nav">
您现在的位置：<a href="../../index.jsp">官网</a>
 
&gt; <a href="">殡葬服务</a>

</div>

</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_17845' class='pdv_class' title='联系方式' style='width:245px;height:212px;top:343px;left:2px; z-index:4'>
<div id='spdv_17845' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../../base/border/537/images/title.png) 0 0 no-repeat">
<div style="height:32px;border:0px;padding:0;margin:0;">
    <div style="float:left;width:110px;color:#515151;font:14px/32px 'microsoft yahei',simsun;text-align:center;">联系方式</div>
	<div style="float:right;text-align:right;width:45px;height:32px;background:url(../../base/border/537/images/title.png) -955px 0px no-repeat;"><a href="" style="display:none;">
	<img src="../../base/border/537/images/more.png" style="border:0px;padding-top:15px;"></a></div>
</div>
<div style="margin:0px;padding:6px">


    <div style="FONT-SIZE: 12px; COLOR: #333; LINE-HEIGHT: 24px"><span style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;"><b>富顺县祥安阁礼仪服务公司</b></span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">24小时服务热线：13388320330&nbsp;</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">联系人：林先生</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">手机：15008113875</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">网址：www.anxiangge.com</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">地址：四川省自贡市富顺县富世镇</span></div>






</div>
</div>

</div>
</div>

<!-- 图片二级分类 -->

<div id='pdv_18413' class='pdv_class' title='殡葬服务' style='width:245px;height:331px;top:4px;left:1px; z-index:13'>
<div id='spdv_18413' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../../base/border/537/images/title.png) 0 0 no-repeat">
<div style="height:32px;border:0px;padding:0;margin:0;">
    <div style="float:left;width:110px;color:#515151;font:14px/32px 'microsoft yahei',simsun;text-align:center;">殡葬服务</div>
	<div style="float:right;text-align:right;width:45px;height:32px;background:url(../../base/border/537/images/title.png) -955px 0px no-repeat;"><a href="javascript:window.open('http://www.gansuande.com/photo/class/-1');" style="display:none;">
	<img src="../../base/border/537/images/more.png" style="border:0px;padding-top:15px;"></a></div>
</div>
<div style="margin:0px;padding:12px">

<link href="../templates/css/phototwoclass.css" rel="stylesheet" type="text/css">
<div class="phototwoclass">

<div class="phototwoclass_top"><a href="" target="_self">殡葬服务</a>(<%=list1.size()%>)</div>

</div>

</div>
</div>

</div>
</div>

<!-- 图片检索搜索 -->

<div id='pdv_16889' class='pdv_class' title='' style='width:970px;height:444px;top:79px;left:258px; z-index:14'>
<div id='spdv_16889' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/photo/class/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<div id="showcanpin">

<script>
$(window).load(function(){
$().picFit("exp");
});
</script>
</div>


<div id="showpages">
	  <div id="pagesinfo"></div>
	  <div id="pages">
		  <ul>
			  <li class="pbutton"><a href="../../index.jsp" >首页</a></li>
			  <li class="pbutton"><a onclick="lost()">上一页</a></li>
			  <span id="yeshu"></span>
			  <li class="pbutton"><a onclick="backxia()">下一页</a></li>
			  <li class="opt"><select onchange="tiaoxia(this.selectedIndex+1)" id="selectxuan">

			  </select></li><li class="pbutton"><a onclick="tiaoxia(yeshu)">尾页</a></li></ul></div>
     </div>
<script>

    <%--var canpin=new Array(<%=list1.size()%>);--%>
    <%--//产品集--%>
    <%--canpin=<%=JSONArray.fromObject(list1)%>;--%>
    //产品集
        var canpin=[{id: 1,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 2,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 3,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 4,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 5,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 6,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 7,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 8,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 9,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 10,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 11,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 12,servicesimage: "images/xuebao.png", servicesname: "dfafsa12",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    },{id: 13,servicesimage: "images/xuebao.png", servicesname: "dfafsa",
        servicestext:"fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款fffacnvankavksn测试的女按地块均近三年三年大V技能你查看内存健康智能机你在哪你在哪呢紫禁城内缴纳存款"
    }];
    console.log(canpin);
    var xia=0;    //加载页面为12的倍数
    var xiaed=0   //有多少个已加载页面
    for( var d=xia;d<=canpin.length;d++){
        xia=d;
        if(d%12==0 && d!=0){
            xiaed++;
            break;
        }
        var ss="<div class='productquery_dolphin' onclick='xiangshow("+(d+xiaed*12)+")'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='../../"+canpin[d].servicesimage+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].servicesname+"</a> </div> </div>";
        $("#showcanpin").append(ss);
    }
    xia=d;
    $("#showcanpin").trigger("create");
    console.log(xia);

    var tiao=canpin.length;
    var yeshu= Math.ceil(tiao/12); //上取整
    //  Math.floor(tiao/12)   下取整

    $('#pagesinfo').text("共"+tiao+"条 每页12条 页次：1/"+yeshu);
    for(var lis=0;lis<yeshu;lis++){
        var lala="<li><a onclick='tiaoxia("+(lis+1)+")'>"+(lis+1)+"</a></li>";
        $('#yeshu').append(lala);
    }
    $('#yeshu').trigger("create");
    //下一页
    function backxia(){
        $("#showcanpin .productquery_dolphin").remove();
        if(xia>=canpin.length ){
            alert("没有了");
            xia=xiaed*12-12;
            for( var d=xia;d<=canpin.length;d++){
                if(d%12==0 && d!=0 && xia!=d){
                    break;
                }
                var ss="<div class='productquery_dolphin'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='../../"+canpin[d].servicesimage+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].servicesname+"</a> </div> </div>";
                $("#showcanpin").append(ss);
            }
            xia=d;
            $("#showcanpin").trigger("create");
            $("<link>").attr({ rel: "stylesheet",
                type: "text/css",
                href: "../../product/templates/css/productquery_dolphin.css"
            }).appendTo("head");
            return;
        }else {
            xiaed++;
            for( var d=xia;d<canpin.length;d++){
                if(d%12==0 && d!=0 && xia!=d){
                    break;
                }
                var ss="<div class='productquery_dolphin'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='../../"+canpin[d].servicesimage+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].servicesname+"</a> </div> </div>";
                $("#showcanpin").append(ss);
            }
            xia=d;
            $("#showcanpin").trigger("create");
            $("<link>").attr({ rel: "stylesheet",
                type: "text/css",
                href: "../../product/templates/css/productquery_dolphin.css"
            }).appendTo("head");
        }

        $('#pagesinfo').text("共"+tiao+"条 每页12条 页次："+xiaed+"/"+yeshu);
    }
    //上一页
    function lost(){
        $("#showcanpin .productquery_dolphin").remove();
        if(xiaed<=1){
            alert("没有了");
            xiaed=1;
            xia=0;
            for( var d=xia;d<=canpin.length;d++){
                if(d%12==0 && d!=0 && xia!=d){
                    break;
                }
                var ss="<div class='productquery_dolphin'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='../../"+canpin[d].servicesimage+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].servicesname+"</a> </div> </div>";
                $("#showcanpin").append(ss);
            }
            xia=d;
            $("#showcanpin").trigger("create");
            $("<link>").attr({ rel: "stylesheet",
                type: "text/css",
                href: "../../product/templates/css/productquery_dolphin.css"
            }).appendTo("head");
            return;
        }else {
            if(xia>=24){
                xiaed--;
                xia=xia-24;
            }else {
                xiaed--;
                xia=xia-(xia-(xiaed*12))-12
            }

            for( var d=xia;d<canpin.length+1;d++){
                if(d%12==0 && d!=xia){
                    break;
                }
                var ss="<div class='productquery_dolphin'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='../../"+canpin[d].servicesimage+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].servicesname+"</a> </div> </div>";
                $("#showcanpin").append(ss);
            }
            xia=d;
            $("#showcanpin").trigger("create");
            $("<link>").attr({ rel: "stylesheet",
                type: "text/css",
                href: "../../product/templates/css/productquery_dolphin.css"
            }).appendTo("head");
        }
        console.log(canpin);
        $('#pagesinfo').text("共"+tiao+"条 每页12条 页次："+xiaed+"/"+yeshu);
    }
    function tiaoxia(ye){
        $("#showcanpin .productquery_dolphin").remove();
        xiaed=ye;
        if(xiaed==1){
            xia=0;
        }
        else {
            xia=(xiaed-1)*12;
        }

        for( var d=xia;d<canpin.length;d++){
            if(d%12==0 && d!=0 && xia!=d){
                break;
            }
            var ss="<div class='productquery_dolphin'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='../../"+canpin[d].servicesimage+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].servicesname+"</a> </div> </div>";
            $("#showcanpin").append(ss);
        }
        xia=d;
        $("#showcanpin").trigger("create");
        $("<link>").attr({ rel: "stylesheet",
            type: "text/css",
            href: "../../product/templates/css/productquery_dolphin.css"
        }).appendTo("head");
    }
    for(var xuan=0;xuan<yeshu;xuan++){
        var  ss=" <option value='' selected='' onclick='tiaoxia("+(xuan+1)+")'>第"+(xuan+1)+"页</option>";
        $('#selectxuan').append(ss)	;
    }
    function xiangshow(id){
window.open("../../product/class/Index.html?id="+(id+1)+"&lei=service");
	}
    $('#selectxuan').trigger("create");
    $("<link>").attr({ rel: "stylesheet",
        type: "text/css",
        href: "../../product/templates/css/productquery_dolphin.css"
    }).appendTo("head");
</script>

</div>
</div>

</div>
</div>
</div>
<div id='bottom' style='width:1258px;height:171px;background:url(../../effect/source/bg/1491902390.jpg) repeat-x transparent'>


<!-- 底部信息编辑区 -->

<div id='pdv_18411' class='pdv_class' title='' style='width:576px;height:85px;top:84px;left:9px; z-index:3'>
<div id='spdv_18411' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/photo/class/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">
<div style="width:100%;text-align:center;font:12px/20px Arial, Helvetica, sans-serif">
<div style="text-align: left; line-height: 28px;COLOR: #fff;font-size:14px;">TEL：0931-4533338 &nbsp; MOB:13993147779&nbsp;</div><div style="text-align: left; line-height: 28px;COLOR: #fff;font-size:14px;">&nbsp;地址：甘肃省兰州市城关雁滩新港城步行街4008号</div><div style="text-align: left; line-height: 28px;COLOR: #fff;font-size:14px;">版权所有 甘肃安德殡葬服务有限责任公司</div>
</div>

</div>
</div>

</div>
</div>

<!-- 底部菜单（一级） -->

<div id='pdv_18409' class='pdv_class' style='width:421px;height:28px;top:40px;left:0px; z-index:5'>
<div id='spdv_18409' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		脚注栏目
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/photo/class/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<div id="bottommenu">|

<a href="../../index.jsp" target="_self">网站首页</a>|

<a href="../../page/html/companys.html" target="_self">关于我们</a>|

<a href="../../news/class/Index.html" target="_self">新闻资讯</a>|

<a href="../../page/service/contact.html" target="_self">联系方式</a>|

<a href="../../job/index.html" target="_self">人才招聘</a>|

<a href="../../advs/link/Index.html" target="_self">友情链接</a>|
 
</div>


</div>
</div>

</div>
</div>

<!-- 页内图片广告 -->

<div id='pdv_18407' class='pdv_class' title='' style='width:409px;height:41px;top:76px;left:849px; z-index:12'>
<div id='spdv_18407' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/photo/class/-1');" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">




<a href="javascript:window.open('http://www.gansuande.com/photo/class/page/service/contact.php');"><img src="../../advs/pics/20170412/1491980760.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>
</div>
</div><div id='bodyex'>

</div>
<div id='topex' style='display:none;width:100%;height:821px;background:none 0% 0% repeat scroll transparent'>
</div>
<div id='contentex' style='display:none;width:100%;height:557px;background:repeat-y'>
</div>
<div id='bottomex' style='display:none;width:100%;height:171px;background:url(../../effect/source/bg/1491902390.jpg) repeat-x transparent'>
</div>
<div id='advsex'></div>

<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?ecc7a2c5b48473aeb2606187888e4111";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();

//动态加载css
$("<link>").attr({ rel: "stylesheet",
    type: "text/css",
    href: "product/templates/css/productlist.css"
}).appendTo("head");
$("<link>").attr({ rel: "stylesheet",
    type: "text/css",
    href: "product/templates/css/productquery_dolphin.css"
}).appendTo("head");
</script>
</body>
</html>
