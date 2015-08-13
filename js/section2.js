function trans(i){
	$("#showBox li").eq(i).mouseover(function(){
			
			$('#describe').css("left",-980*i+"px");
			$('#describe li').fadeIn();
		});
}
$(document).ready(function(){
	for(i=0;i<4;i++){
		trans(i);
	}
});