function ajaxHeadLoad(a,b){
	$.ajax({
		url : a,
		type : 'POST',
		success : function(result) {
			$('#body').empty();
			$(b).empty();
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

function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}