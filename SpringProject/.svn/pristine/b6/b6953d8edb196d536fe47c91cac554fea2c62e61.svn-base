<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Login Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>
<a id="kakao-login-btn"></a>
<a href="http://alpha-developers.kakao.com/logout"></a>
<script type='text/javascript'>
Kakao.init('3e713e44099a4057507be206eadd0151');

function loginWithKakao() {
  // 로그인 창을 띄웁니다.
  Kakao.Auth.login({
	  persistAccessToken: true,
	  persistRefreshToken: true,
  
    success: function(authObj) {
    	loginOk()
    },
    fail: function(err) {
      alert("카카오 아이디가 존재하지 않거나 비밀번호가 올바르지 않습니다.");
    }
  });
};

function loginOk(){
	Kakao.API.request({
		url: '/v1/user/me',
		success: function(res) {
			
			var id = res.id;
			var nickname = res.properties.nickname;
			var profile = res.properties.profile_image;
			
			location.href="/Project_Spring/m_mallMain/fastLogin.do?id="+id+"&nickname="+nickname;
			
		},
		fail: function(error) {
			console.log(error);
		}
	});
}

</script>

<a id="custom-login-btn" href="javascript:loginWithKakao()">
<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300"/>
</a>
</body>

</html>