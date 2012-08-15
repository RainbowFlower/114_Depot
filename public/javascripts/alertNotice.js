/* Type can be "success", "error", "info".
 * If time is negative, it needs a manual close,
 * else if time is legal, it will counting time to close.
 * 1000 = 1 second
 */
function alertNotice(type, content, time)
{	
	var str = '<div class="noticeBox ' + 'alert alert-' + type + ' fade in">' + 
	'<button type="button" class="close" data-dismiss="alert">x</button>' + 
	'<div class = "noticeContent">' + content + '</div></div>'

	$j("body").append(str);
	$j(".noticeBox").css("left", (($j(window).width() - $j(".noticeBox").outerWidth()) / 2) + "px");
	if (time >= 0){
		setTimeout('$j(".alert").alert("close")', time);
	}
}