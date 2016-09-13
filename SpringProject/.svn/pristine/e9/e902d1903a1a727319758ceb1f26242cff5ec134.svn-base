<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="../css/step.css" type="text/css" rel="stylesheet">
<link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="stylesheet"></link>
<link href="../jquery/lib/jquery.autocomplete.css" rel="stylesheet" type="text/css" />
<link href="../css/header.css" type="text/css" rel="stylesheet" />
<link href="../css/reserveLayer.css" type="text/css" rel="stylesheet" />
<link href="../css/container.css" type="text/css" rel="stylesheet">
<link href="../jquery/lib/jquery.bxslider.css" rel="stylesheet" />
<link rel="stylesheet" href="../css/jquery.mCustomScrollbar.min.css" />
<link href="../css/detailBoard.css" type="text/css" rel="stylesheet" />
<link href="../css/boardWriteForm.css" type="text/css" rel="stylesheet" />
<link href="../css/notice.css" type="text/css" rel="stylesheet" />
<link href="../css/modify.css" type="text/css" rel="stylesheet" />
<link href="../css/pwd.css" type="text/css" rel="stylesheet" />
<link href="../css/scroll_photo.css" type="text/css" rel="stylesheet" />
<link href="../css/val2.css" type="text/css" rel="stylesheet" />
<link href="../css/notice.css" type="text/css" rel="stylesheet" />
<link href="../css/jquery.smartPop.css" type="text/css" rel="stylesheet" />
<link href="../css/payment.css" type="text/css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Love+Ya+Like+A+Sister' rel='stylesheet' type='text/css'>
<link href="../css/reservation.css" type="text/css" rel="stylesheet" />
<link href="../css/owl.theme.css" type="text/css" rel="stylesheet" />
<link href="../css/kakao.css" type="text/css" rel="stylesheet" />


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src="../jquery/lib/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="../script/member.js"></script>
<script type="text/javascript" src="../jquery/lib/formToWizard.js"></script>
<script type="text/javascript" src="../js/web/jssor.js"></script>
<script type="text/javascript" src="../js/web/jssor.slider.js"></script>
<script type="text/javascript" src="../jquery/lib/vticker.min.js"></script>
<script type="text/javascript" src="../jquery/lib/jquery.mCustomScrollbar.concat.min.js"></script>

<script type='text/javascript' src='../jquery/lib/jquery.autocomplete.js'></script>
<script type='text/javascript' src='../jquery/lib/jquery.bgiframe.min.js'></script>
<script type='text/javascript' src='../jquery/lib/jquery.ajaxQueue.js'></script>
<script type="text/javascript" src="../jquery/lib/jquery.maskedinput.js"></script>
<script type="text/javascript" src="../jquery/lib/jquery.validate.js"></script>
<script type="text/javascript" src="../jquery/lib/jquery.mockjax.js"></script>
<script src="https://unpkg.com/isotope-layout@3.0/dist/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="../jquery/lib/jquery.smartPop.js"></script>
<script type="text/javascript" src="../jquery/lib/jquery.validate.js"></script>
<script type="text/javascript" src="../jquery/lib/messages_ko.min.js"></script>
<script type="text/javascript" src="../jquery/lib/owl.carousel.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	

<style type="text/css">
#wrap {
	margin: auto;
	height: 100%;
	overflow: scroll;
	z-index: -1;
}

#top {
	height: 200px;
	border: 1px solid write;
}

#left {
	height: 500px;
	border: 1px solid write;
	width: 10%;
	margin-right: 10px;
	float: left;
}

#body {
	height: 500px;
	width: 89%;
	float: left;
}

#bottom {
	height: 150px;
	margin-top: 10px;
}

#main {
	margin-top: 10px;
}
</style>
<script type='text/javascript'>
//<![CDATA[
// 사용할 앱의 JavaScript 키를 설정해 주세요.
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
			
			location.href="/SpringProject/template/kakaologin.do?id="+id+"&nickname="+nickname;
			
		},
		fail: function(error) {
			console.log(error);
		}
	});
}

</script>


<script type="text/javascript">
	function maskF() {
		//화면의 높이와 너비를 구한다.
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();

		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$('.mask').css({
			'width' : maskWidth,
			'height' : maskHeight
		});
		//마스크의 투명도 처리
		$('.mask').fadeTo("fast", 0.6);
	}
	var availableTags = [ '보라카이', '여행', '해외여행', '펜션', '가온아라펜션', '거제돔관광호텔',
			'거제몽돌호텔', '거제아일랜드', '거제도펜션마을', '소동패밀리힐', '소낭구펜션', '상상속의집',
			'블루마레 펜션', '바토리조트', '몽마레펜션', '메르씨엘펜션', '도야가족호텔', '더비치펜션', '쏠베르',
			'스타마린펜션', '씨앤스카이리조트', '아뜨리에펜션', '와우펜션', '위식스호텔', '자킨토스', '카나리아펜션',
			'카이룰라펜션', '큐브아일랜드', '통영비치캐슬호텔', '트로피칼드림', '파라다이스펜션', '파인비치펜션',
			'팜트리펜션', '펜션칸', '프래밀리호텔', '하늘아리펜션', '하루애펜션', '하와유펜션', '하이클래스',
			'흑진주마리나리조트', '치킨', '육회', '바다', '대서양', '피자', '휴대폰', '기린', '타자',
			'강아지', '시조새', '티라노사우로스', '물컵', '할리스', '책상', '차키', '차콜', '알라누나 패키지',
			'친구 패키지', '커플 패키지', '여러가지 패키지', '호치 패키지', '할라스 패키지', '책상', '차키', '차콜', '알라누나 패키지'
			];
	
	$(document).ready(function() {
		$('.register-form').hide();
		$('.login-page').hide();
		$('#SignupForm').hide();
		$('.terms').hide();
		$("#SignupForm").formToWizard({ submitButton: 'SaveAccount' })
		$('.revLocLayer').hide();
		$('.revCalLayer').hide();
		$('#steps').hide();
		$('.boracayTip').hide();
		$('#myInfo1').hide();
		$('#myInfo2').hide();
		$('.mainTip').hide();
		$('.facebookLogout').hide();
		
		$('input[name="pwd"]').passwordStrength();
		$('input[name="password2"]').passwordStrength({targetDiv: '#passwordStrengthDiv2',classes : Array('is10','is20','is30','is40')});
		
		
		
		
		$(function() {
			  $('#example').vTicker();
		});
		
		////////////////////////////////////////////////////////
		
		//////////////////////////////////////////////////////////////
		//동영상
 		$('#tip').click(function aaa(){
			$('.boracayTip').stop().animate({
				top : 0,
				opacity : "toggle"
			}, "slow");
			$('#followquick').hide();
			maskF();
		}); 
		
 		$(function() {
 		    $( "#revCalLayer" ).datepicker({
 		    });
 		});
		
		$('.boracayTip').click(function(){
			$('.boracayTip').slideToggle();
			$('.mask').slideToggle();
			$('#followquick').slideToggle();
		});
/*  		if(${indexStart=='Y'}){
 			alert("sd");
 			$.smartPop.open({title: '이메일 인증을 완료해주세요', width: 300 ,height: 200, url: '../template/facebook.jsp' });
 		} */
 		
 		//"이메일 인증을 완료하면 회원가입이 완료됩니다."

 			/* $.smartPop.open({title: '스마트팝', width: 900,log:true ,height: 500, url: '../template/facebook.jsp' }); */
        var win;
		   
		$('#facebook').click(function(){
		   win = (window.open('https://www.facebook.com/profile.php?id=100012983433015','보라카이',
				   'width=800,height=500,top=100,left=280,status=no,menubar=no,toolbar=no,location=no '));
		   maskF();
		});
		
		
		
		if(${loginChk=='Y'}){
			$('.loginBtn').hide();
			$('#myInfo1').slideToggle();
		}
		
		if(${kakaoY=='Y'}){
			$('.loginBtn').hide();
			$('.kakaoLogin').hide();
			$('#myInfo2').slideToggle();
		}
		$('.facebookLogin').click(function(){
			alert('눌림?');
			$('.facebookLogin').hide();
			$('.loginBtn').hide();
			$('.kakaoLogin').hide();
			$('.facebookLogout').show();
		});
		
		$('.facebookLogout').click(function(){
			$('.facebookLogout').hide();
			$('.facebookLogin').show();
			$('.facaClass').show();
			$('.loginBtn').show();
			$('.kakaoLogin').show();
			
		});
	 	/* $('.loginBtn2').click(function(){
			$('#myInfo1').show();
			 $('#myInfo2').hide();
		});
		$('#myInfo_close').click(function(){
			$('#myInfo1').hide();
			$('#myInfo2').show()
		});  */
		
		//follow quick menu
		$(window).scroll(function(){
		var scrollTop = $(document).scrollTop();
		if (scrollTop < 180) {
		 scrollTop = 180;
		}
		$("#followquick").stop();
		$("#followquick").animate( { "top" : scrollTop });
		});
		
		
		//isotope 뻘짓중
		var $grid = $('.grid').isotope({
			itemSelector: '.mainLayer',
			layoutMode: 'fitRows',
			getSortData: {
			 name: '.name',
			 symbol: '.symbol',
			 number: '.number parseInt',
			 category: '[data-category]',
			 weight: function( itemElem ) {
			 var weight = $( itemElem ).find('.weight').text();
			 return parseFloat( weight.replace( /[\(\)]/g, '') );
		 }
		}
		});
		
		//스크롤시작
		var wd = $(".xxxxx .photo ul li").width();
		var ln = $(".xxxxx .photo ul li").length;
		$(".xxxxx .photo ul").css("width",wd * ln);	
		$(".xxxxx .btn li").mouseover(function(){
			pos = $(this).parent().parent().find(".photo li").eq($(this).index()).position().left;		
			$(this).parent().parent().find(".photo").stop().animate({'scrollLeft':pos},500);	
			$(this).parent().parent().find(".btn li").removeClass("on");
			$(this).addClass("on");
		});
		//스크롤끝
		
		
		$('#modifyForm').hide();
		$('#modifyForm_pw').hide();
		$('#allPage').hide();
		
		$('#modify_infoB').click(function(){
			$('#modifyForm_pw').hide();
			$('#allPage').hide();
			$('#modifyForm').slideToggle();
		});
		$('#modify_pwB').click(function(){
			$('#modifyForm').hide();
			$('#allPage').hide();
			$('#modifyForm_pw').slideToggle();
		});
		$('#myRev').click(function(){
			$('#modifyForm_pw').hide();
			$('#modifyForm').hide();
			$('#allPage').slideToggle();
		});
		
		
		
		$("input.phone").mask("(999) 9999-9999");
		
		
	    $('.slider').bxSlider({
	          mode:'fade', //default : 'horizontal', options: 'horizontal', 'vertical', 'fade'
	    	  speed:3000, //default:500 이미지변환 속도
	    	  pause:100,//머물러 있는 시간
	    	  auto: true, //default:false 자동 시작
	    	  captions: true, // 이미지의 title 속성이 노출된다.
	    	  autoControls: true, //default:false 
	    	  minSlides: 2,
	    	  maxSlides: 2,
	    });
	    
	    $('.subSlider').bxSlider({
	          mode:'fade', //default : 'horizontal', options: 'horizontal', 'vertical', 'fade'
	    	  speed:5000, //default:500 이미지변환 속도
	    	  pause:100,//머물러 있는 시간
	    	  auto: true, //default:false 자동 시작
	    	  captions: true, // 이미지의 title 속성이 노출된다.
	    	  autoControls: true, //default:false 
	    });
	    
	    $('.newPackage').bxSlider({
	    	 minSlides: 4,
	    	  maxSlides: 4,
	    	  slideWidth: 900,
	    	  slideMargin: 10,
	    	  ticker: true,
	    	  speed: 30000
	    });
	    
	    $('.tripAfterSlide').bxSlider({
	    	minSlides:8,
            moveSlides:3,
           speed:3000, //default:500 이미지변환 속도
           pause:500,//머물러 있는 시간
           auto: true, //default:false 자동 시작
           captions: true, // 이미지의 title 속성이 노출된다.
           autoControls: true, //default:false 
           infiniteLoop:true
	    })
	
		
		$('.navi > li').hover(
		  function () {
		   $('a',$(this)).stop().animate({'marginLeft':'-2px'},200);
		  },
		  function () {
		   $('a',$(this)).stop().animate({'marginLeft':'-85px'},200);
		  }
		 );
		
		$('.loginBtn').click(function ccc() {
			$('.login-page').stop().animate({
				top : 0,
				opacity : "toggle"
			}, "fast");
			$('#followquick').hide();
			maskF();
		});

		$('.loginA a').click(function() {
			$('.login-form').hide();
			$('.terms').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		});

		/*  $('.registerA a').click(function(){
		 	$('.terms').hide();
		      $('.SignupForm').animate({height: "toggle", opacity: "toggle"}, "slow");
		    }); */

		$('.closeD').click(function() {
			$('.login-page').hide();
			$('#followquick').show();
			$('.mask').hide();
		});
		    
		$('.mask').click(function(){
			$('#followquick').show();
			$('.boracayTip').hide();
			$('.login-page').hide();
			$('.mask').hide();
		});
	
		
		$("#schText").autocomplete(availableTags, {
			matchContains : true,
			selectFirst : false
		});

		$(".first-li").click(function() {
			$('.revCalLayer').hide();
			$('.mainTip').hide();
			$('.revLocLayer').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		});
		
		$(".second-li").click(function(){
			$('.revLocLayer').hide();
			$('.mainTip').hide();
			$('.revCalLayer').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		});
		
		$(".four-li").click(function(){
			$('.revLocLayer').hide();
			$('.revCalLayer').hide();
			$('.mainTip').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		});
		
		$(".slideCloseBtn").click(function(){
			$('.revLocLayer').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		});
		
		$(".slideCloseBtn2").click(function(){
			$('.revCalLayer').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		});
		
		 $('.roomLists').click(function(){
	        $('.roomLists').css('background-color','#FFF');
	        $('.roomLists').css('color','#555');
	        $(this).css('background-color','#FF6559');
	        $(this).css('color','#FFF');
	    });
	    
	    $('.detailTitle ul li').click(function(){
	        var index = $(this).index();
	        var viewID = "";
	        if(index == 0){
	            viewID = "viewImages";
	        }else if(index == 1){
	            viewID = "viewPensionInfo";
	        }else if(index == 2){
	            viewID = "viewPensionService";
	        }else if(index == 3){
	            viewID = "viewMaps";
	        }else if(index == 4){
	            viewID = "viewCancel";
	        }else{
	            viewID = "viewImages";
	        }
	        
	        var offset = 60;
	        var target = $('#'+viewID+' ul').offset().top - offset;
	        $('html, body').animate({scrollTop:target}, 1000);
	    });
	    
	    $('.reserveBtn').click(function(){
	        if($(this).index() == 0){
	                                location.href='/pensionReserve?ypIdx=23084&revDate=2016-07-05&revDay=1';
	                        }else{
	            window.open('/web/detailIframe?ypIdx=23084&frameFlag=Y','reserve','scrollbars=yes, toolbar=no, resizable=no, width=980, height=800');
	        }            
	    });
	    
	    $('.detail_like_layer').find('img').mouseover(function(){
	        if(likeFlag == "on"){
	            $(this).attr('src',$(this).attr('src').replace("on.png","off.png"));
	        }else{
	            $(this).attr('src',$(this).attr('src').replace("off.png","on.png"));
	        }
	    });
	    
	    $('.detail_like_layer').find('img').mouseout(function(){            
	        if(likeFlag == "off"){
	            $(this).attr('src',$(this).attr('src').replace("on.png","off.png"));
	        }else{
	            $(this).attr('src',$(this).attr('src').replace("off.png","on.png"));
	        }
	    });
	    $("input.phone").mask("(999) 9999-9999");
	    $('.detail_like_layer').find('img').click(function(){
	                        alert('로그인 후 이용 가능합니다');
	                });
	    
	    $('.tipLists').click(function(){
	        location.href='pensionTip?ypIdx=23084';
	    });
	    
	    $('.writeTip').click(function(){
	                        alert('로그인 후 이용 가능합니다');
	                });
	    
	    $('#moveViewMaps').click(function(){
	        var offset = 60;
	        var target = $('#viewMaps ul').offset().top - offset;
	        $('html, body').animate({scrollTop:target}, 1000);
	    });
	    
	    $('#slider-tip').owlCarousel({
		    items:4,
		    margin:10,
		    autoplay:true,
		    autoplayTimeout:1000,
		    autoplayHoverPause:true
	    });
	    
	    /* facebook login */
	}); //ready function end
	
	    
	 $.fn.passwordStrength = function( options ){
			return this.each(function(){
				var that = this;that.opts = {};
				that.opts = $.extend({}, $.fn.passwordStrength.defaults, options);
				
				that.div = $(that.opts.targetDiv);
				that.defaultClass = that.div.attr('class');
				
				that.percents = (that.opts.classes.length) ? 100 / that.opts.classes.length : 100;

				 v = $(this)
				.keyup(function(){
					if( typeof el == "undefined" )
						this.el = $(this);
					var s = getPasswordStrength (this.value);
					var p = this.percents;
					var t = Math.floor( s / p );
					
					if( 100 <= s )
						t = this.opts.classes.length - 1;
						
					this.div
						.removeAttr('class')
						.addClass( this.defaultClass )
						.addClass( this.opts.classes[ t ] );
						
				})
				/* .after('<a href="#">Generate Password</a>')
				.next()
				.click(function(){
					$(this).prev().val( randomPassword() ).trigger('keyup');
					return false;
				}); */
			});

			function getPasswordStrength(H){
				var D=(H.length);
				if(D>5){
					D=5
				}
				var F=H.replace(/[0-9]/g,"");
				var G=(H.length-F.length);
				if(G>3){G=3}
				var A=H.replace(/\W/g,"");
				var C=(H.length-A.length);
				if(C>3){C=3}
				var B=H.replace(/[A-Z]/g,"");
				var I=(H.length-B.length);
				if(I>3){I=3}
				var E=((D*10)-20)+(G*10)+(C*15)+(I*10);
				if(E<0){E=0}
				if(E>100){E=100}
				return E
			}

			function randomPassword() {
				var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$_+";
				var size = 10;
				var i = 1;
				var ret = ""
				while ( i <= size ) {
					$max = chars.length-1;
					$num = Math.floor(Math.random()*$max);
					$temp = chars.substr($num, 1);
					ret += $temp;
					i++;
				}
				return ret;
			}

		};
			
		$.fn.passwordStrength.defaults = {
			classes : Array('is10','is20','is30','is40','is50','is60','is70','is80','is90','is100'),
			targetDiv : '#passwordStrengthDiv',
			cache : {}
		}
		
	
</script>
</head>
<body>
	<div id="wrap">
			<div id="header"><jsp:include page="../template/header.jsp" /></div>
						<jsp:include page="../template/layer.jsp" />
			<jsp:include page="../template/side.jsp" />
			<jsp:include page="../template/tip.jsp" />
			<jsp:include page="../template/rightSide.jsp" />
			<div id="container"><jsp:include page="${display }" />
			</div>
			<div style="clear: both;"></div>
			<div id="footer"><jsp:include page="../template/footer.jsp" /></div>
			<div id="totop">
				<a href="#header"><img src="/SpringProject/img/top_btn.png"></a>
			</div>
		</div>
</body>
</html>

<script type="text/javascript">
		var doc = document;
		var form1 = doc.getElementById('form1');
		var inputs = form1.getElementsByTagName('INPUT');
		var form1_data = {
			"c1" : false, //전체 선택
			"c2" : false, //필수 선택 1
			"c3" : false
		//필수 선택 2
		};

		var c1 = doc.getElementById('c1');
		var c2 = doc.getElementById('c2');
		var c3 = doc.getElementById('c3');

		function checkboxListener() {
			form1_data[this.name] = this.checked; //각각 자신의 checkBox를 Checked 상태로 바꿈  
		}

		c1.onclick = c2.onclick = c3.onclick = checkboxListener; //c1, C2, C3를 checkBoxListenner를 호출하여
		//Checked로 바꿈
		var all = doc.getElementById('eventcheck'); //전체 체크를 위한 체크박스 선언

		all.onclick = function() { //전체 체크를 누를 시
			if (this.checked) {
				setCheckbox(form1_data, true); //form1_data(c1,c2,c3)의 값을 모두 Checked로 바꿈
			} else {
				setCheckbox(form1_data, false); ////form1_data(c1,c2,c3)의 값을 모두 no checked로 바꿈
			}
		};

		function setCheckbox(obj, state) { //checkbox상태 변경하는 함수
			for ( var x in obj) {
				obj[x] = state;

				for (var i = 0; i < inputs.length; i++) {
					if (inputs[i].type == "checkbox") {
						inputs[i].checked = state;
					}
				}

			}
		}

		sign_In.onclick = function(e) {
			e.preventDefault();

			if (!form1_data['c1']) {
				alert('이용동의 약관에 동의하지 않았습니다.');
				return false;
			}

			if (!form1_data['c2']) {
				alert('개인정보 수집 및 이용에 대한 안내를 동의하지 않았습니다.');
				return false;
			}
			$('.terms').hide();
			$('#SignupForm').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		};
	</script>
