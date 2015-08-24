$(function() {
	$(".sns_weixin").hover(
		function () {
			$("#weixin_code").css("display","block");
		},
		function () {
			$("#weixin_code").css("display","none");
		}
	);
	$("#weixin_code").hover(
		function () {
			$("#weixin_code").delay(500).css("display","block");
		},
		function () {
			$("#weixin_code").css("display","none");
		}
	);
});