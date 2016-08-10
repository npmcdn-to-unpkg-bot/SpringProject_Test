<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '279764479045863',
      xfbml      : true,
      version    : 'v2.7'
    });
  };

  (function(d, s, id function statusChangeCallback(response) {
	   if (response.status === 'connected') {   
		    testAPI();
		   } else if (response.status === 'not_authorized') {
		    document.getElementById('status').innerHTML = 'Please log '+ 'into this app.';
		   } else {
		    document.getElementById('status').innerHTML = 'Please log '+ 'into Facebook.';
		   }
		  }

		  function checkLoginState() {
		   FB.getLoginStatus(function(response) {
		    statusChangeCallback(response);
//		     alert(response.authResponse.accessToken)
		   });
		  }

		  window.fbAsyncInit = function() {
		   FB.init({
		    appId : '279764479045863',
		    cookie : true, // enable cookies to allow the server to access 
		    xfbml : true, // parse social plugins on this page
		    version : 'v2.7' // use version 2.2
		   });
		   
		   FB.getLoginStatus(function(response) {
		       statusChangeCallback(response);
		     });
		  };

		  // Load the SDK asynchronously
		  (function(d, s, id) {
		   var js, fjs = d.getElementsByTagName(s)[0];
		   if (d.getElementById(id))
		    return;
		   js = d.createElement(s);
		   js.id = id;
		   js.src = "//connect.facebook.net/ko_KR/sdk.js";
		   fjs.parentNode.insertBefore(js, fjs);
		  }(document, 'script', 'facebook-jssdk'));

		  function testAPI() {
		   FB.api('/me',function(response) {
		    alert(JSON.stringify(response));
		    document.getElementById('status').innerHTML = 'Thanks for logging in, '+ response.name + '!';
		   });
		  }
		  function fblogout(){
		   FB.logout(function(response) {
		    document.getElementById('status').innerHTML = 'Please log '+ 'into Facebook.';
		   });
		  }
  
</script>
</head>
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.7&appId=1485605911464846";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="fb-login-button" data-max-rows="1" data-size="medium" data-show-faces="false" data-auto-logout-link="true"></div>
</body>
</html>