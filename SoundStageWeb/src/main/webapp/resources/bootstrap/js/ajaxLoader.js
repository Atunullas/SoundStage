function ajaxHeadLoad(a, b) {
	$.ajax({
		url : a,
		type : 'POST',
		success : function(result) {
			$(b).append(result);
		}
	});
}

function ajaxBodyLoad(a, b) {
	$.ajax({
		url : a,
		type : 'POST',
		success : function(result) {
			$(b).empty();
			$(b).append(result);
		}
	});
}