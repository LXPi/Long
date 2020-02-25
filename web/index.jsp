<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="com.xc.HibernautUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="com.longimage.ShouimageEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="com.longimage.ChanpinEntity" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="net.sf.json.JSONArray" %>
<%@ page import="com.longimage.ShouyedongtuEntity" %>
<%@ page import="com.longimage.ServicesEntity" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=7">
<title>自贡祥安阁礼仪服务公司-官网</title>
<meta content="自贡祥安阁礼仪服务公司" name="keywords">
<meta content="" name="description">
<link href="base/templates/css/common.css" rel="stylesheet" type="text/css">
    <link href="advs/templates/css/advsgloballb.css" rel="stylesheet" type="text/css">
	<link href="product/templates/css/productlist.css" rel="stylesheet" type="text/css">
<%--<script type="text/javascript" src="../base/js/common.js"></script>--%>
	<%--<link href="Menu/templates/css/dropmenu48.css" rel="stylesheet" type="text/css">--%>
	<script type="text/javascript" src="Js/jquery.js"></script>
	<script type="text/javascript" src="Menu/js/dropmenu48.js"></script>
<script type="text/javascript" src="base/js/form.js"></script>
<script type="text/javascript" src="base/js/blockui.js"></script>
    <script type="text/javascript" src="Js/bootstrap.js"></script>
    <script type="text/javascript" src="Js/ckform.js"></script>
    <script type="text/javascript" src="Js/common.js"></script>
    <script type="text/javascript" src="Js/getUrlParam.js"></script>
    <script type="text/javascript" src="Js/jquery.cookie.js"></script>
    <script type="text/javascript" src="Js/json2.js"></script>
    <%--<script type="text/javascript" src="../Js/jaaulde-cookies.js"></script>--%>
    <%--<script type="text/javascript" src="Js/js.cookie.js"></script>--%>
    <script type="text/javascript" src="su_new.js"></script>
    <script type="text/javascript" src="advs/js/advsgloballb.js"></script>
    <%--<script type="text/javascript" src="scripts/jquery-1.4.2.min.js"></script>--%>
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
			background: url(Menu/templates/images/menu48.png) repeat;
			font: 16px/35px  SimSun,'microsoft yahei',Verdana,Arial;
		}

		#dropmenu li ul{
			margin: 0 0 0 0px;
			padding: 10px 0px;
			width: 100px;
			position: absolute;
			visibility: hidden;
			background: url(Menu/templates/images/smenubg48.png) repeat;
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
		Query q = sessions.createQuery("from ShouimageEntity ");
		List<ShouimageEntity> list = q.list();
		Query q1 = sessions.createQuery("from ChanpinEntity ");
		List<ChanpinEntity> list1=q1.list();
		Query q2=sessions.createQuery("from ShouyedongtuEntity ");
		List<ShouyedongtuEntity> list2=q2.list();
		Query q3=sessions.createQuery("from ServicesEntity ");
		List<ServicesEntity> list3=q3.list();
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
</head>
<body style='background:transparent url(effect/source/bg/1491902298.jpg) no-repeat scroll 50% 0%'>
<script>
var PDV_PAGEID='1'; 
var PDV_RP=''; 
var PDV_COLTYPE='index'; 
var PDV_PAGENAME='index'; 
</script>

<%--<div id='contain' style='background:url(effect/source/bg/1262661247.gif) 0% 0% repeat-y scroll rgba(0, 0, 0, 0);margin:0px auto;padding:0px'>--%>
<div id='contain' style='width:1258px;background:url(effect/source/bg/1262661247.gif) repeat-y;margin:0px auto;padding:0px'>
<%--<font size="-1" color="#FFFFFF">欢迎光自贡祥安阁礼仪服务公司官网！</font>--%>
<%--<div style=" float: right"><font size="-1" color="#FFFFFF"> 全国服务热线：13388320330&nbsp;&nbsp;&nbsp;&nbsp;  15008113875</font></div>--%>
<div id='top' style='width:1258px;height:799px;background:none 0% 0% repeat scroll transparent'>


<!-- 全站通栏轮播广告 -->

<div id='pdv_18461' class='pdv_class' title='' style='width:1258px;height:532px;top:180px;left:0px; z-index:1'>
<div id='spdv_18461' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">

		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.xiangange.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px;overflow:hidden">
<div id="advsexDiv"><a href=""><img src="advs/templates/images/advsgloballb.png"></a></div>
<!--首页滚动图片-->
<div id="simg" style="padding: 0px;overflow:hidden">
<%--<div class="advsexList" style="background:url(advs/pics/20170412/1491980402.jpg) center top no-repeat"><a href=""></a></div>--%>
<%--<div class="advsexList" style="background:url(advs/pics/20170412/1491980406.jpg) center top no-repeat"><a href=""></a></div>--%>
<%--<div class="advsexList" style="background:url(advs/pics/20170412/1491980410.jpg) center top no-repeat"><a href=""></a></div>--%>
</div>

</div>
</div>

</div>
</div>

<!-- 网站标志 -->

<div id='pdv_18454' class='pdv_class' title='' style='width:428px;height:51px;top:80px;left:0px; z-index:8'>
<div id='spdv_18454' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.xiangange.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">
<!--公司名-->
<a href=""><img src="advs/pics/20170412/1491980304.png" border="0"></a>
	<div style="line-height: 24px;font-size: 12px;COLOR: #fff">欢迎光临甘肃安德殡葬服务有限责任公司官网！</div>
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

<div id='pdv_18463' class='pdv_class' style='width:817px;height:39px;top:87px;left:439px; z-index:9'>
<div id='spdv_18463' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		导航菜单
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">
<ul id="dropmenu">

<li><a href="www.xiangange.com">网站首页</a>

</li>

<li><a href="page/html/companys.html">公司简介</a>

</li>

<li><a href="photo/class/server.jsp">服务套餐</a>

</li>

<li><a href="#" onclick="showcanping()">殡葬用品</a>

</li>

<li><a href="photo/class/Index2.jsp">殡葬服务</a>

</li>

<li><a href="page/service/contact.html">联系我们</a>

</li>

</ul>
<div class="clear"> </div>

</div>
</div>

</div>
</div>

<!-- 单行滚动文章列表 -->

<div id='pdv_18457' class='pdv_class' title='' style='width:401px;height:42px;top:741px;left:91px; z-index:11'>
<div id='spdv_18457' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">

		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="news/templates/css/newslist21.css" rel="stylesheet" type="text/css">
<script language="javascript" src="news/js/newslist21.js"></script>
<div id="newsscroll1" class="newslist21">
<ul class="newslist21">
<li class="newslist21"><div class="time">06/27</div><a href="news/html/Index.html" target="_self">华林山殡仪馆电话云南特别殡葬习俗</a></li>
<li class="newslist21"><div class="time">06/19</div><a href="news/html/Index1.html" target="_self">讲述历史上曾经失落的殡葬服务文明</a></li>
<li class="newslist21"><div class="time">06/13</div><a href="news/html/Index2.html" target="_self">丧葬服务农村唢呐或将全面禁止</a></li>
<li class="newslist21"><div class="time">06/07</div><a href="news/html/Index3.html" target="_self">太平天国特殊的殡葬服务</a></li>
<li class="newslist21"><div class="time">05/29</div><a href="news/html/Index4.html" target="_self">丧葬服务经典习俗：七星引路</a></li>
<li class="newslist21"><div class="time">05/25</div><a href="news/html/Index5.html" target="_self">殡葬服务使党员干部率先垂范</a></li>
<li class="newslist21"><div class="time">05/11</div><a href="news/html/Index6.html" target="_self">安德殡葬服务:中国葬礼的起源和历史变迁</a></li>
<li class="newslist21"><div class="time">04/19</div><a href="news/html/Index7.html" target="_self">农村殡葬用品批发习俗有什么讲究</a></li>
<li class="newslist21"><div class="time">04/16</div><a href="news/html/Index8.html" target="_self">日本殡仪馆有什么丧葬文化？</a></li>
<li class="newslist21"><div class="time">04/11</div><a href="news/html/Index9.html" target="_self">什么是生态殡葬，殡葬一条龙服务还是当前主流</a></li>
<li class="newslist21"><div class="time">04/08</div><a href="news/html/Index10.html" target="_self">德国丧葬服务文化你了解吗</a></li>
<li class="newslist21"><div class="time">04/01</div><a href="news/html/Index11.html" target="_self">殡葬服务文化起源点滴</a></li>
<li class="newslist21"><div class="time">03/25</div><a href="news/html/Index12.html" target="_self">丧葬服务为什么人逝去要过头七到满七、百天到三年</a></li>
<li class="newslist21"><div class="time">03/18</div><a href="news/html/Index13.html" target="_self">殡仪馆回忆殡葬文化的变迁</a></li>
<li class="newslist21"><div class="time">03/10</div><a href="news/html/Index14.html" target="_self">佛教徒应该如何举行丧葬服务</a></li>
<li class="newslist21"><div class="time">02/28</div><a href="news/html/Index15.html" target="_self">丧葬服务中丧葬禁忌与化解</a></li>
<li class="newslist21"><div class="time">02/21</div><a href="news/html/Index16.html" target="_self">殡葬服务：火葬和土葬在历史发展中的共性有哪些</a></li>
<li class="newslist21"><div class="time">01/30</div><a href="news/html/Index17.html" target="_self">对于因设施、设备问题可能引起的纠纷，殡仪馆应如何设置相关殡葬</a></li>
<li class="newslist21"><div class="time">01/17</div><a href="news/html/Index18.html" target="_self">华林山殡仪馆电话？</a></li>
<li class="newslist21"><div class="time">05/18</div><a href="news/html/Index19.html" target="_self">哀思鲜花挽联（二）</a></li>
<li class="newslist21"><div class="time">05/18</div><a href="news/html/Index20.html" target="_self">殡葬常识→ 挽联（一）</a></li>
<li class="newslist21"><div class="time">05/18</div><a href="news/html/Index21.html" target="_self">殡葬常识→ 报丧仪式</a></li>
<li class="newslist21"><div class="time">05/18</div><a href="news/html/Index22.html" target="_self">殡葬常识→吊唁仪式</a></li>
<li class="newslist21"><div class="time">05/18</div><a href="news/html/Index23.html" target="_self">殡葬常识→植树葬</a></li>
<li class="newslist21"><div class="time">05/18</div><a href="news/html/Index24.html" target="_self">殡葬常识→海葬</a></li>
<li class="newslist21"><div class="time">05/18</div><a href="news/html/Index25.html" target="_self">殡葬常识→讣闻</a></li>
<li class="newslist21"><div class="time">05/18</div><a href="news/html/Index26.html" target="_self">殡葬常识→哀祭文</a></li>
<li class="newslist21"><div class="time">05/18</div><a href="news/html/Index27.html" target="_self">高悬古朴的树葬</a></li>
</ul></div></div></div></div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_18459' class='pdv_class' title='' style='width:68px;height:25px;top:746px;left:2px; z-index:12'>
<div id='spdv_18459' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
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

<!-- 图片/FLASH -->

<div id='pdv_18458' class='pdv_class' title='图片' style='width:764px;height:66px;top:731px;left:494px; z-index:25'>
<div id='spdv_18458' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		图片
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">


<img src="diy/pics/20170519/1495191244.png" border="0" width="100%">

</div>
</div>

</div>
</div>
</div>
    <%--1920--%>
<div id='content' style='width:1258px;height:1888px;background:none 0% 0% repeat-y scroll rgba(0, 0, 0, 0);margin:0px auto'>
<div  id="guanwang">

<!-- 页内图片广告 -->

<div id='pdv_18103' class='pdv_class' title='' style='width:1258px;height:465px;top:531px;left:0px; z-index:2'>
<div id='spdv_18103' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">




<a href=""><img src="advs/pics/20170411/1491904133.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_17683' class='pdv_class' title='' style='width:208px;height:55px;top:23px;left:11px; z-index:3'>
<div id='spdv_17683' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<div style="FONT-SIZE: 24px; FONT-FAMILY: 'microsoft yahei', Arial, sans-serifl; COLOR: #198EDE; TEXT-ALIGN: left; LINE-HEIGHT: 30px">关于我们</div>
<div style="FONT-SIZE: 18px; FONT-FAMILY: 'microsoft yahei', Arial, sans-serif;  TEXT-ALIGN: left; LINE-HEIGHT: 30px;COLOR: #198EDE; ">ABOUT US</div>


</div>
</div>

</div>
</div>

<!-- 文章列表 -->

<div id='pdv_17677' class='pdv_class' title='' style='width:453px;height:198px;top:1485px;left:763px; z-index:5'>
<div id='spdv_17677' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="news/templates/css/newslist.css" rel="stylesheet" type="text/css">
<ul class="newslist">

<li class="newslist"><a href="news/html/Index.html" target="_self" class="newslist">华林山殡仪馆电话云南特别殡葬习俗</a></li>

<li class="newslist"><a href="news/html/Index1.html" target="_self" class="newslist">讲述历史上曾经失落的殡葬服务文明</a></li>

<li class="newslist"><a href="news/html/Index2.html" target="_self" class="newslist">丧葬服务农村唢呐或将全面禁止</a></li>

<li class="newslist"><a href="news/html/Index3.html" target="_self" class="newslist">太平天国特殊的殡葬服务</a></li>

<li class="newslist"><a href="news/html/Index4.html" target="_self" class="newslist">丧葬服务经典习俗：七星引路</a></li>

<li class="newslist"><a href="news/html/Index5.html" target="_self" class="newslist">殡葬服务使党员干部率先垂范</a></li>

<li class="newslist"><a href="news/html/Index6.html" target="_self" class="newslist">安德殡葬服务:中国葬礼的起源和历史变迁</a></li>

<li class="newslist"><a href="news/html/Index7.html" target="_self" class="newslist">农村殡葬用品批发习俗有什么讲究</a></li>

<li class="newslist"><a href="news/html/Index8.html" target="_self" class="newslist">日本殡仪馆有什么丧葬文化？</a></li>

<li class="newslist"><a href="news/html/Index9.html" target="_self" class="newslist">什么是生态殡葬，殡葬一条龙服务还是当前主流</a></li>

<li class="newslist"><a href="news/html/Index10.html" target="_self" class="newslist">德国丧葬服务文化你了解吗</a></li>

<li class="newslist"><a href="news/html/Index11.html" target="_self" class="newslist">殡葬服务文化起源点滴</a></li>

</ul>

</div>
</div>

</div>
</div>

<!-- 页内图片广告 -->

<div id='pdv_17679' class='pdv_class' title='' style='width:750px;height:252px;top:1440px;left:0px; z-index:6'>
<div id='spdv_17679' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">

		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.xiangange.com/-1');" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">




<a href="photo/class/Index1.html"><img src="advs/pics/20170411/1491904268.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_17220' class='pdv_class' title='关于我们' style='width:444px;height:182px;top:82px;left:0px; z-index:10'>
<div id='spdv_17220' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">
		关于我们
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">
<!--
家属只需拨打一个电话，就可得到客服专员24小时一对一的优质服务。"优质的服务，合理的价格"是祥安阁殡仪长期以来的服务准则。
     我们现设有24小时殡葬礼仪咨询、殡仪策划、定制寿衣、遗像制作、搭棚竖灵、灵堂设计、风水咨询、墓园择位、墓碑像制作、协助办理火化、公墓安葬及安葬礼仪等一条龙服务。 从接到您电话开始，直至您的亲人入土为安的整个过程，我公司都有一对一的客户专员全程为您服务。您只需一个电话，我们将竭诚为您提供尽善尽美的服务，让逝者得到妥善的寿终服务，让亲人得到一份贴心慰藉。-->


<div style="FONT-SIZE: 14px; COLOR: #333; LINE-HEIGHT: 28px"><p class="MsoNormal" align="justify" style="margin: 0px 0px 0px 0pt; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, Arial; font-size: 12px; line-height: 26px; text-align: justify; text-indent: 21pt;"><span style="font-family: 宋体; font-size: 10.5pt;"><span style="line-height: 2;">富顺县祥安阁礼仪服务中心</span><span style="line-height: 2;">是一家专业</span><span style="line-height: 2;">从事临终关怀、遗像制作、殡仪策划、殡仪执行、灵堂搭</span></span><span style="font-family: Calibri; font-size: 10.5pt;"></span></p><p class="MsoNormal" align="justify" style="margin: 0px 0px 0px 0pt; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, Arial; font-size: 12px; line-height: 26px; text-align: justify; text-indent: 21pt;"><span style="font-family: 宋体; font-size: 10.5pt;"><span style="line-height: 2;">建、殡葬礼仪服务（竖灵仪式、祭灵仪式、出殡仪式、告别仪</span><span style="line-height: 2;">式、安葬仪</span><span style="line-height: 2;">式等）、人生告别会场布置</span><span style="line-height: 2;">、追思会主持及会场布置、安葬现场布置、法事服务、风水咨询及公</span></span><span style="font-family: 宋体; font-size: 10.5pt;"></span></p><p class="MsoNormal" align="justify" style="margin: 0px 0px 0px 0pt; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, Arial; font-size: 12px; line-height: 26px; text-align: justify; text-indent: 21pt;"><span style="line-height: 2; font-family: 宋体; font-size: 10.5pt;">墓销售为一体的大型综合型服务性单位。我公司以大型高端灵堂设计布</span><span style="font-family: 宋体; font-size: 10.5pt;"><span style="line-height: 2;">置和室内灵堂设计布置为特色，在此类客户中享有非常高的声誉</span><span style="line-height: 2;">和肯定！祥安阁礼仪服务中</span></span><span style="font-family: 宋体; font-size: 10.5pt;"></span></p><p class="MsoNormal" align="justify" style="margin: 0px 0px 0px 0pt; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, Arial; font-size: 12px; line-height: 26px; text-align: justify; text-indent: 21pt;"><span style="font-family: 宋体; font-size: 10.5pt;"><span style="line-height: 2;">中心是四川地区引入现代葬服务理念的专业殡葬礼仪服务团</span><span style="line-height: 2;">24</span><span style="line-height: 2;">队！我们立足于对生命的思考、</span><span style="line-height: 2;">&nbsp;</span></span><span style="font-family: 宋体; font-size: 10.5pt;"><br></span><span style="line-height: 2; font-family: 宋体; font-size: 10.5pt;">理解和感悟，致力于发掘、提炼和呈现逝者的精彩故事和美丽篇章；秉承"呈现逝者生命的精彩和美丽，感悟人生生命的意义和价值"的服务理念，以丰富、细腻的情感及现代与传统相结合的形式来表现，让告别</span></p><p class="MsoNormal" align="justify" style="margin: 0px 0px 0px 0pt; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, Arial; font-size: 12px; line-height: 26px; text-align: justify; text-indent: 21pt;"><span style="font-family: 宋体; font-size: 10.5pt;"></span><span style="font-family: 宋体; font-size: 10.5pt;"><span style="line-height: 2;">变得美丽，变得绚丽多姿，让人性的光辉照亮一切！更为引导生者</span><span style="line-height: 2;">——</span></span><span style="font-family: 宋体; font-size: 10.5pt;"></span></p><p class="MsoNormal" align="justify" style="margin: 0px 0px 0px 0pt; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, Arial; font-size: 12px; line-height: 26px; text-align: justify; text-indent: 21pt;"><span style="line-height: 2; font-family: Calibri; font-size: 10.5pt;"><span style="line-height: 2;"><strong>健康积极地</strong></span></span></p><p class="MsoNormal" align="justify" style="margin: 0px 0px 0px 0pt; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, Arial; font-size: 12px; line-height: 26px; text-align: justify; text-indent: 21pt;"><span style="font-family: Calibri; font-size: 10.5pt;"></span><span style="line-height: 2; font-family: Calibri; font-size: 10.5pt;">生活而努力，用我们一份挚热的</span></p><p class="MsoNormal" align="justify" style="margin: 0px 0px 0px 0pt; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, Arial; font-size: 12px; line-height: 26px; text-align: justify; text-indent: 21pt;"><span style="font-family: Calibri; font-size: 10.5pt;"><strong><span style="line-height: 2;">24</span></strong><span style="line-height: 2;"><strong>小服务带给家属</strong></span></span></p><p class="MsoNormal" align="justify" style="margin: 0px 0px 0px 0pt; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, Arial; font-size: 12px; line-height: 26px; text-align: justify; text-indent: 21pt;"><span style="font-family: Calibri; font-size: 10.5pt;"></span><span style="line-height: 2; font-family: Calibri; font-size: 10.5pt;">温馨的呵护！我们设立有24小时服务热线:13388320330&nbsp;&nbsp;</span></p><p class="MsoNormal" align="justify" style="margin: 0px 0px 0px 0pt; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, Arial; font-size: 12px; line-height: 26px; text-align: justify; text-indent: 21pt;"><span style="font-family: Calibri; font-size: 10.5pt;"></span><span style="line-height: 2; font-family: Calibri; font-size: 10.5pt;"><span style="line-height: 2;"><strong>地址：</strong></span></span></p><p class="MsoNormal" align="justify" style="margin: 0px 0px 0px 0pt; padding: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, Arial; font-size: 12px; line-height: 26px; text-align: justify; text-indent: 21pt;"><span style="line-height: 2; font-family: Calibri; font-size: 10.5pt;">四川省自贡市富顺县</span><span style="line-height: 2; font-family: Calibri; font-size: 10.5pt;">富世镇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p></div>












</div>
</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id='pdv_18102' class='pdv_class' title='' style='width:1258px;height:84px;top:542px;left:0px; z-index:13'>
<div id='spdv_18102' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">



<div style="FONT-SIZE: 24px; FONT-FAMILY: 'microsoft yahei', Arial, sans-serifl; COLOR: #fff; TEXT-ALIGN: center; LINE-HEIGHT: 40px">产品展示</div>
<div style="FONT-SIZE: 20px; FONT-FAMILY: 'microsoft yahei', Arial, sans-serif;  TEXT-ALIGN: center; LINE-HEIGHT: 40px;COLOR: #fff;">PRODUCT CENTER</div>








</div>
</div>

</div>
</div>



<!-- 页内图片广告 -->

<div id='pdv_18101' class='pdv_class' title='' style='width:136px;height:47px;top:278px;left:302px; z-index:16'>
<div id='spdv_18101' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">




<a href="page/service/contact.html"><img src="advs/pics/20170411/1491903907.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>

<!-- 页内图片广告 -->

<div id='pdv_18099' class='pdv_class' title='' style='width:129px;height:45px;top:278px;left:158px; z-index:17'>
<div id='spdv_18099' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">




<a href="page/html/companys.html"><img src="advs/pics/20170411/1491903873.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>

<!-- 图片+名称 -->

<div id='pdv_18105' class='pdv_class' title='' style='width:1258px;height:176px;top:1701px;left:0px; z-index:18'>
<div id='spdv_18105' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">
		
		</div>
		<div style="float:right;margin-right:10px;display:inline">
		<a href="photo/class/Index1.html" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="photo/templates/css/photopic.css" rel="stylesheet" type="text/css">

<ul class="photopic">

<li>
<div class="fang" style="width:195px;height:140px">
	<div class="picFit" style="width:195px;height:140px">
	<a href="photo/html/Index.html" target="_self"><img src="photo/pics/20171017/1508216706.jpg" style="width:195px;height:140px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="photo/html/Index.html" target="_self" class="title">殡葬服务</a>
</div>
</li>

<li>
<div class="fang" style="width:195px;height:140px">
	<div class="picFit" style="width:195px;height:140px">
	<a href="photo/html/Index1.html" target="_self"><img src="photo/pics/20171017/1508214532.jpg" style="width:195px;height:140px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="photo/html/Index1.html" target="_self" class="title">殡葬服务</a>
</div>
</li>

<li>
<div class="fang" style="width:195px;height:140px">
	<div class="picFit" style="width:195px;height:140px">
	<a href="photo/html/Index2.html" target="_self"><img src="photo/pics/20171017/1508214413.jpg" style="width:195px;height:140px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="photo/html/Index2.html" target="_self" class="title">丧葬服务</a>
</div>
</li>

<li>
<div class="fang" style="width:195px;height:140px">
	<div class="picFit" style="width:195px;height:140px">
	<a href="photo/html/Index3.html" target="_self"><img src="photo/pics/20171017/1508214398.jpg" style="width:195px;height:140px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="photo/html/Index3.html" target="_self" class="title">丧葬服务</a>
</div>
</li>

<li>
<div class="fang" style="width:195px;height:140px">
	<div class="picFit" style="width:195px;height:140px">
	<a href="photo/html/Index4.html" target="_self"><img src="photo/pics/20171017/1508214379.jpg" style="width:195px;height:140px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="photo/html/Index4.html" target="_self" class="title">丧葬服务</a>
</div>
</li>

<li>
<div class="fang" style="width:195px;height:140px">
	<div class="picFit" style="width:195px;height:140px">
	<a href="photo/html/Index5.html" target="_self"><img src="photo/pics/20171017/1508214351.jpg" style="width:195px;height:140px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="photo/html/Index5.html" target="_self" class="title">殡葬一条龙服务</a>
</div>
</li>

<li>
<div class="fang" style="width:195px;height:140px">
	<div class="picFit" style="width:195px;height:140px">
	<a href="javascript:window.open('http://www.gansuande.com/photo/html/?128.html');" target="_self"><img src="photo/pics/20171017/1508214332.jpg" style="width:195px;height:140px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="javascript:window.open('http://www.gansuande.com/photo/html/?128.html');" target="_self" class="title">殡葬一条龙服务</a>
</div>
</li>

</ul>
<script>
$(function() {
$().picFit("fill");
});
</script>

</div>
</div>

</div>
</div>

<!-- 产品列表滑动门10 -->

<div id='pdv_18104' class='pdv_class' title='' style='width:1208px;height:233px;top:686px;left:32px; z-index:19'>
<div id='spdv_18104' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<link href="product/templates/css/productroll10.css" type="text/css" rel="stylesheet">
<script src="product/js/productroll10.js" type="text/javascript"></script>
<div class="productlistx">
		<div class="blkproductlistx">
			<div class="LeftButton" id="LeftArr1"></div>
			<div class="Cont" id="ISL_Cont_11" style="overflow:hidden;">

					<div class="box">
						<div class="fang">
						<a href="product/class/Index.html" target="_self"><img src="product/pics/20171017/1508216671.jpg" width="270px" height="220px"></a></div>
						<a href="" target="_self" class="prodtitle">殡葬用品</a>
					</div>
				<div style="display: none">
					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?221.html');" target="_self"><img src="product/pics/20171017/1508216659.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?220.html');" target="_self"><img src="product/pics/20171017/1508216647.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?219.html');" target="_self"><img src="product/pics/20171017/1508216632.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?218.html');" target="_self"><img src="product/pics/20171017/1508215237.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?217.html');" target="_self"><img src="product/pics/20171017/1508215225.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?216.html');" target="_self"><img src="product/pics/20171017/1508215206.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?215.html');" target="_self"><img src="product/pics/20171017/1508215194.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?214.html');" target="_self"><img src="product/pics/20171017/1508214738.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">陵园</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?213.html');" target="_self"><img src="product/pics/20171017/1508214721.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">陵园</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?212.html');" target="_self"><img src="product/pics/20171017/1508214704.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">陵园</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?211.html');" target="_self"><img src="product/pics/20171017/1508214677.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">陵园</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?210.html');" target="_self"><img src="product/pics/20171017/1508214665.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">陵园</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?209.html');" target="_self"><img src="product/pics/20171017/1508214651.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">陵园</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?208.html');" target="_self"><img src="product/pics/20171017/1508214639.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">陵园</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?207.html');" target="_self"><img src="product/pics/20171017/1508214626.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">陵园</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?206.html');" target="_self"><img src="product/pics/20171017/1508214613.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">陵园</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?205.html');" target="_self"><img src="product/pics/20171017/1508213185.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?204.html');" target="_self"><img src="product/pics/20171017/1508213036.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?203.html');" target="_self"><img src="product/pics/20171017/1508213025.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?202.html');" target="_self"><img src="product/pics/20171017/1508213003.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?201.html');" target="_self"><img src="product/pics/20171017/1508212983.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?200.html');" target="_self"><img src="product/pics/20171017/1508212964.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?199.html');" target="_self"><img src="product/pics/20170522/1495417898.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?198.html');" target="_self"><img src="product/pics/20170522/1495417882.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?197.html');" target="_self"><img src="product/pics/20170522/1495417873.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?196.html');" target="_self"><img src="product/pics/20170522/1495417863.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?195.html');" target="_self"><img src="product/pics/20170522/1495417854.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?194.html');" target="_self"><img src="product/pics/20170522/1495417845.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?193.html');" target="_self"><img src="product/pics/20170522/1495417835.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?192.html');" target="_self"><img src="product/pics/20170522/1495417823.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?191.html');" target="_self"><img src="product/pics/20170522/1495417812.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?190.html');" target="_self"><img src="product/pics/20170522/1495417803.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?189.html');" target="_self"><img src="product/pics/20170522/1495417792.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?188.html');" target="_self"><img src="product/pics/20170522/1495417782.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?187.html');" target="_self"><img src="product/pics/20170522/1495417772.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?186.html');" target="_self"><img src="product/pics/20170522/1495417747.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬用品</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?185.html');" target="_self"><img src="product/pics/20170522/1495417349.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">鲜花圈花篮</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?184.html');" target="_self"><img src="product/pics/20170522/1495417339.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">鲜花圈花篮</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?183.html');" target="_self"><img src="product/pics/20170522/1495417327.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">鲜花圈花篮</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?182.html');" target="_self"><img src="product/pics/20170522/1495417313.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">鲜花圈花篮</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?181.html');" target="_self"><img src="product/pics/20170522/1495417301.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">鲜花圈花篮</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?180.html');" target="_self"><img src="product/pics/20170522/1495417290.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">鲜花圈花篮</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?179.html');" target="_self"><img src="product/pics/20170522/1495417280.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">鲜花圈花篮</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?178.html');" target="_self"><img src="product/pics/20170522/1495417269.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">鲜花圈花篮</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?177.html');" target="_self"><img src="product/pics/20170522/1495417258.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">鲜花圈花篮</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?176.html');" target="_self"><img src="product/pics/20170522/1495417243.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">鲜花圈花篮</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?175.html');" target="_self"><img src="product/pics/20170522/1495417212.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?174.html');" target="_self"><img src="product/pics/20170522/1495417201.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?173.html');" target="_self"><img src="product/pics/20170522/1495417191.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?172.html');" target="_self"><img src="product/pics/20170522/1495417182.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?171.html');" target="_self"><img src="product/pics/20170522/1495417170.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?170.html');" target="_self"><img src="product/pics/20170522/1495417159.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?169.html');" target="_self"><img src="product/pics/20170522/1495417147.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?168.html');" target="_self"><img src="product/pics/20170522/1495417137.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?167.html');" target="_self"><img src="product/pics/20170522/1495417126.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?166.html');" target="_self"><img src="product/pics/20170522/1495417115.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?165.html');" target="_self"><img src="product/pics/20170522/1495417085.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?164.html');" target="_self"><img src="product/pics/20170522/1495417077.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?163.html');" target="_self"><img src="product/pics/20170522/1495417069.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?162.html');" target="_self"><img src="product/pics/20170522/1495417060.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?161.html');" target="_self"><img src="product/pics/20170522/1495417051.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?160.html');" target="_self"><img src="product/pics/20170522/1495417039.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?159.html');" target="_self"><img src="product/pics/20170522/1495417026.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?158.html');" target="_self"><img src="product/pics/20170522/1495417018.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?157.html');" target="_self"><img src="product/pics/20170522/1495417004.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?156.html');" target="_self"><img src="product/pics/20170522/1495416991.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?155.html');" target="_self"><img src="product/pics/20170519/1495193419.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">殡葬寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?154.html');" target="_self"><img src="product/pics/20170519/1495193402.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?153.html');" target="_self"><img src="product/pics/20170519/1495190530.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?152.html');" target="_self"><img src="product/pics/20170519/1495190506.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?151.html');" target="_self"><img src="product/pics/20170519/1495190117.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?150.html');" target="_self"><img src="product/pics/20170518/1495072591.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?149.html');" target="_self"><img src="product/pics/20170518/1495072591.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?148.html');" target="_self"><img src="product/pics/20170518/1495072574.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?147.html');" target="_self"><img src="product/pics/20170518/1495072562.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">寿衣</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?146.html');" target="_self"><img src="product/pics/20170518/1495072523.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?145.html');" target="_self"><img src="product/pics/20170518/1495072513.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>

					<%--<div class="box">--%>
					<%--<div class="fang">--%>
					<%--<a href="javascript:window.open('http://www.gansuande.com/product/html/?144.html');" target="_self"><img src="product/pics/20170518/1495072500.jpg" width="270px" height="220px"></a></div>--%>
					<%--<a href="" target="_self" class="prodtitle">骨灰盒</a>--%>
					<%--</div>--%>
				</div>

<script>
    var shouyedongtu=new Array(<%=list2.size()%>);
    shouyedongtu=<%=list2%>;
    //寿衣集
    for(var a=0;a<<%=list2.size()%>;a++){
var ss="<div class='box'><div class='fang'><a href='product/class/Index.html' target='_self'><img src='product/pics/20171017/1508216671.jpg' width='270px' height='220px'></a></div><a href='#' target='_self' class='prodtitle'>殡葬用品</a></div>";
        // console.log(shouyilist[a].imgurl+","+shouyilist[a].name);
        $("#ISL_Cont_11").append(ss);
    }
    $("#ISL_Cont_11").trigger("create");
    $("<link>").attr({ rel: "stylesheet",
        type: "text/css",
        href: "product/templates/css/productroll10.css"
    }).appendTo("head");
</script>5
			</div>
			<div class="RightButton" id="RightArr1"></div>
<script language="javascript" type="text/javascript">
<!--//--><![CDATA[//><!--
var scrollPic_03 = new ScrollPic();
scrollPic_03.scrollContId   = "ISL_Cont_11"; //内容容器ID
scrollPic_03.arrLeftId      = "LeftArr1";//左箭头ID
scrollPic_03.arrRightId     = "RightArr1"; //右箭头ID

scrollPic_03.frameWidth     = 1258;//显示框宽度
scrollPic_03.pageWidth      = 2; //翻页宽度

scrollPic_03.speed          = 80; //移动速度(单位毫秒，越小越快)
scrollPic_03.space          = 1; //每次移动像素(单位px，越大越快)
scrollPic_03.autoPlay       = true; //自动播放
scrollPic_03.autoPlayTime   = 0; //自动播放间隔时间(秒)

scrollPic_03.initialize(); //初始化
							
		//--><!]]>
</script>
		</div>
</div>

</div>
</div>

</div>
</div>

<!-- 页内图片广告 -->

<div id='pdv_18261' class='pdv_class' title='' style='width:66px;height:29px;top:1448px;left:1181px; z-index:21'>
<div id='spdv_18261' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">




<a href="javascript:window.open('http://www.gansuande.com/news/class/');"><img src="advs/pics/20170412/1491980621.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>

<!-- 产品分类（列表） -->

<div id='pdv_18260' class='pdv_class' title='' style='width:397px;height:46px;top:636px;left:447px; z-index:22'>
<div id='spdv_18260' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:12px">

<link href="product/templates/css/productclass.css" rel="stylesheet" type="text/css">
<ul class="productclass">


<li class="productclass">
<a href="javascript:window.open('http://www.gansuande.com/product/class/?126.html');" target="_self" class="productclass">骨灰盒</a>
</li>


<li class="productclass">
<a href="javascript:window.open('http://www.gansuande.com/product/class/?127.html');" target="_self" class="productclass">寿衣</a>
</li>


<li class="productclass">
<a href="javascript:window.open('http://www.gansuande.com/product/class/?128.html');" target="_self" class="productclass">鲜花圈花篮</a>
</li>


<li class="productclass">
<a href="javascript:window.open('http://www.gansuande.com/product/class/?136.html');" target="_self" class="productclass">更多产品</a>
</li>
 
</ul>

</div>
</div>

</div>
</div>

<!-- 自选产品列表 -->

<div id='pdv_18416' class='pdv_class' title='骨灰盒' style='width:1258px;height:194px;top:1001px;left:0px; z-index:23'>
<div id='spdv_18416' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(base/border/537/images/title.png) 0 0 no-repeat">
<div style="height:32px;border:0px;padding:0;margin:0;">
    <div style="float:left;width:110px;color:#515151;font:14px/32px 'microsoft yahei',simsun;text-align:center;">骨灰盒</div>
	<div style="float:right;text-align:right;width:45px;height:32px;background:url(base/border/537/images/title.png) -955px 0px no-repeat;"><a href="javascript:window.open('http://www.gansuande.com/product/class/?126.html');" style="display:inline;">
	<img src="base/border/537/images/more.png" style="border:0px;padding-top:15px;"></a></div>
</div>
<div style="margin:0px;padding:10px" id="ssg">

<link href="product/templates/css/productlist.css" rel="stylesheet" type="text/css">
<!--
<div class="productlist">
	<div class="fang" style="width:175px;height:120px">
	<div class="picFit" style="width:175px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?204.html');" target="_self"><img src="product/pics/20171017/1508213036.jpg" style="width:175px;height:120px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?204.html');" target="_self" class="title">殡葬骨灰盒</a>
	</div>
</div>-->
<!--
<div class="productlist">
	<div class="fang" style="width:175px;height:120px">
	<div class="picFit" style="width:175px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?203.html');" target="_self"><img src="product/pics/20171017/1508213025.jpg" style="width:175px;height:120px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?203.html');" target="_self" class="title">骨灰盒</a>
	</div>
</div>

<div class="productlist">
	<div class="fang" style="width:175px;height:120px">
	<div class="picFit" style="width:175px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?202.html');" target="_self"><img src="product/pics/20171017/1508213003.jpg" style="width:175px;height:120px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?202.html');" target="_self" class="title">骨灰盒</a>
	</div>
</div>

<div class="productlist">
	<div class="fang" style="width:175px;height:120px">
	<div class="picFit" style="width:175px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?201.html');" target="_self"><img src="product/pics/20171017/1508212983.jpg" style="width:175px;height:120px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?201.html');" target="_self" class="title">骨灰盒</a>
	</div>
</div>

<div class="productlist">
	<div class="fang" style="width:175px;height:120px">
	<div class="picFit" style="width:175px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?200.html');" target="_self"><img src="product/pics/20171017/1508212964.jpg" style="width:175px;height:120px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?200.html');" target="_self" class="title">骨灰盒</a>
	</div>
</div>

<div class="productlist">
	<div class="fang" style="width:175px;height:120px">
	<div class="picFit" style="width:175px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?175.html');" target="_self"><img src="product/pics/20170522/1495417212.jpg" style="width:175px;height:120px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?175.html');" target="_self" class="title">寿衣</a>
	</div>
</div>-->

<script>
$(function() {
$().picFit("fill");
});
</script>

</div>
</div>

</div>
</div>

<!-- 自选产品列表 -->

<div id='pdv_18418' class='pdv_class' title='寿衣' style='width:1257px;height:236px;top:1199px;left:1px; z-index:24'>
<div id='spdv_18418' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(base/border/537/images/title.png) 0 0 no-repeat">
<div style="height:32px;border:0px;padding:0;margin:0;">
    <div style="float:left;width:110px;color:#515151;font:14px/32px 'microsoft yahei',simsun;text-align:center;">寿衣</div>
	<div style="float:right;text-align:right;width:45px;height:32px;background:url(base/border/537/images/title.png) -955px 0px no-repeat;"><a href="javascript:window.open('http://www.gansuande.com/product/class/?127.html');" style="display:inline;">
	<img src="base/border/537/images/more.png" style="border:0px;padding-top:15px;"></a></div>
</div>
<div style="margin:0px;padding:10px;"  id="ssb">
	<%--<div class='productlist'> <div class='fang' style='width:175px;height:153px'> <div class='picFit' style='width:175px;height:153px'><img src='images/xuebao.png' style='width:175px;height:153px' border='0'/></div> </div> <div class='title'>ABC</div> </div>--%>
</div>

<!--
<div class="productlist">
	<div class="fang" style="width:175px;height:153px">
	<div class="picFit" style="width:175px;height:153px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?205.html');" target="_self"><img src="product/pics/20171017/1508213185.jpg" style="width:175px;height:153px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?205.html');" target="_self" class="title">殡葬寿衣</a>
	</div>
</div>

<div class="productlist">
	<div class="fang" style="width:175px;height:153px">
	<div class="picFit" style="width:175px;height:153px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?173.html');" target="_self"><img src="product/pics/20170522/1495417191.jpg" style="width:175px;height:153px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?173.html');" target="_self" class="title">殡葬寿衣</a>
	</div>
</div>

<div class="productlist">
	<div class="fang" style="width:175px;height:153px">
	<div class="picFit" style="width:175px;height:153px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?172.html');" target="_self"><img src="product/pics/20170522/1495417182.jpg" style="width:175px;height:153px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?172.html');" target="_self" class="title">殡葬寿衣</a>
	</div>
</div>

<div class="productlist">
	<div class="fang" style="width:175px;height:153px">
	<div class="picFit" style="width:175px;height:153px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?171.html');" target="_self"><img src="product/pics/20170522/1495417170.jpg" style="width:175px;height:153px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?171.html');" target="_self" class="title">殡葬寿衣</a>
	</div>
</div>

<div class="productlist">
	<div class="fang" style="width:175px;height:153px">
	<div class="picFit" style="width:175px;height:153px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?170.html');" target="_self"><img src="product/pics/20170522/1495417159.jpg" style="width:175px;height:153px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?170.html');" target="_self" class="title">殡葬寿衣</a>
	</div>
</div>

<div class="productlist">
	<div class="fang" style="width:175px;height:153px">
		<div class="picFit" style="width:175px;height:153px">
			<a href="javascript:window.open('http://www.gansuande.com/product/html/?169.html');" target="_self"><img src="product/pics/20170522/1495417147.jpg" style="width:175px;height:153px" border="0"></a>
		</div>
	</div>
	<div class="title">
		<a href="javascript:window.open('http://www.gansuande.com/product/html/?169.html');" target="_self" class="title">殡葬寿衣</a>
	</div>
</div>
<div class="productlist">
	<div class="fang" style="width:175px;height:153px">
	<div class="picFit" style="width:175px;height:153px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?168.html');" target="_self"><img src="product/pics/20170522/1495417137.jpg" style="width:175px;height:153px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?168.html');" target="_self" class="title">寿衣</a>
	</div>
</div>

<div class="productlist">
	<div class="fang" style="width:175px;height:153px">
	<div class="picFit" style="width:175px;height:153px">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?167.html');" target="_self"><img src="product/pics/20170522/1495417126.jpg" style="width:175px;height:153px" border="0"></a>
	</div>
	</div>
	<div class="title">
	<a href="javascript:window.open('http://www.gansuande.com/product/html/?167.html');" target="_self" class="title">寿衣</a>
	</div>
</div>-->

<script>
$(function() {
$().picFit("fill");
});
</script>


</div>

</div>
</div>

<!-- 图片+名称 -->

<div id='pdv_18465' class='pdv_class' title='合作医院' style='width:1258px;height:195px;top:332px;left:0px; z-index:26'>
<div id='spdv_18465' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(base/border/537/images/title.png) 0 0 no-repeat">
<div style="height:32px;border:0px;padding:0;margin:0;">
    <div style="float:left;width:110px;color:#515151;font:14px/32px 'microsoft yahei',simsun;text-align:center;">合作医院</div>
	<div style="float:right;text-align:right;width:45px;height:32px;background:url(base/border/537/images/title.png) -955px 0px no-repeat;"><a href="photo/class/Index3.html" style="display:inline;">
	<img src="base/border/537/images/more.png" style="border:0px;padding-top:15px;"></a></div>
</div>
<div style="margin:0px;padding:10px">

<link href="photo/templates/css/photopic.css" rel="stylesheet" type="text/css">

<ul class="photopic">

<li>
<div class="fang" style="width:192px;height:120px">
	<div class="picFit" style="width:192px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/photo/html/?117.html');" target="_self"><img src="photo/pics/20170519/1495193718.jpg" style="width:192px;height:120px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="javascript:window.open('http://www.gansuande.com/photo/html/?117.html');" target="_self" class="title">石化总医院</a>
</div>
</li>

<li>
<div class="fang" style="width:192px;height:120px">
	<div class="picFit" style="width:192px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/photo/html/?116.html');" target="_self"><img src="photo/pics/20170519/1495193695.jpg" style="width:192px;height:120px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="javascript:window.open('http://www.gansuande.com/photo/html/?116.html');" target="_self" class="title">五0四医院</a>
</div>
</li>

<li>
<div class="fang" style="width:192px;height:120px">
	<div class="picFit" style="width:192px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/photo/html/?115.html');" target="_self"><img src="photo/pics/20170519/1495193667.jpg" style="width:192px;height:120px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="javascript:window.open('http://www.gansuande.com/photo/html/?115.html');" target="_self" class="title">兰州军区兰州总医院</a>
</div>
</li>

<li>
<div class="fang" style="width:192px;height:120px">
	<div class="picFit" style="width:192px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/photo/html/?114.html');" target="_self"><img src="photo/pics/20170519/1495193631.jpg" style="width:192px;height:120px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="javascript:window.open('http://www.gansuande.com/photo/html/?114.html');" target="_self" class="title">甘肃省军区医院</a>
</div>
</li>

<li>
<div class="fang" style="width:192px;height:120px">
	<div class="picFit" style="width:192px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/photo/html/?113.html');" target="_self"><img src="photo/pics/20170519/1495193595.jpg" style="width:192px;height:120px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="javascript:window.open('http://www.gansuande.com/photo/html/?113.html');" target="_self" class="title"> 兰州大学第二医院西固</a>
</div>
</li>

<li>
<div class="fang" style="width:192px;height:120px">
	<div class="picFit" style="width:192px;height:120px">
	<a href="javascript:window.open('http://www.gansuande.com/photo/html/?102.html');" target="_self"><img src="photo/pics/20170518/1495079505.jpg" style="width:192px;height:120px" border="0"></a>
	</div>
</div>
<div class="title">
<a href="javascript:window.open('http://www.gansuande.com/photo/html/?102.html');" target="_self" class="title">石化总医院</a>
</div>
</li>

</ul>
<script>
$(function() {
$().picFit("fill");
});
</script>

</div>
</div>

</div>
</div>

<!-- 图片/FLASH -->

<div id='pdv_18496' class='pdv_class' title='图片' style='width:176px;height:42px;top:1441px;left:760px; z-index:27'>
<div id='spdv_18496' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		图片
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">


<img src="diy/pics/20170519/1495197132.jpg" border="0" width="100%"/>

</div>
</div>

</div>
</div>

<!-- 图片/FLASH -->

<div id='pdv_18502' class='pdv_class' title='图片' style='width:292px;height:65px;top:244px;left:965px; z-index:28'>
<div id='spdv_18502' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		图片
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">


<a href="javascript:window.open('http://www.gansuande.com/photo/class/?22.html');"><img src="diy/pics/20170519/1495201421.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>

<!-- 图片/FLASH -->

<div id='pdv_18500' class='pdv_class' title='图片' style='width:282px;height:75px;top:99px;left:962px; z-index:29'>
<div id='spdv_18500' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		图片
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">


<a href="javascript:window.open('http://www.gansuande.com/photo/class/?24.html');"><img src="diy/pics/20170519/1495201329.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>

<!-- 图片/FLASH -->

<div id='pdv_18501' class='pdv_class' title='图片' style='width:295px;height:73px;top:173px;left:963px; z-index:30'>
<div id='spdv_18501' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		图片
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">


<a href="photo/class/Index4.html"><img src="diy/pics/20170519/1495201360.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>

<!-- 图片/FLASH -->

<div id='pdv_18499' class='pdv_class' title='图片' style='width:275px;height:72px;top:31px;left:960px; z-index:31'>
<div id='spdv_18499' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		图片
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">


<a href="photo/class/Index5.html"><img src="diy/pics/20170519/1495201292.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>

<!-- 图片/FLASH -->

<div id='pdv_18503' class='pdv_class' title='图片' style='width:88px;height:288px;top:40px;left:872px; z-index:32'>
<div id='spdv_18503' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		图片
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">


<img src="diy/pics/20170519/1495201868.jpg" border="0" width="100%">

</div>
</div>

</div>
</div>

<!-- 页内图片广告 -->

<div id='pdv_18504' class='pdv_class' title='广告位' style='width:371px;height:287px;top:37px;left:482px; z-index:33'>
<div id='spdv_18504' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;background:#fff;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">
		广告位
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">




<a href="photo/class/Index6.html"><img src="advs/pics/20170519/1495203354.jpg" border="0" width="100%"></a>

</div>
</div>

</div>
</div>
</div>
	<div id="canpinshow" style="display:none;">

		<!-- 产品分类（列表） -->

		<div id='pdv_16950' class='pdv_class' title='产品系列' style='width:245px;height:224px;top:15px;left:0px; z-index:1'>
			<div id='spdv_16950' class='pdv_content' style='overflow:visible;width:100%;'>
				<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(base/border/537/images/title.png) 0 0 no-repeat">
					<div style="height:32px;border:0px;padding:0;margin:0;">
						<div style="float:left;width:110px;color:#515151;font:14px/32px 'microsoft yahei',simsun;text-align:center;">产品系列</div>
						<div style="float:right;text-align:right;width:45px;height:32px;background:url(base/border/537/images/title.png) -955px 0px no-repeat;"><a href="javascript:window.open('http://www.gansuande.com/product/class/-1');" style="display:none;">
							<img src="base/border/537/images/more.png" style="border:0px;padding-top:15px;"></a></div>
					</div>
					<div style="margin:0px;padding:0px">

						<link href="product/templates/css/productclass_dolphin.css" rel="stylesheet" type="text/css">
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

						<link href="product/templates/css/productquery_dolphin.css" rel="stylesheet" type="text/css">
<div id="showcanpin">

</div>

						<script>
                            $(window).load(function() {
                                $.picFit("exp");
                            });
						</script>
						<div id="showpages">
							<div id="pagesinfo"></div>

							<div id="pages">
								<ul>
									<li class="pbutton"><a href="#" onclick="backguan()">首页</a></li>
									<li class="pbutton"><a onclick="lost()">上一页</a></li>
									<%--<li class="pagesnow"><a onclick="tiaoye()">1</a></li>--%>
									<%--<li><a href="">2</a></li><li><a href="#">3</a></li><li><a href="#">4</a></li>--%>
									<%--<li><a href="#">5</a></li><li><a href="#">6</a></li><li><a href="#">7</a></li>--%>
									<span id="yeshu"></span>
									<li class="pbutton"><a onclick="backxia()">下一页</a></li>
									<li class="opt"><select onchange="tiaoxia(this.selectedIndex+1)" id="selectxuan"><%--onchange="window.location=this.options[this.selectedIndex].value"--%>
											<%--<option value="/product/class/index.php?page=1&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=" selected="">第1页</option>--%>
											<%--<option value="/product/class/index.php?page=2&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第2页</option>--%>
											<%--<option value="/product/class/index.php?page=3&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第3页</option>--%>
											<%--<option value="/product/class/index.php?page=4&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第4页</option>--%>
											<%--<option value="/product/class/index.php?page=5&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第5页</option>--%>
											<%--<option value="/product/class/index.php?page=6&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第6页</option>--%>
											<%--<option value="/product/class/index.php?page=7&amp;catid=0&amp;myord=uptime&amp;myshownums=&amp;showtj=&amp;author=&amp;key=">第7页</option>--%>
										</select>
									</li>
									<li class="pbutton"><a onclick="tiaoxia(yeshu)">尾页</a></li></ul></div>
						</div>

					</div>
				</div>

			</div>
		</div>

		<!-- 当前位置提示条 -->

		<div id='pdv_16952' class='pdv_class' title='' style='width:995px;height:39px;top:15px;left:257px; z-index:5'>
			<div id='spdv_16952' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
				<div class="pdv_border" style="border:0px;background:url(base/border/788/images/title.png) 0 0 no-repeat;padding:0px;margin:0px;height:100%;">

					<link href="product/templates/css/nav.css" rel="stylesheet" type="text/css">
					<div id="nav">
						您现在的位置：<a href="#" onclick="backguan()">官网</a>

					</div>

				</div>

			</div>
		</div>

		<!-- HTML编辑区 -->

		<div id='pdv_17941' class='pdv_class' title='联系方式' style='width:245px;height:213px;top:251px;left:0px; z-index:7'>
			<div id='spdv_17941' class='pdv_content' style='overflow:visible;width:100%;'>
				<div class="pdv_border" style="border:0px;height:100%;padding:0;margin:0;background:url(base/border/537/images/title.png) 0 0 no-repeat">
					<div style="height:32px;border:0px;padding:0;margin:0;">
						<div style="float:left;width:110px;color:#515151;font:14px/32px 'microsoft yahei',simsun;text-align:center;">联系方式</div>
						<div style="float:right;text-align:right;width:45px;height:32px;background:url(base/border/537/images/title.png) -955px 0px no-repeat;"><a href="" style="display:none;">
							<img src="base/border/537/images/more.png" style="border:0px;padding-top:15px;"></a></div>
					</div>
					<div style="margin:0px;padding:6px">


                        <div style="FONT-SIZE: 12px; COLOR: #333; LINE-HEIGHT: 24px"><span style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;"><b>富顺县祥安阁礼仪服务公司</b></span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">24小时服务热线：13388320330&nbsp;</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">联系人：林先生</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">手机：15008113875</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">网址：www.anxiangge.com</span><br><span style="font-family: Verdana, Arial, Helvetica, sans-serif;">地址：四川省自贡市富顺县富世镇</span></div>






					</div>
				</div>

			</div>
		</div>
	</div>
</div>
<div id='bottom' style='width:1258px;height:171px;background:url(effect/source/bg/1491902390.jpg) 0% 0% repeat-x scroll rgba(0, 0, 0, 0)'>


<!-- 底部信息编辑区 -->

<div id='pdv_18455' class='pdv_class' title='' style='width:576px;height:85px;top:84px;left:9px; z-index:4'>
<div id='spdv_18455' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.xiangange.com');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">
<div style="width:100%;text-align:center;font:12px/20px Arial, Helvetica, sans-serif">
<div style="text-align: left; line-height: 28px;COLOR: #fff;font-size:14px;">TEL：13388320330  &nbsp; MOB:15008113875&nbsp;</div><div style="text-align: left; line-height: 28px;COLOR: #fff;font-size:14px;">&nbsp;地址：四川省自贡市富顺县富世镇</div><div style="text-align: left; line-height: 28px;COLOR: #fff;font-size:14px;">版权所有 自贡祥安阁礼仪服务公司</div>
</div>

</div>
</div>

</div>
</div>

<!-- 底部菜单（一级） -->

<div id='pdv_18462' class='pdv_class' style='width:421px;height:28px;top:40px;left:0px; z-index:7'>
<div id='spdv_18462' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		脚注栏目
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">
<div id="bottommenu">|

<a href="" target="_self">网站首页</a>|

<a href="page/html/companys.html" target="_self">关于我们</a>|

<a href="news/class/Index.html" target="_self">新闻资讯</a>|

<a href="job/index.html" target="_self">人才招聘</a>|

 
</div>


</div>
</div>

</div>
</div>

<!-- 页内图片广告 -->

<div id='pdv_18460' class='pdv_class' title='' style='width:409px;height:41px;top:69px;left:831px; z-index:20'>
<div id='spdv_18460' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;color:#fff">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">




<a href="page/service/contact.html"><img src="advs/pics/20170412/1491980760.png" border="0" width="100%"></a>

</div>
</div>

</div>
</div>

<!-- 单行文字 -->

<div id='pdv_18506' class='pdv_class' title='殡葬服务' style='width:51px;height:20px;top:135px;left:13px; z-index:34'>
<div id='spdv_18506' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;">
	<div style="height:25px;margin:1px;display:none;">
		<div style="float:left;margin-left:6px;line-height:25px;font-weight:bold;">
		殡葬服务
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="javascript:window.open('http://www.gansuande.com/-1');" style="line-height:25px;">更多</a>
		</div>
	</div>
<div style="padding:0px">

<a href="">殡葬服务</a>

</div>
</div>

</div>
</div>
</div>
<div id='bodyex'>

</div>
<div id='topex' style='display:none;width:100%;height:799px;background:none 0% 0% repeat scroll transparent'>
</div>
<div id='contentex' style='display:none;width:100%;height:1928px;background:none 0% 0% repeat-y scroll rgba(0, 0, 0, 0)'>
</div>
<div id='bottomex' style='display:none;width:100%;height:171px;background:url(effect/source/bg/1491902390.jpg) 0% 0% repeat-x scroll rgba(0, 0, 0, 0)'>
</div>
<div id='advsex'></div>
</body>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?ecc7a2c5b48473aeb2606187888e4111";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();

</script>
<script>

    var shoua = new Array("<%=list.get(0).getImageurl()%>", "<%=list.get(1).getImageurl()%>", "<%=list.get(2).getImageurl()%>");
    // no-repeat不重复
    // shoub = $.serializeArray(shoua); // 序列化数组
    var shouyilist=new Array(<%=shouyilist.size()%>);
    shouyilist=<%=JSONArray.fromObject(shouyilist)%>;
    console.log(shouyilist);
    var guhuihelist=new Array(<%=guhuihelist.size()%>);
    guhuihelist=<%=guhuihelist%>;
    var huaquanlist=new Array(<%=huaquanlist.size()%>);
    huaquanlist=<%=huaquanlist%>;
    //寿衣集
    for(var a=0;a<<%=shouyilist.size()%>;a++){
        var ss="<div class='productlist'> <div class='fang' style='width:175px;height:153px'> <div class='picFit' style='width:175px;height:153px'> <a href='javascript:window.open('http://www.xiangange.com/product/html/?169.html');' target='_self'><img src='"+shouyilist[a].imgurl+"' style='width:175px;height:153px' border='0'/></a> </div> </div> <div class='title'> <a href='javascript:window.open('http://www.xiangange.com/product/html/?169.html');' target='_self' class='title'>"+shouyilist[a].name+"</a> </div> </div>";
        // console.log(shouyilist[a].imgurl+","+shouyilist[a].name);
        $("#ssb").append(ss);
    }
    $("#ssb").trigger("create");
    //骨灰集
    for(var b=0;b<<%=guhuihelist.size()%>;b++){
    var ss="<div class='productlist'> <div class='fang' style='width:175px;height:120px'> <div class='picFit' style='width:175px;height:120px'> <a href='javascript:window.open('http://www.xiangange.com/product/html/?204.html');' target='_self'><img src='product/pics/20171017/1508213036.jpg' style='width:175px;height:120px' border='0'></a> </div> </div> <div class='title'> <a href='javascript:window.open('http://www.xiangange.com/product/html/?204.html');' target='_self' class='title'>殡葬骨灰盒</a> </div> </div>";
        $("#ssg").append(ss);
    }
    $("#ssg").trigger("create");
    //花圈集
    for(var c=0;c<<%=huaquanlist.size()%>;c++){

    }
    var canpin=new Array(<%=list1.size()%>);
    //产品集
    canpin=<%=JSONArray.fromObject(list1)%>;
    var xia=0;    //加载页面为12的倍数
    var xiaed=0   //有多少个已加载页面
        for( var d=xia;d<<%=list1.size()%>;d++){
            xia=d;
            if(d%12==0 && d!=0){
                xiaed++;
                break;
            }
            var ss="<div class='productquery_dolphin'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='"+canpin[d].imgurl+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].name+"</a> </div> </div>";
            $("#showcanpin").append(ss);
        }
        xia=d;
        $("#showcanpin").trigger("create");
console.log(xia);


    $.cookie("shoua",encodeURIComponent(JSON.stringify(shoua)));
    for (var i = 0; i <3; i++) {
        var aimg = "<div class='advsexList' style='background:url(" + shoua[i] + "); background-position: top ; background-repeat:no-repeat; '> <a href=''></a></div>";
        $("#simg").append(aimg);
    }
    $("#simg").trigger("create");
    // $("#simg .advsexList").trigger("create");
    console.log("success");
    //殡葬产品
   function showcanping(){
       $('#guanwang').css('display','none');
       $('#canpinshow').css('display','block');
       $('#content').css('height','691px');
   }
   //返回官网
   function backguan() {
       $('#guanwang').css('display','block');
       $('#canpinshow').css('display','none');
       $('#content').css('height','1928px');
   }
    var tiao=<%=list1.size()%>;
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
      if(xia>=<%=list1.size()%>-1 ){
          alert("没有了");
          xia=xiaed*12-12;
          for( var d=xia;d<<%=list1.size()%>;d++){
              if(d%12==0 && d!=0 && xia!=d){
                  break;
              }
              var ss="<div class='productquery_dolphin'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='"+canpin[d].imgurl+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].name+"</a> </div> </div>";
              $("#showcanpin").append(ss);
          }
          xia=d;
          $("#showcanpin").trigger("create");
          $("<link>").attr({ rel: "stylesheet",
              type: "text/css",
              href: "product/templates/css/productquery_dolphin.css"
          }).appendTo("head");
          return;
      }else {
          xiaed++;
          for( var d=xia;d<<%=list1.size()%>;d++){
              if(d%12==0 && d!=0 && xia!=d){
                  break;
              }
              var ss="<div class='productquery_dolphin'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='"+canpin[d].imgurl+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].name+"</a> </div> </div>";
              $("#showcanpin").append(ss);
          }
          xia=d;
          $("#showcanpin").trigger("create");
          $("<link>").attr({ rel: "stylesheet",
              type: "text/css",
              href: "product/templates/css/productquery_dolphin.css"
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
            for( var d=xia;d<<%=list1.size()%>;d++){
                if(d%12==0 && d!=0 && xia!=d){
                    break;
                }
                var ss="<div class='productquery_dolphin'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='"+canpin[d].imgurl+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].name+"</a> </div> </div>";
                $("#showcanpin").append(ss);
            }
            xia=d;
            $("#showcanpin").trigger("create");
            $("<link>").attr({ rel: "stylesheet",
                type: "text/css",
                href: "product/templates/css/productquery_dolphin.css"
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


            for( var d=xia;d<<%=list1.size()%>;d++){
                if(d%12==0 && d!=xia){
                    break;
                }
                var ss="<div class='productquery_dolphin'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='"+canpin[d].imgurl+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].name+"</a> </div> </div>";
                $("#showcanpin").append(ss);
            }
            xia=d;
            $("#showcanpin").trigger("create");
            $("<link>").attr({ rel: "stylesheet",
                type: "text/css",
                href: "product/templates/css/productquery_dolphin.css"
            }).appendTo("head");
		}
        console.log(<%=list1.size()%>);
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
alert("lalala");
        for( var d=xia;d<<%=list1.size()%>;d++){
            if(d%12==0 && d!=0 && xia!=d){
                break;
            }
            var ss="<div class='productquery_dolphin'> <div class='productquery_dolphin_top'><div class='fang' style='width:210px;height:140px'> <div class='picFit' style='width:210px;height:140px'> <a href='javascript:window.open('#');' target='_self'><img src='"+canpin[d].imgurl+"' style='width:210px;height:140px' border='0'></a> </div> </div> </div> <div class='productquery_dolphin_bottom'> <a href='javascript:window.open('#')'; target='_self' class='prodtitle'>"+canpin[d].name+"</a> </div> </div>";
            $("#showcanpin").append(ss);
        }
        xia=d;
        $("#showcanpin").trigger("create");
        $("<link>").attr({ rel: "stylesheet",
            type: "text/css",
            href: "product/templates/css/productquery_dolphin.css"
        }).appendTo("head");
	}
	for(var xuan=0;xuan<yeshu;xuan++){
  var  ss=" <option value='' selected='' onclick='tiaoxia("+(xuan+1)+")'>第"+(xuan+1)+"页</option>";
        $('#selectxuan').append(ss)	;
  }
    $('#selectxuan').trigger("create");

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
</html>
