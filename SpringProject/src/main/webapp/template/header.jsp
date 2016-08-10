<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
.emailOk{
border:1px solid white; 
width:100px; 
display:inline-block; 
font-size:7pt;
color:cyan;
}

.emailFail{
border:1px solid white; width:100px; display:inline-block; 
               font-size:7pt; color:red;
}

#hot{font-family: "Love Ya Like A Sister", cursive; font-size: 15px;} 
#example {font-family: "Love Ya Like A Sister", cursive; font-size: 20px;}

</style>
<script type="text/javascript">
   $( document ).ready( function () {
      $( "#SignupForm" ).validate( {
         rules: {
            hname: {
               required: true,
               minlength: 2
            },
            firstname: "required",
            lastname: "required",
            
            pwd: {
               required: true,
               minlength: 5
            },
            repwd: {
               required: true,
               minlength: 5,
               equalTo: "#password"
            },
            cellphone: {
               required: true,
               minlength: 10,
               maxlength: 15
            },
            email: {
               required: true,
               email: true
            },
         },
         messages: {
            firstname: "Please enter your firstname",
            lastname: "Please enter your lastname",
            hname: {
               required: "이름을 입력해 주세요",
               minlength: "적어도 2글자 이상 입력해 주세요"
            },
            pwd: {
               required: "비밀번호를 입력해주세요",
               minlength: "5글자 이상 입력해주세요"
            },
            repwd: {
               required: "비밀번호를 입력해주세요",
               minlength: "5글자 이상 입력해주세요",
               equalTo: "Please enter the same password as above"
            },
            cellphone: {
               required: "Please enter a vaild phone number",
               minlength: "Your phone must be at least 10 number long",
               maxlength: "Your phone must be not more than 15 number short"
            },
            email: "유효한 이메일 형식이 아닙니다.",
            
         },
         errorPlacement: function ( error, element ) {
            error.addClass( "error" );
            error.insertAfter( element.parent() );
         },
         highlight: function ( element, errorClass, validClass ) {
            $( element ).parents( "#firstname" ).addClass( errorClass );
         },
         unhighlight: function (element, errorClass, validClass) {
            $( element ).parents( "#firstname" ).removeClass( errorClass );
         }
      });
      
   });
   
   function SearchSubmit() {
		if (document.frm.value.value == "")
			alert("검색어를 입력하세요");
		else
			document.frm.submit();
	}
   
(function(d, s, id) {
	   var js, fjs = d.getElementsByTagName(s)[0];
	   if (d.getElementById(id)) return;
	   js = d.createElement(s); js.id = id;
	   js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.7&appId=1485605911464846";
	   fjs.parentNode.insertBefore(js, fjs);
	 }(document, 'script', 'facebook-jssdk'));
</script>

<script>
// This is called with the results from from FB.getLoginStatus().
function statusChangeCallback(response) {
  console.log('statusChangeCallback');
  console.log(response);
  // The response object is returned with a status field that lets the
  // app know the current login status of the person.
  // Full docs on the response object can be found in the documentation
  // for FB.getLoginStatus().
  if (response.status === 'connected') {
    // Logged into your app and Facebook.
    testAPI();
  } else if (response.status === 'not_authorized') {
    // The person is logged into Facebook, but not your app.
    document.getElementById('status').innerHTML = 'Please log ' +
      'into this app.';
  } else {
    // The person is not logged into Facebook, so we're not sure if
    // they are logged into this app or not.
    document.getElementById('status').innerHTML = 'Please log ' +
      'into Facebook.';
  }
}

// This function is called when someone finishes with the Login
// Button.  See the onlogin handler attached to it in the sample
// code below.
function checkLoginState() {
  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
}

window.fbAsyncInit = function() {
FB.init({
  appId      : '{279764479045863}',
  cookie     : true,  // enable cookies to allow the server to access 
                      // the session
  xfbml      : true,  // parse social plugins on this page
  version    : 'v2.5' // use graph api version 2.5
});

// Now that we've initialized the JavaScript SDK, we call 
// FB.getLoginStatus().  This function gets the state of the
// person visiting this page and can return one of three states to
// the callback you provide.  They can be:
//
// 1. Logged into your app ('connected')
// 2. Logged into Facebook, but not your app ('not_authorized')
// 3. Not logged into Facebook and can't tell if they are logged into
//    your app or not.
//
// These three cases are handled in the callback function.

FB.getLoginStatus(function(response) {
  statusChangeCallback(response);
});

};

// Load the SDK asynchronously
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

// Here we run a very simple test of the Graph API after login is
// successful.  See statusChangeCallback() for when this call is made.
function testAPI() {
  console.log('Welcome!  Fetching your information.... ');
  FB.api('/me?fields=id,name,email,first_name,last_name,birthday', function(response) {
	 /*  alert(response.email);
	  alert(response.birthday );
	  alert(JSON.stringify(response)); */
    console.log('Successful login for: ' + response.name);
    document.getElementById('status').innerHTML =
      '로그인 이름 : , ' + response.name + '!'
      +'로그인 이메일 : , ' + response.email + '!'
      
      ;
  });
}

function fblogout(){
	   FB.logout(function(response) {
	    document.getElementById('status').innerHTML = 'Please log '+ 'into Facebook.';
	   });
	  }

</script>

<div class=header>
   <div class="mainTitle">
      <img src="/SpringProject/img/oh bora.png"
         style="margin-top: 30px; margin-left: -20px;" alt="오 보라카이"
         class="yapenLogo"
         onclick="location.href='/SpringProject/main/index.do'">
   </div>
   <div class="mask"></div>
   <div class="schTextBar">
   <form name="frm" action ="/SpringProject/template/search.do">
       <select class="schClass" name="schSel" style="width:16%; height:30px; ">
         <option value="package_name">패키지명</option>
         <option value="hotel_name">호텔명</option>
         <option value="hotel_grade">호텔등급</option>
       </select>
      <input type="text" value="" name="schText" id="schText" placeholder="패키지명, 호텔명 검색"/> 
       <img src='http://img.yapen.co.kr/pension/images/web/search_icon.png' onclick='SearchSubmit();'
       		style='cursor:pointer;'>
    </form>
         
      <div id="hot" style="padding-top: 5px;">실시간 급상승 패키지</div>   
     <div id="example" style="padding-left:30%;" >
			  <ul>
				    <li style="font:bold; color: red;">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;헤난가든 리조트</li>
				    <li style="font:bold; color: blue;">&nbsp;&nbsp;&nbsp;&nbsp;크라운 컨벤션</li>
				    <li style="font:bold; color: green;">&nbsp;&nbsp;&nbsp;&nbsp;라까멜라 리조트</li>
			  </ul>
	</div>	    
         
   </div>
    <!-- facebook -->
    <div id="status"></div>
    <div class="facebookLogin" style="width:35%; height: -10%;">
		<fb:login-button scope="public_profile,email,user_birthday" onlogin="checkLoginState();"></fb:login-button>
	</div>	  
	 <div class="facebookLogout" style="width:10%; padding-top:0%;">
  		 <button onclick="fblogout()">로그아웃</button>
   	</div>	  
   <!-- 로그인버튼 -->
   <div class="loginClass">
      <div class="loginClassBtn" style="width: 100%;">
         <a><img src="../img/login.png" class="loginBtn" /></a>
         <!-- kakao -->
         <div class="kakaoLogin">
	        <a id="custom-login-btn" href="javascript:loginWithKakao()">
				<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="250"/>
			</a>
		</div>
			
      </div>
     
     <!-- 로그인 후  -->
      <div id="myInfo">
         <form id="myInfo1">
            <br>
            <ul>
               <li>이름 : ${hname}</li>
               <li>이메일 : ${email} 
               <label class="${labelclass}">${labelName}</label>
               </li>
                <li>
               <c:choose>
			   <c:when test="${emailaut!=0}">
			   		<font size="1" color="red">이메일이 인증되지 않은 아이디입니다.</font>
			   </c:when>
			   <c:otherwise>
			   		<font size="1" color="blue">이메일 인증 완료</font>
			   </c:otherwise>
			   </c:choose>
			   </li>
            </ul>
            <br> <a href="#" id="myInfo_close">닫기</a> &nbsp; <a
               href="/SpringProject/template/modifyForm.do">정보수정</a> &nbsp; <a
               href="/SpringProject/template/logout.do">로그아웃</a>
         </form>
         
          <form id="myInfo2">
            <br>
            <ul>
               <li>로그인한 카카오 계정 : ${kakaoId}</li>
               <li>로그인한 카카오 닉네임 : ${kakaoNick}</li>
            </ul>
            <br> <a href="#" id="myInfo_close">닫기</a> &nbsp; <a
               href="/SpringProject/template/modifyForm.do">다른 SNS 계정으로 로그인</a> &nbsp; <a
               href="/SpringProject/template/logout.do">로그아웃</a>
         </form>
         
      </div>
   </div> 
<%--    <div id="myInfo">
		 <form id="myInfo1">
		  <fieldset>
		  	<legend>Login 정보</legend>
               <p>
               <label for="username">${hname}</label> 
               <label for="username">${email}</label> 
               <label class="${labelclass}">${labelName}</label>
               </p>
		  </fieldset>
		  <a href="#" id="myInfo_close">닫기</a> &nbsp; <a
               href="/SpringProject/template/modifyForm.do">정보수정</a> &nbsp; <a
               href="/SpringProject/template/logout.do">로그아웃</a>
		 </form>
		 </div>
 --%>
   <div class="login-page">
      <div class="form">
         <div class="closeD">
            <a href="#" class="closeA"> <img
               src="http://image2.yanolja.com/pension/yapen/web/yapenCancelBtn.png"
               class="close_btn" />
            </a>
         </div>

         <form id="SignupForm" method="post" action="../template/write.do">
            <fieldset>
               <legend>회원가입 1단계</legend>
               <p>
               <label for="username">한글 성명</label> 
               <input id="username" name="hname" type="text" /> 
               </p>
               <p>
               <label for="firstname">성(영문)</label>
               <input id="firstname" name="firstname" type="text" /> 
               </p>
               <p>
               <label for="lastname">이름(영문)</label> 
               <input id="lastname" name="lastname" type="text" />
               </p>
            </fieldset>
            <fieldset>
               <legend>회원가입 2단계</legend>
               <p>
               <label for="password">비밀번호</label> 
               <input type="password" id="password" name="pwd" />
               </p>
               <div id="passwordStrengthDiv" class="is0"></div>
               
               <p>
               <label for="repwd">비밀번호 재확인</label> 
               <input id="repwd" name="repwd" type="password" />
               </p>
               
            </fieldset>
            <fieldset>
               <legend>회원가입 3단계</legend>

               <label for="country">국가번호</label> <select id="country"
                  name="country">
                  <option value="CA">Canada</option>
                  <option value="US">United States of America</option>
                  <option value="GB">United Kingdom (Great Britain)</option>
                  <option value="AU">Australia</option>
                  <option value="JP">Japan</option>
                  <option value="AF">Afghanistan</option>
                  <option value="AX">Aland Island</option>
                  <option value="AL">Albania</option>
                  <option value="DZ">Algeria</option>
                  <option value="AS">American Samoa</option>
                  <option value="AD">Andorra</option>
                  <option value="AO">Angola</option>
                  <option value="AI">Anguilla</option>
                  <option value="AQ">Antarctica</option>
                  <option value="AG">Antigua & Barbuda</option>
                  <option value="AR">Argentina</option>
                  <option value="AM">Armenia</option>
                  <option value="AW">Aruba</option>
                  <option value="AT">Austria</option>
                  <option value="AZ">Azerbaijan</option>
                  <option value="BS">Bahama</option>
                  <option value="BH">Bahrain</option>
                  <option value="BD">Bangladesh</option>
                  <option value="BB">Barbados</option>
                  <option value="BY">Belarus</option>
                  <option value="BE">Belgium</option>
                  <option value="BZ">Belize</option>
                  <option value="BJ">Benin</option>
                  <option value="BM">Bermuda</option>
                  <option value="BT">Bhutan</option>
                  <option value="BO">Bolivia</option>
                  <option value="BA">Bosnia and Herzegovina</option>
                  <option value="BW">Botswana</option>
                  <option value="BV">Bouvet Island</option>
                  <option value="BR">Brazil</option>
                  <option value="IO">British Indian Ocean Territory</option>
                  <option value="VG">British Virgin Islands</option>
                  <option value="BN">Brunei Darussalam</option>
                  <option value="BG">Bulgaria</option>
                  <option value="BF">Burkina Faso</option>
                  <option value="BI">Burundi</option>
                  <option value="KH">Cambodia</option>
                  <option value="CM">Cameroon</option>
                  <option value="CV">Cape Verde</option>
                  <option value="KY">Cayman Islands</option>
                  <option value="CF">Central African Republic</option>
                  <option value="TD">Chad</option>
                  <option value="CL">Chile</option>
                  <option value="CN">China</option>
                  <option value="CX">Christmas Island</option>
                  <option value="CC">Cocos (Keeling) Islands</option>
                  <option value="CO">Colombia</option>
                  <option value="KM">Comoros</option>
                  <option value="CG">Congo</option>
                  <option value="CK">Cook Iislands</option>
                  <option value="CR">Costa Rica</option>
                  <option value="HR">Croatia</option>
                  <option value="CU">Cuba</option>
                  <option value="CY">Cyprus</option>
                  <option value="CZ">Czech Republic</option>
                  <option value="CI">Côte D'ivoire (Ivory Coast)</option>
                  <option value="DK">Denmark</option>
                  <option value="DJ">Djibouti</option>
                  <option value="DM">Dominica</option>
                  <option value="DO">Dominican Republic</option>
                  <option value="TP">East Timor</option>
                  <option value="EC">Ecuador</option>
                  <option value="EG">Egypt</option>
                  <option value="SV">El Salvador</option>
                  <option value="GQ">Equatorial Guinea</option>
                  <option value="ER">Eritrea</option>
                  <option value="EE">Estonia</option>
                  <option value="ET">Ethiopia</option>
                  <option value="FK">Falkland Islands (Malvinas)</option>
                  <option value="FO">Faroe Islands</option>
                  <option value="FJ">Fiji</option>
                  <option value="FI">Finland</option>
                  <option value="FR">France</option>
                  <option value="FX">France, Metropolitan</option>
                  <option value="GF">French Guiana</option>
                  <option value="PF">French Polynesia</option>
                  <option value="TF">French Southern Territories</option>
                  <option value="GA">Gabon</option>
                  <option value="GM">Gambia</option>
                  <option value="GE">Georgia</option>
                  <option value="DE">Germany</option>
                  <option value="GH">Ghana</option>
                  <option value="GI">Gibraltar</option>
                  <option value="GR">Greece</option>
                  <option value="GL">Greenland</option>
                  <option value="GD">Grenada</option>
                  <option value="GP">Guadeloupe</option>
                  <option value="GU">Guam</option>
                  <option value="GT">Guatemala</option>
                  <option value="GN">Guinea</option>
                  <option value="GW">Guinea-Bissau</option>
                  <option value="GY">Guyana</option>
                  <option value="HT">Haiti</option>
                  <option value="HM">Heard & McDonald Islands</option>
                  <option value="HN">Honduras</option>
                  <option value="HK">Hong Kong</option>
                  <option value="HU">Hungary</option>
                  <option value="IS">Iceland</option>
                  <option value="IN">India</option>
                  <option value="ID">Indonesia</option>
                  <option value="IQ">Iraq</option>
                  <option value="IE">Ireland</option>
                  <option value="IR">Islamic Republic of Iran</option>
                  <option value="IL">Israel</option>
                  <option value="IT">Italy</option>
                  <option value="JM">Jamaica</option>
                  <option value="JO">Jordan</option>
                  <option value="KZ">Kazakhstan</option>
                  <option value="KE">Kenya</option>
                  <option value="KI">Kiribati</option>
                  <option value="KP">Korea, Democratic People's Republic of</option>
                  <option value="KR">Korea, Republic of</option>
                  <option value="KW">Kuwait</option>
                  <option value="KG">Kyrgyzstan</option>
                  <option value="LA">Lao People's Democratic Republic</option>
                  <option value="LV">Latvia</option>
                  <option value="LB">Lebanon</option>
                  <option value="LS">Lesotho</option>
                  <option value="LR">Liberia</option>
                  <option value="LY">Libyan Arab Jamahiriya</option>
                  <option value="LI">Liechtenstein</option>
                  <option value="LT">Lithuania</option>
                  <option value="LU">Luxembourg</option>
                  <option value="MO">Macau</option>
                  <option value="MG">Madagascar</option>
                  <option value="MW">Malawi</option>
                  <option value="MY">Malaysia</option>
                  <option value="MV">Maldives</option>
                  <option value="ML">Mali</option>
                  <option value="MT">Malta</option>
                  <option value="MH">Marshall Islands</option>
                  <option value="MQ">Martinique</option>
                  <option value="MR">Mauritania</option>
                  <option value="MU">Mauritius</option>
                  <option value="YT">Mayotte</option>
                  <option value="MX">Mexico</option>
                  <option value="FM">Micronesia</option>
                  <option value="MD">Moldova, Republic of</option>
                  <option value="MC">Monaco</option>
                  <option value="MN">Mongolia</option>
                  <option value="MS">Monserrat</option>
                  <option value="MA">Morocco</option>
                  <option value="MZ">Mozambique</option>
                  <option value="MM">Myanmar</option>
                  <option value="NA">Namibia</option>
                  <option value="NR">Nauru</option>
                  <option value="NP">Nepal</option>
                  <option value="NL">Netherlands</option>
                  <option value="AN">Netherlands Antilles</option>
                  <option value="NC">New Caledonia</option>
                  <option value="NZ">New Zealand</option>
                  <option value="NI">Nicaragua</option>
                  <option value="NE">Niger</option>
                  <option value="NG">Nigeria</option>
                  <option value="NU">Niue</option>
                  <option value="NF">Norfolk Island</option>
                  <option value="MP">Northern Mariana Islands</option>
                  <option value="NO">Norway</option>
                  <option value="OM">Oman</option>
                  <option value="PK">Pakistan</option>
                  <option value="PW">Palau</option>
                  <option value="PA">Panama</option>
                  <option value="PG">Papua New Guinea</option>
                  <option value="PY">Paraguay</option>
                  <option value="PE">Peru</option>
                  <option value="PH">Philippines</option>
                  <option value="PN">Pitcairn</option>
                  <option value="PL">Poland</option>
                  <option value="PT">Portugal</option>
                  <option value="PR">Puerto Rico</option>
                  <option value="QA">Qatar</option>
                  <option value="RO">Romania</option>
                  <option value="RU">Russian Federation</option>
                  <option value="RW">Rwanda</option>
                  <option value="RE">Réunion</option>
                  <option value="LC">Saint Lucia</option>
                  <option value="WS">Samoa</option>
                  <option value="SM">San Marino</option>
                  <option value="ST">Sao Tome & Principe</option>
                  <option value="SA">Saudi Arabia</option>
                  <option value="SN">Senegal</option>
                  <option value="RS">Serbia</option>
                  <option value="SC">Seychelles</option>
                  <option value="SL">Sierra Leone</option>
                  <option value="SG">Singapore</option>
                  <option value="SK">Slovakia</option>
                  <option value="SI">Slovenia</option>
                  <option value="SB">Solomon Islands</option>
                  <option value="SO">Somalia</option>
                  <option value="ZA">South Africa</option>
                  <option value="GS">South Georgia and the South Sandwich
                     Islands</option>
                  <option value="ES">Spain</option>
                  <option value="LK">Sri Lanka</option>
                  <option value="SH">St. Helena</option>
                  <option value="KN">St. Kitts and Nevis</option>
                  <option value="PM">St. Pierre & Miquelon</option>
                  <option value="VC">St. Vincent & the Grenadines</option>
                  <option value="SD">Sudan</option>
                  <option value="SR">Suriname</option>
                  <option value="SJ">Svalbard & Jan Mayen Islands</option>
                  <option value="SZ">Swaziland</option>
                  <option value="SE">Sweden</option>
                  <option value="CH">Switzerland</option>
                  <option value="SY">Syrian Arab Republic</option>
                  <option value="TW">Taiwan, Province of China</option>
                  <option value="TJ">Tajikistan</option>
                  <option value="TZ">Tanzania, United Republic of</option>
                  <option value="TH">Thailand</option>
                  <option value="TG">Togo</option>
                  <option value="TK">Tokelau</option>
                  <option value="TO">Tonga</option>
                  <option value="TT">Trinidad & Tobago</option>
                  <option value="TN">Tunisia</option>
                  <option value="TR">Turkey</option>
                  <option value="TM">Turkmenistan</option>
                  <option value="TC">Turks & Caicos Islands</option>
                  <option value="TV">Tuvalu</option>
                  <option value="UG">Uganda</option>
                  <option value="UA">Ukraine</option>
                  <option value="AE">United Arab Emirates</option>
                  <option value="UM">United States Minor Outlying Islands</option>
                  <option value="VI">United States Virgin Islands</option>
                  <option value="UY">Uruguay</option>
                  <option value="UZ">Uzbekistan</option>
                  <option value="VU">Vanuatu</option>
                  <option value="VA">Vatican City State (Holy See)</option>
                  <option value="VE">Venezuela</option>
                  <option value="VN">Viet Nam</option>
                  <option value="WF">Wallis & Futuna Islands</option>
                  <option value="EH">Western Sahara</option>
                  <option value="YE">Yemen</option>
                  <option value="ZR">Zaire</option>
                  <option value="ZM">Zambia</option>
                  <option value="ZW">Zimbabwe</option>
               </select>
               <tr>
                  <td class="label"><label for="phone">Phone:</label></td>
                  <td class="field"><input id="phone" maxlength="14"
                     name="cellphone" type="text" class="required phone" tabindex="10"
                     value=""></td>
               </tr>

               <p>
               <label for="Email">Email</label> 
               <input id="Email" type="text" name="email"></input> 
               </p>
  
            </fieldset>
            <p>
               <input id="SaveAccount" type="button" value="회원가입"
                  onclick="javascript:checkWrite()"></input>
            </p>

            <!-- <button>create</button>
         <p class="registerA">
            Already registered? <a href="#">Sign In</a>
         </p> -->
         </form>

         <form class="login-form" id="login-form" method="post"
            action="/SpringProject/template/login.do">
            <input type="text" id="login-email" name="email"
               placeholder="Email을 입력해주세요" /> <input type="password" id="login-pw"
               name="pwd" placeholder="비밀번호를 입력해주세요" /> <input type="button"
               class="loginBtn2" value="로그인" onclick="javascript:checkLogin()" />
            <p class="loginA">
               Not registered?<a href="#">Create an account</a>
            </p>
         </form>

         <form class="terms" action="#" method="get" id="form1">
            <div id="d1">

               <tr>
                  <td align="left"><font size="2">이용약관, 개인정보 수집 및 이용,
                        위치정보 이용약관(선택), 프로모션 안내 메일 수신(선택)에 모두 동의합니다.</font></td>
                  <td><input type="checkbox" name="eventcheck" id="eventcheck"></td>
               </tr>
               <div id="accordion">

                  <h3>
                     <a href="#"><font size="2">모라카이 이용약관 동의(필수)</font><input
                        type="checkbox" name="c1" id="c1" /></a>
                  </h3>
                  <td><textarea readonly="readonly" rows="5" cols="66">
         제 1 조 (목적)
         
         이 약관은 네이버 주식회사 ("회사" 또는 "네이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
         
         
         제 2 조 (정의)
         
         이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
         ①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 네이버 및 네이버 관련 제반 서비스를 의미합니다.
         ②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다. 
         ③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다. 
         ④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다. 
         ⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다. 
         ⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다. 
         ⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.  
         </textarea>
                     <h3>
                        <a href="#"><font size="2">개인정보 수집 및 이용에 대한 안내(필수)</font><input
                           type="checkbox" name="c2" id="c2" /></a>
                     </h3>
                     <div>
                        <textarea readonly="readonly" rows="5" cols="66">
      
         정보통신망법 규정에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
         
         
         1. 수집하는 개인정보
         
         이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
       
         </textarea>
                     </div>
                     <h3>
                        <a href="#"><font size="2">위치정보 이용약관 동의(선택)</font><input
                           type="checkbox" name="c3" id="c3" /></a>
                     </h3>
                     <div>
                        <textarea readonly="readonly" rows="5" cols="66">
      
         위치정보 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하는 네이버 위치기반 서비스를 이용할 수 있습니다.
         
         
         제 1 조 (목적)
         이 약관은 네이버 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
         
         
         제 2 조 (약관 외 준칙)
         이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보취급방침, 회사가 별도로 정한 지침 등에 의합니다.
         
         
         제 3 조 (서비스 내용 및 요금)
         ①회사는 직접 위치정보를 수집하거나 위치정보사업자인 이동통신사로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다. 1.Geo Tagging 서비스: 게시글 등록 시점의 개인위치정보주체의 위치정보를 게시글과 함께 저장합니다. 
         2.위치정보를 활용한 검색결과 제공 서비스: 정보 검색을 요청하거나 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 제공 시 본 위치정보를 이용한 검색결과 및 주변결과(맛집, 주변업체, 교통수단 등)를 제시합니다.
         3.위치정보를 활용한 친구찾기 및 친구맺기: 현재 위치를 활용하여 친구를 찾아주거나 친구를 추천하여 줍니다.
         4.연락처 교환하기: 위치정보를 활용하여 친구와 연락처를 교환할 수 있습니다.
         5.현재 위치를 활용한 광고정보 제공 서비스: 광고정보 제공 요청 시 개인위치정보주체의 현 위치를 이용하여 광고소재를 제시합니다.
         6. 이용자 보호 및 부정 이용 방지: 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 권한없는 자의 비정상적인 서비스 이용 시도 등을 차단합니다.
       </textarea>
                     </div>
               </div>
               <tr>
                  <td align="left"><font size="2">이벤트 등 프로모션 알림 메일
                        수신(선택)</font></td>
                  <td><input type="checkbox" name="c4" id="c4"></td>
               </tr>

               <div align="center">
                  <br />
                  <p class="registerA">
                     Already registered? <a href=# " id="sign_In">회원가입</a>
                  </p>
                  <br />
               </div>
            </div>
         </form>
      </div>
   </div>

   <!--지역노출------------------------------------------------------------------------------------------------------------->
    <div class="reserveLayer">
      <ul>
         <li style="width: 300px;" class="first-li"><img
            src="http://image2.yanolja.com/pension/reserveLocation.png" alt="지역"
            class="first-img">
            <div id="schLocationText">등급별 호텔정보</div> <input type="hidden"
            name="schLocation" id="schLocation" value="가평"> <input
            type="hidden" name="schLocationCode" id="schLocationCode"
            value="1.001001"> <img src="http://image2.yanolja.com/pension/leftDownArrow.png"
            alt="펼치기/닫기" class="arrowToggle last-img"></li>


         <li style="width: 300px;" class="second-li"><img
            src="http://image2.yanolja.com/pension/reserveCalendar.png" alt="날짜"
            class="first-img">
            <div id="schStartDateText">${today}</div> <input
            type="hidden" name="schStartDate" id="schStartDate"
            value="2016-07-01"> 
            <input type="hidden" name="schEndDate"
            id="schEndDate" value="2016-07-02"> <img
            src="http://image2.yanolja.com/pension/leftDownArrow.png"
            alt="펼치기/닫기" class="arrowToggle last-img"></li>

            
         <li style="width: 162px; background-color: #FF6559;" class="last-li">
            <img src="http://image2.yanolja.com/pension/reserveSearch.png"
            alt="검색" class="first-img">
            <div>빠른검색</div></li>
            
            <li style="width: 300px;" class="four-li"><img
            src="" alt=""
            class="first-img" id="tipimg">
            <div>보라카이 투어시 Tip</div> <input
            type="hidden" name="schTip" id="schTip"
            value="boraTip"> <input type="hidden" name="schEndDate"
            id="schEndDate" value="boraTip"><img
            src="http://image2.yanolja.com/pension/leftDownArrow.png"
            alt="펼치기/닫기" class="arrowToggle last-img"></li> 
      </ul>
   </div>
</div>
   
   
   
 <!--   <div class="reserveLayer">
      <ul>
         <li style="width: 250px;" class="first-li"><img
            src="http://image2.yanolja.com/pension/reserveLocation.png" alt="지역"
            class="first-img">
            <div id="schLocationText">가평</div> <input type="hidden"
            name="schLocation" id="schLocation" value="가평"> <input
            type="hidden" name="schLocationCode" id="schLocationCode"
            value="1.001001"> <img
            src="http://image2.yanolja.com/pension/leftDownArrow.png"
            alt="펼치기/닫기" class="arrowToggle last-img"></li>


         <li style="width: 250px;" class="second-li"><img
            src="http://image2.yanolja.com/pension/reserveCalendar.png" alt="날짜"
            class="first-img">
            <div id="schStartDateText">2016-07-01 (1박2일)</div> <input
            type="hidden" name="schStartDate" id="schStartDate"
            value="2016-07-01"> <input type="hidden" name="schEndDate"
            id="schEndDate" value="2016-07-02"> <img
            src="http://image2.yanolja.com/pension/leftDownArrow.png"
            alt="펼치기/닫기" class="arrowToggle last-img"></li>

         <li style="width: 170px;" class="three-li"><img
            src="http://image2.yanolja.com/pension/reservePeople.png" alt="인원"
            class="first-img">
            <div id="schPeopleText">2명</div> <input type="hidden"
            name="schPeople" id="schPeople" value="2"> <img
            src="http://image2.yanolja.com/pension/leftDownArrow.png"
            alt="펼치기/닫기" class="arrowToggle last-img"></li>
         <li style="width: 260px;" class="four-li"><img
            src="http://image2.yanolja.com/pension/reserveEtc.png" alt="기타"
            class="first-img">
            <div>테마 &amp; 가격선택</div> <img
            src="http://image2.yanolja.com/pension/leftDownArrow.png"
            alt="펼치기/닫기" class="arrowToggle last-img"></li>
         <li style="width: 162px; background-color: #FF6559;" class="last-li">
            <img src="http://image2.yanolja.com/pension/reserveSearch.png"
            alt="검색" class="first-img">
            <div>빈방찾기</div>
         </li>
      </ul>
   </div>
</div> -->