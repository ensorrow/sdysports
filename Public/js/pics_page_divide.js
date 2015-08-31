$(function(){
	//此demo通过Ajax加载分页元素
	var items_per_page=6;
	var initPagination = function() {
		var num_entries = $("#hidden_result a").length;
		// 创建分页
		$("#Pagination").pagination(num_entries, {
			num_edge_entries: 2, //边缘页数
			num_display_entries: 4, //主体页数			
			items_per_page: 6, //每页显示1项
			callback: pageselectCallback,
			prev_text: "<",
			next_text: ">"
		});
	 };
	 
	function pageselectCallback(page_index,jq){
		var max_elem = Math.min((page_index+1) * items_per_page, length);
		$("#show_box").empty();
		for(var i=page_index*items_per_page;i<page_index*items_per_page+items_per_page;i++){
			$("#hidden_result a:eq("+i+")").clone().appendTo('#show_box');
		}
		return false;
	}	
	$("#hidden_result").load($("#load").val(), {val: true}, initPagination);
});
