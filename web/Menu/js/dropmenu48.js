var timeout         = 500;
var closetimer		= 0;
var ddmenuitem      = 0;

function dropmenu_open()
{	dropmenu_canceltimer();
	dropmenu_close();
	ddmenuitem = $(this).find('ul').eq(0).css('visibility', 'visible');}

function dropmenu_close()
{	if(ddmenuitem) ddmenuitem.css('visibility', 'hidden');}

function dropmenu_timer()
{	closetimer = window.setTimeout(dropmenu_close, timeout);}

function dropmenu_canceltimer()
{	if(closetimer)
	{	window.clearTimeout(closetimer);
		closetimer = null;}}



// $(document).ready(function(){
// 	$('#dropmenu > li').bind('mouseover', dropmenu_open);
// 	$('#dropmenu > li').bind('mouseout',  dropmenu_timer);
// });

document.onclick = dropmenu_close;
