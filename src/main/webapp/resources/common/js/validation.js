/*alert("validation.js")
*/


//제이쿼리
checkNull = function(obj, value, message) {
   if(value == "" || value == null) {
      alert( message);
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

checkOnlyNumber = function(obj, value, message) {
    var regExp = /^[0-9]+$/;
    if(regExp.test(value)) {
		return true;
	} else {
		alert(message);
        obj.focus();
		return false;
	}
}


checkId = function(obj, value, message) {
    var regExp = /^[A-Za-z0-9,_-]{2,20}$/;
    if(regExp.test(value)) {
		return true;
	} else {
		alert(message);
        obj.focus();
		return false;
	}
}


checkPassword = function(obj, value, message) {
	var regExp = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*]).{8,20}$/;
    /*var regExp = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,20}$/;*/
    if(regExp.test(value)) {
		return true;
	} else {
		alert(message);
        obj.focus();
		return false;
	}
}


checkOnlyEnglish = function(value) {
    var regExp = /^[A-Za-z]+$/ 
    if(regExp.test(value)) return true;
    else return false;
}


checkEmail = function(obj, value, message) {
    var regExp = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if(regExp.test(value)) {
    	return true;
    } else {
		alert(message);
		obj.focus();
		return false;
	}
}


checkMobile = function(obj, value, message) {
    var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
    if(regExp.test(value)) {
    	return true;
    } else {
		alert(message);
		obj.focus();
		return false;
	}
}
