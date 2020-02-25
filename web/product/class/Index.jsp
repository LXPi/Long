<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="com.xc.HibernautUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="com.longimage.ShouimageEntity" %>
<%@ page import="com.longimage.ChanpinEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="net.sf.json.JSONArray" %>
<%@page contentType="text/html;charset=utf-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=7">
<title>殡葬用品-官网</title>
<meta content="" name="keywords">
<meta content="" name="description">
<link href="../../base/templates/css/common.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../../base/js/base.js"></script>
<script type="text/javascript" src="../../base/js/common.js"></script>
<script type="text/javascript" src="../../base/js/form.js"></script>
<script type="text/javascript" src="../../base/js/blockui.js"></script>
	<script type="text/javascript" src="../../Js/js.cookie.js"></script>
	<script type="text/javascript" src="../../Js/jquery.js"></script>
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
<!-reload-!>
</head>
<body style='background:transparent url(../../effect/source/bg/1491902298.jpg) no-repeat scroll 50% 0%'>
<script>
var PDV_PAGEID='275'; 
var PDV_RP='../../'; 
var PDV_COLTYPE='product'; 
var PDV_PAGENAME='query'; 
</script>

<div id='contain' style='width:1258px;background:url(../../effect/source/bg/1262661247.gif) repeat-y;margin:0px auto;padding:0px'>
<div>
<div id='top' style='width:1258px;height:821px;background:none 0% 0% repeat scroll transparent'>


<!-- 全站通栏轮播广告 -->

<div id='pdv_18327' class='pdv_class' title='' style='width:1258px;height:532px;top:180px;left:0px; z-index:2'>
<div id='spdv_18327' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/product/class/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px;overflow:hidden">

<link href="../../advs/templates/css/advsgloballb.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../../advs/js/advsgloballb.js"></script>
<div id="advsexDiv"><a href=""><img src="../../advs/templates/images/advsgloballb.png"></a></div>
	<div id="simg" style="padding: 0px;overflow:hidden">
		<!--<div class="advsexList" style="background:url(../../advs/pics/20170412/1491980402.jpg) center top no-repeat"><a href=""></a></div>-->
		<!--<div class="advsexList" style="background:url(../../advs/pics/20170412/1491980406.jpg) center top no-repeat"><a href=""></a></div>-->
		<!--<div class="advsexList" style="background:url(../../advs/pics/20170412/1491980410.jpg) center top no-repeat"><a href=""></a></div>-->
	</div>
	<script>
        var shoua= $.cookie("shoua");
        for (var i = 0; i <3; i++) {
            var aimg = "<div class='advsexList' style='background:url(../../"+ shoua[i]+") background-position: top ; background-repeat:no-repeat; '> <a href=''></a></div>";
            $("#simg").append(aimg);
        }
        $("#simg").trigger("create");
	</script>

</div>
</div>

</div>
</div>

<!-- 网站标志 -->

<div id='pdv_18331' class='pdv_class' title='' style='width:428px;height:51px;top:80px;left:0px; z-index:8'>
<div id='spdv_18331' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/product/class/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">


<a href="../../Index.html"><img src="../../advs/pics/20170412/1491980304.png" border="0"></a>


</div>
</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_18323' class='pdv_class' title='' style='width:291px;height:26px;top:7px;left:967px; z-index:9'>
<div id='spdv_18323' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
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

<!-- 二级下拉菜单48 -->

<div id='pdv_18329' class='pdv_class' style='width:817px;height:39px;top:87px;left:439px; z-index:10'>
<div id='spdv_18329' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		导航菜单
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/product/class/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<!--<link href="../../Menu/templates/css/dropmenu48.css" rel="stylesheet" type="text/css">-->
<script type="text/javascript" src="../../Menu/js/dropmenu48.js"></script>
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
<!-- HTML编辑区 -->
<div id='pdv_18322' class='pdv_class' title='' style='width:445px;height:25px;top:4px;left:0px; z-index:11'>
<div id='spdv_18322' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
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

<!-- 单行滚动文章列表 -->

<div id='pdv_18324' class='pdv_class' title='' style='width:540px;height:58px;top:761px;left:75px; z-index:12'>
<div id='spdv_18324' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="../../news/templates/css/newslist21.css" rel="stylesheet" type="text/css">
<script language="javascript" src="../../news/js/newslist21.js"></script>
<div id="newsscroll1" class="newslist21">
<ul class="newslist21">

<li class="newslist21"><div class="time">06/27</div><a href="../../news/html/Index.html" target="_self">华林山殡仪馆电话云南特别殡葬习俗</a></li>

<li class="newslist21"><div class="time">06/19</div><a href="../../news/html/Index1.html" target="_self">讲述历史上曾经失落的殡葬服务文明</a></li>

<li class="newslist21"><div class="time">06/13</div><a href="../../news/html/Index2.html" target="_self">丧葬服务农村唢呐或将全面禁止</a></li>

<li class="newslist21"><div class="time">06/07</div><a href="../../news/html/Index3.html" target="_self">太平天国特殊的殡葬服务</a></li>

<li class="newslist21"><div class="time">05/29</div><a href="../../news/html/Index4.html" target="_self">丧葬服务经典习俗：七星引路</a></li>

<li class="newslist21"><div class="time">05/25</div><a href="../../news/html/Index5.html" target="_self">殡葬服务使党员干部率先垂范</a></li>

<li class="newslist21"><div class="time">05/11</div><a href="../../news/html/Index6.html" target="_self">安德殡葬服务:中国葬礼的起源和历史变迁</a></li>

<li class="newslist21"><div class="time">04/19</div><a href="../../news/html/Index7.html" target="_self">农村殡葬用品批发习俗有什么讲究</a></li>

<li class="newslist21"><div class="time">04/16</div><a href="../../news/html/Index8.html" target="_self">日本殡仪馆有什么丧葬文化？</a></li>

<li class="newslist21"><div class="time">04/11</div><a href="../../news/html/Index9.html" target="_self">什么是生态殡葬，殡葬一条龙服务还是当前主流</a></li>

<li class="newslist21"><div class="time">04/08</div><a href="../../news/html/Index10.html" target="_self">德国丧葬服务文化你了解吗</a></li>

<li class="newslist21"><div class="time">04/01</div><a href="../../news/html/Index11.html" target="_self">殡葬服务文化起源点滴</a></li>

<li class="newslist21"><div class="time">03/25</div><a href="../../news/html/Index12.html" target="_self">丧葬服务为什么人逝去要过头七到满七、百天到三年</a></li>

<li class="newslist21"><div class="time">03/18</div><a href="../../news/html/Index13.html" target="_self">殡仪馆回忆殡葬文化的变迁</a></li>

<li class="newslist21"><div class="time">03/10</div><a href="../../news/html/Index14.html" target="_self">佛教徒应该如何举行丧葬服务</a></li>

<li class="newslist21"><div class="time">02/28</div><a href="../../news/html/Index15.html" target="_self">丧葬服务中丧葬禁忌与化解</a></li>

<li class="newslist21"><div class="time">02/21</div><a href="../../news/html/Index16.html" target="_self">殡葬服务：火葬和土葬在历史发展中的共性有哪些</a></li>

<li class="newslist21"><div class="time">01/30</div><a href="../../news/html/Index17.html" target="_self">对于因设施、设备问题可能引起的纠纷，殡仪馆应如何设置相关殡葬</a></li>

<li class="newslist21"><div class="time">01/17</div><a href="../../news/html/Index18.html" target="_self">华林山殡仪馆电话？</a></li>

<li class="newslist21"><div class="time">05/18</div><a href="../../news/html/Index19.html" target="_self">哀思鲜花挽联（二）</a></li>

<li class="newslist21"><div class="time">05/18</div><a href="../../news/html/Index20.html" target="_self">殡葬常识→ 挽联（一）</a></li>

<li class="newslist21"><div class="time">05/18</div><a href="../../news/html/Index21.html" target="_self">殡葬常识→ 报丧仪式</a></li>

<li class="newslist21"><div class="time">05/18</div><a href="../../news/html/Index22.html" target="_self">殡葬常识→吊唁仪式</a></li>

<li class="newslist21"><div class="time">05/18</div><a href="../../news/html/Index23.html" target="_self">殡葬常识→植树葬</a></li>

<li class="newslist21"><div class="time">05/18</div><a href="../../news/html/Index24.html" target="_self">殡葬常识→海葬</a></li>

<li class="newslist21"><div class="time">05/18</div><a href="../../news/html/Index25.html" target="_self">殡葬常识→讣闻</a></li>

<li class="newslist21"><div class="time">05/18</div><a href="../../news/html/Index26.html" target="_self">殡葬常识→哀祭文</a></li>

<li class="newslist21"><div class="time">05/18</div><a href="../../news/html/Index27.html" target="_self">高悬古朴的树葬</a></li>

</ul>
</div>

</div>
</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_18325' class='pdv_class' title='' style='width:68px;height:25px;top:761px;left:0px; z-index:13'>
<div id='spdv_18325' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
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
<div>

<!-- 产品分类（列表） -->

<div id='pdv_16950' class='pdv_class' title='产品系列' style='width:245px;height:224px;top:15px;left:0px; z-index:1'>
<div id='spdv_16950' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../../base/border/537/images/title.png) 0 0 no-repeat">
<div style="height:32px;border:0px;padding:0;margin:0;">
    <div style="float:left;width:110px;color:#515151;font:14px/32px 'microsoft yahei',simsun;text-align:center;">产品系列</div>
	<div style="float:right;text-align:right;width:45px;height:32px;background:url(../../base/border/537/images/title.png) -955px 0px no-repeat;"><a href="javascript:window.open('http://www.gansuande.com/product/class/-1');" style="display:none;">
	<img src="../../base/border/537/images/more.png" style="border:0px;padding-top:15px;"></a></div>
</div>
<div style="margin:0px;padding:0px">

<link href="../templates/css/productclass_dolphin.css" rel="stylesheet" type="text/css">
<div class="productclass_dolphin">


<a href="javascript:window.open('http://www.gansuande.com/product/class/?126.html');" target="_self" class="productclass_dolphin">骨灰盒</a>


<a href="javascript:window.open('http://www.gansuande.com/product/class/?127.html');" target="_self" class="productclass_dolphin">寿衣</a>


<a href="javascript:window.open('http://www.gansuande.com/product/class/?128.html');" target="_self" class="productclass_dolphin">鲜花圈花篮</a>


<a href="javascript:window.open('http://www.gansuande.com/product/class/?136.html');" target="_self" class="productclass_dolphin">更多产品</a>
 
</div>

</div>
</div>

</div>
</div>

<!-- 产品检索搜索 -->

<div id='pdv_16951' class='pdv_class' title='产品检索' style='width:970px;height:614px;top:75px;left:270px; z-index:3'>
<div id='spdv_16951' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		产品检索
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/product/class/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="../templates/css/productquery_dolphin.css" rel="stylesheet" type="text/css">

<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?204.html');" target="_self"><img src="../pics/20171017/1508213036.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?204.html');" target="_self" class="prodtitle">殡葬骨灰盒</a>
	</div>
</div>


<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?169.html');" target="_self"><img src="../pics/20170522/1495417147.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?169.html');" target="_self" class="prodtitle">殡葬寿衣</a>
	</div>
</div>


<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?170.html');" target="_self"><img src="../pics/20170522/1495417159.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?170.html');" target="_self" class="prodtitle">殡葬寿衣</a>
	</div>
</div>


<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?155.html');" target="_self"><img src="../pics/20170519/1495193419.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?155.html');" target="_self" class="prodtitle">殡葬寿衣</a>
	</div>
</div>


<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?171.html');" target="_self"><img src="../pics/20170522/1495417170.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?171.html');" target="_self" class="prodtitle">殡葬寿衣</a>
	</div>
</div>


<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?172.html');" target="_self"><img src="../pics/20170522/1495417182.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?172.html');" target="_self" class="prodtitle">殡葬寿衣</a>
	</div>
</div>


<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?173.html');" target="_self"><img src="../pics/20170522/1495417191.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?173.html');" target="_self" class="prodtitle">殡葬寿衣</a>
	</div>
</div>


<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?205.html');" target="_self"><img src="../pics/20171017/1508213185.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?205.html');" target="_self" class="prodtitle">殡葬寿衣</a>
	</div>
</div>


<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?215.html');" target="_self"><img src="../pics/20171017/1508215194.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?215.html');" target="_self" class="prodtitle">殡葬用品</a>
	</div>
</div>


<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?216.html');" target="_self"><img src="../pics/20171017/1508215206.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?216.html');" target="_self" class="prodtitle">殡葬用品</a>
	</div>
</div>


<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?217.html');" target="_self"><img src="../pics/20171017/1508215225.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?217.html');" target="_self" class="prodtitle">殡葬用品</a>
	</div>
</div>


<div class="productquery_dolphin">
    <div class="productquery_dolphin_top">
		<div class="fang" style="width:210px;height:140px">
		<div class="picFit" style="width:210px;height:140px">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?218.html');" target="_self"><img src="../pics/20171017/1508215237.jpg" style="width:210px;height:140px" border="0"></a>
		</div>
		</div>
	</div>
	<div class="productquery_dolphin_bottom">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?218.html');" target="_self" class="prodtitle">殡葬用品</a>
	</div>
</div>


<script>
$(window).load(function() {
$.picFit("exp");
});
</script>
<div id="showpages">
	  <div id="pagesinfo">共79条 每页12条 页次：1/7</div>
	  <div id="pages"><ul><li class="pbutton"><a href="javascript:window.open('http://www.gansuande.com/product/class/index.php?page=1&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=');">首页</a></li><li class="pbutton">上一页</li><li class="pagesnow">1</li><li><a href="javascript:window.open('http://www.gansuande.com/product/class/index.php?page=2&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=');">2</a></li><li><a href="javascript:window.open('http://www.gansuande.com/product/class/index.php?page=3&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=');">3</a></li><li><a href="javascript:window.open('http://www.gansuande.com/product/class/index.php?page=4&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=');">4</a></li><li><a href="javascript:window.open('http://www.gansuande.com/product/class/index.php?page=5&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=');">5</a></li><li><a href="javascript:window.open('http://www.gansuande.com/product/class/index.php?page=6&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=');">6</a></li><li><a href="javascript:window.open('http://www.gansuande.com/product/class/index.php?page=7&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=');">7</a></li><li class="pbutton"><a href="javascript:window.open('http://www.gansuande.com/product/class/index.php?page=2&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=');">下一页</a></li><li class="opt"><select onchange="window.location=this.options[this.selectedIndex].value"><option value="/product/class/index.php?page=1&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=" selected="">第1页</option><option value="/product/class/index.php?page=2&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第2页</option><option value="/product/class/index.php?page=3&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第3页</option><option value="/product/class/index.php?page=4&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第4页</option><option value="/product/class/index.php?page=5&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第5页</option><option value="/product/class/index.php?page=6&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第6页</option><option value="/product/class/index.php?page=7&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第7页</option></select></li><li class="pbutton"><a href="javascript:window.open('http://www.gansuande.com/product/class/index.php?page=7&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=');">尾页</a></li></ul></div>
     </div>

</div>
</div>

</div>
</div>

<!-- 当前位置提示条 -->

<div id='pdv_16952' class='pdv_class' title='' style='width:995px;height:39px;top:15px;left:257px; z-index:5'>
<div id='spdv_16952' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;background:url(../../base/border/788/images/title.png) 0 0 no-repeat;padding:0px;margin:0px;height:100%;">
 
<link href="../templates/css/nav.css" rel="stylesheet" type="text/css">
<div id="nav">
您现在的位置：<a href="../../Index.html">官网</a> 

</div>

</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_17941' class='pdv_class' title='联系方式' style='width:245px;height:213px;top:251px;left:0px; z-index:7'>
<div id='spdv_17941' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(../../base/border/537/images/title.png) 0 0 no-repeat">
<div style="height:32px;border:0px;padding:0;margin:0;">
    <div style="float:left;width:110px;color:#515151;font:14px/32px 'microsoft yahei',simsun;text-align:center;">联系方式</div>
	<div style="float:right;text-align:right;width:45px;height:32px;background:url(../../base/border/537/images/title.png) -955px 0px no-repeat;"><a href="" style="display:none;">
	<img src="../../base/border/537/images/more.png" style="border:0px;padding-top:15px;"></a></div>
</div>
<div style="margin:0px;padding:6px">


<div style="FONT-SIZE: 12px; COLOR: #333; LINE-HEIGHT: 24px"><span style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;"><b>甘肃安德殡葬服务有限责任公司</b></span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">24小时服务热线：13993147779&nbsp;</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">联系人：肖先生</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">座机：0931-4533338</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">网址：zz.gansuande.com</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">地址：甘肃省兰州市城关区雁滩新港城步行街4008号</span></div>






</div>
</div>

</div>
</div>
</div>
</div>
<div id='bottom' style='width:1258px;height:171px;background:url(../../effect/source/bg/1491902390.jpg) repeat-x transparent'>


<!-- 底部信息编辑区 -->

<div id='pdv_18330' class='pdv_class' title='' style='width:576px;height:85px;top:84px;left:9px; z-index:4'>
<div id='spdv_18330' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/product/class/-1');" style="line-height:25px;">更多</a>
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

<div id='pdv_18328' class='pdv_class' style='width:421px;height:28px;top:40px;left:0px; z-index:6'>
<div id='spdv_18328' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		脚注栏目
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/product/class/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="../../menu/templates/images/bottommenu_1/E.css" rel="stylesheet" type="text/css">
<div id="bottommenu">|

<a href="../../Index.html" target="_self">网站首页</a>|

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

<div id='pdv_18326' class='pdv_class' title='' style='width:409px;height:41px;top:76px;left:849px; z-index:14'>
<div id='spdv_18326' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/product/class/-1');" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">




<a href="javascript:window.open('http://www.gansuande.com/product/class/page/service/contact.php');"><img src="../../advs/pics/20170412/1491980760.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>
</div>
</div><div id='bodyex'>

</div>
<div id='topex' style='display:none;width:100%;height:821px;background:none 0% 0% repeat scroll transparent'>
</div>
<div id='contentex' style='display:none;width:100%;height:691px;background:repeat-y'>
</div>
<div id='bottomex' style='display:none;width:100%;height:171px;background:url(../../effect/source/bg/1491902390.jpg) 0% 0% repeat-x scroll rgba(0, 0, 0, 0)'>
</div>
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
</script>
<script type="text/javascript" src="../../su_new.js"></script>
<script>
    <% SessionFactory sessionFactory =HibernautUtil.getSessionFactory(5);
Session sessions = sessionFactory.openSession();
Transaction t = sessions.beginTransaction();
Query q = sessions.createQuery("from ShouimageEntity ");
List<ShouimageEntity> list = q.list();
Query q1 = sessions.createQuery("from ChanpinEntity ");
List<ChanpinEntity> list1=q1.list();
t.commit();
sessionFactory.close();
sessions.close();
List<ChanpinEntity> shouyilist=new ArrayList<>();
List<ChanpinEntity> guhuihelist=new ArrayList<>();
List<ChanpinEntity> huaquanlist=new ArrayList<>();
for(int i=0;i<list1.size();i++){
if(list1.get(i).getLei().equals("寿衣")){
shouyilist.add(list1.get(i));
}
if(list1.get(i).getLei().equals("骨灰盒")){
guhuihelist.add(list1.get(i));
}
if(list1.get(i).getLei().equals("花圈")){
huaquanlist.add(list1.get(i));
}
}
%>
    var shouyilist=new Array(<%=shouyilist.size()%>);
    shouyilist=<%=JSONArray.fromObject(shouyilist)%>;
    console.log(shouyilist);
    var guhuihelist=new Array(<%=guhuihelist.size()%>);
    guhuihelist=<%=JSONArray.fromObject(shouyilist)%>;
    var huaquanlist=new Array(<%=huaquanlist.size()%>);
    huaquanlist=<%=JSONArray.fromObject(shouyilist)%>;
</script>
</body>
</html>
