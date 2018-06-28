function checkName() {
	var name = document.getElementById("name").value;
	var password = document.getElementById("password").value;
	var regexName = /^[0-9a-zA-Z]{3,10}$/;
	var regexPassword = /^[0-9]{6}$/;
	if (name == "" || password == "") {
		alert("账号密码不能为空");
		return false;
	}

	else if (!regexName.test(name) || !regexPassword.test(password)) {
		alert("账号密码格式错误")
		return false;

	} else {

		return true;
	}
}
