function checkWrite(){//document 가 자바에서 this
	if(document.getElementById("username").value==""){
		alert("이름을 입력하세요");
		document.SignupForm.username.focus();
	}else if(document.getElementById("Email").value ==""){
		alert("이메일을 입력하세요");
	}else if(document.getElementById("password").value==""){
		alert("비밀번호를 입력하세요");
	}else if(document.getElementById("password").value != document.getElementById("repwd").value){
		alert("비밀번호가 맞지않습니다");/*
	else if(document.writeForm.check != document.writeForm.id.value)
		alert("ID 중복체크 해주세요");*/
	}else{
		document.getElementById("SignupForm").submit();
	}
		
	

}
function checkID(){
	var id = document.writeForm.user_id.value;
	var regexp = /^[a-z0-9]{4,15}$/;

	if(id==""){
		alert("아이디를 입력해주세요");
		document.writeForm.user_id.focus();
	}else if(!regexp.test(id)){
	    alert('아이디는 소문자와 숫자로 4 ~ 15자입니다.');
	    document.writeForm.user_id.focus();
	    return false;
	}else{
		window.open("http://localhost:8080/memberJSP/member/checkID.jsp?id="+id, "", "width=300 height=150 left=700 top=150");
	}
	
}

function checkEmail(){
	aler("email chk오니?");
	var email = document.writeForm.Email.value;
	var regexp = /^[a-z0-9]{4,15}$/;

	if(email==""){
		alert("아이디를 입력해주세요");
		document.writeForm.Email.focus();
	}else if(!regexp.test(Email)){
	    alert('아이디는 소문자와 숫자로 4 ~ 15자입니다.');
	    document.writeForm.Email.focus();
	    return false;
	}else{
		window.open("http://localhost:8080/bora/member/checkEmail.do?email="+email, "", "width=300 height=150 left=700 top=150");
	}
	
}
function checkModify(){
	
}

function ipToLong(){
	var ip = sessionStorage
	var ip = document.loginForm.ip.value;
	alert(ip);
}

function saveIP(){
	this.key   = document.getElementById("k");
	this.value   = document.getElementById("v");
	sessionStorage[key.value]=value.value;
}
function checkLogin(){ 
	if(document.getElementById("login-email").value==""){		
		alert("이메일을 입력하세요");
	}else if(document.getElementById("login-pw").value==""){
		alert("비밀번호를 입력하세요");		
	}else{
		document.getElementById("login-form").submit();
	}
}

function checkName() {
	//member_name 의 값을 가져와서
	//값이 없으면 필수 입력이라고 출력

	var name = document.getElementById("name").value;
	var namespan = document.getElementById("nameSpan");
	if (name == null || name.length < 1) {
		namespan.innerHTML = "이름은 필수 입니다.";
		document.getElementById("name").focus();
		return false;
	}
	//이름은 한글 2글자에서 5글자 사이
	else {
		var regName = /^[가-힣]{2,5}$/;   //[a-z | A-Z]소문자 또는 대문자     [a-z]{2,5}$/i 대소문자 구분
		if (regName.test(name))
			namespan.innerHTML = "";
		else {
			namespan.innerHTML = "이름은 한글 2-5자로 입력하세요";
			return false;
			//실패했을때는 항상  false를 리턴하자!!!
		}
	}
}
function checkTel(){
	
}

function checkName_eng() {
	//member_name 의 값을 가져와서
	//값이 없으면 필수 입력이라고 출력

	var name = document.getElementById("name").value;
	var namespan = document.getElementById("nameSpan");
	if (name == null || name.length < 1) {
		namespan.innerHTML = "이름은 필수 입니다.";
		document.getElementById("name").focus();
		return false;
	}
	//이름은 한글 2글자에서 5글자 사이
	else {
		var regName = /^[가-힣]{2,5}$/;   //[a-z | A-Z]소문자 또는 대문자     [a-z]{2,5}$/i 대소문자 구분
		if (regName.test(name))
			namespan.innerHTML = "";
		else {
			namespan.innerHTML = "이름은 한글 2-5자로 입력하세요";
			return false;
			//실패했을때는 항상  false를 리턴하자!!!
		}
	}
}

function checkEmail(){
	var mail = document.writeForm.email1.value;
	var emailSpan = document.getElementById("emailSpan");	
	var regex = /^[a-z0-9]{2,20}$/;
	if(mail==""){
		emailSpan.innerHTML="빈칸입니다."
	}else if(!mail.match(regex)){
		emailSpan.innerHTML="유효하지 않는 메일 형식입니다."
	}else{
		emailSpan.innerHTML="사용가능 합니다."
	}
			
}

function checkPwd(){
	/*
	 *비밀 번호 8자리 이상 체크
	 *비밀 번호 공백 입력 방지
	 *비밀 번호 ID 포함 방지
	 *비밀 번호 동일문자 연속 방지 
	 *비밀 번호 연속된 문자 방지
	 *비밀 번호 특수 문자,숫자,문자 3가지 포함 
	 *비밀 번호 기본 입력 체크
	 */	   
	var pwdSpan = document.getElementById("pwdSpan");
	var pw = document.writeForm.pwd.value;
	var pw_ok = document.writeForm.repwd.value;
	var adm_id = document.writeForm.id.value;
	var iCount = 0;
	var tmp_pw = "";
	var re1 = /[a-zA-Z]/i; // 영문
	var re2 = /[0-9]/i; // 숫자
	var re3 = /[@!#\$\^%&*()+=\-\[\]\\\';,\.\/\{\}\|\":<>\?]/i; // 특수문자
	var alpaBig= "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var alpaSmall= "abcdefghijklmnopqrstuvwxyz";
	var num = "01234567890";
	var s = pw.length-(pw.length%3);

	if(pw_ok != ""){
		if(pw == ""){
			pwdSpan.innerHTML=("비밀번호를 입력 하십시오");
			document.writeForm.pwd.focus();
			return;
		}
	}
	
	if((pw.length < 8) || (pw_ok.length < 8) ){
		pwdSpan.innerHTML=("8자리 이상 입력 하십시오");
		return;
	}
	if(pw.indexOf(adm_id) > -1){
		pwdSpan.innerHTML=("ID가 포함된 비밀번호는 사용 할 수 없습니다");
		return;
	}
	if(pw.indexOf("") > -1){
		pwdSpan.innerHTML=("공백이 포함된 비밀번호는 사용 할 수 없습니다");
		return;
	}
	iCount =3;
	for(var i=0; i<pw.length; i++){
		if(i < s-2 ){
			tmp_pw = pw.substring(i,iCount);
			if( (alpaBig.indexOf(tmp_pw) > -1)  || (alpaSmall.indexOf(tmp_pw) > -1) || (num.indexOf(tmp_pw) > -1) ) {
				pwdSpan.innerHTML=("3자리 이상 연속된 문자/숫자 입력 할 수 없습니다.\n예)1234,abcd");
				return;
			}
		}
		if( s > iCount){
			iCount++
		}
	}
	iCount=0;
	for(var i=1;i < pw.length;i++){
		if(pw.substring(iCount,i) == pw.substring(i,i+1) ){ 
			pwdSpan.innerHTML=("같은 문자/숫자를 연속적으로 사용 할 수 없습니다");
			return;
		}
		iCount++
	}
	if((!re1.test(pw)) || (!re2.test(pw)) || (!re3.test(pw))) {
		pwdSpan.innerHTML=("비밀번호는 영문(대/소문자)과 숫자, 특수문자 중 3가지\n이상의 종류로 조합하여 4자리 이상 입력 하십시오");
		return;
	}
	
}

function checkRepwd(){
	var pw = document.writeForm.pwd.value;
	var pw_ok = document.writeForm.repwd.value;
	if(pw != ""){
		if(pw_ok == ""){
			pwdSpan.innerHTML=("비밀번호 확인을 입력 하십시오");
			document.writeForm.repwd.focus();
			return;
		}
	}
	if(pw!=pw_ok){
		pwdSpan.innerHTML=("패스워드가 같지 않습니다.");
		document.writeForm.repwd.focus();
		return;
	}else{
		pwdSpan.innerHTML=("패스워드가 일치합니다.");
	}
}

function checkPost() {
	window.open("checkPost.jsp","","width=460 height=300 left=700 top=150 scrollbars=yes");
}

function check_pwd_onblur(){
	var theForm = document.writeForm;
	if(isNaN(theForm.pwd.value)){
		alert("숫자만 입력해주세요")
//		theForm.pwd.select();
	}
}

function check_pwd_onkeydown(){
	var theForm = document.writeForm;
	if(!((event.keyCode >= '48' && event.keyCode<='57') || (event.keyCode>='96' && event.keyCode <='105')
			|| event.keyCode=='8')){
//	if(isNaN(theForm.pwd.value)){
				alert(event.keyCode);
				event.returnValue = false;
			}
}