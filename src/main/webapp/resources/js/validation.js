/*alert("validation.js")
*/


//제이쿼리
checkNull = function(obj, value, message) {
	if (value == "" || value == null) {
		alert(message);
		obj.focus();
		return false;
	} else {
		return true;
	}
}


/*
//자바스크립트
function checkNull  (obj,value,message){
	if(value == "" ||  value ==null){
		alert("validation.js:" +  message );
		obj.focus();
		return false;
		}
}*/