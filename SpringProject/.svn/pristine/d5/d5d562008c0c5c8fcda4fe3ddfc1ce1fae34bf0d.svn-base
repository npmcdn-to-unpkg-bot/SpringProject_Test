<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

@CHARSET "UTF-8";

/* í•˜ë‹¨ : íƒ­ */
.tabview { position: relative; width: 100%; height: 100%; display: none; }
.tabview.tab01 { display: block; }


/* í•˜ë‹¨ : ì¼ì •í‘œ */
#infoWrap #schedule { position: relative; display: block; width: 100%; margin: 20px 0 0 0; top:-3px;}

/* ì¼ì •ì°¨ìˆ˜ */
#schedule #dateWrap { position: relative; width: 100%; height:36px; text-align: center; }
#dateWrap .dateSlider { display: inline-block; width: auto; height: 36px; margin: 0 auto; font-size: 14px; color: #303030; font-weight: 500; letter-spacing: -1px; }
#dateWrap .dateSlider .slideWrap { position: relative; float: left; width: 370px; height: 36px; overflow: hidden; }
#dateWrap .dateSlider .slideWrap .slide { position: absolute; top: 0; left: 0; display: block; width: 3000px; height: 36px; }
#dateWrap .dateSlider .slideWrap .slide span { display: block; float: left; width: 36px; height: 36px; margin-left: 10px; text-align: center; line-height: 2.5; background: none; cursor: pointer; }
#dateWrap .dateSlider .slideWrap .slide span.on { background: url("../img/schedule_on.png") center center no-repeat; color: #fff; }
#dateWrap .dateSlider button { border: none; width: 36px; height: 36px; background: none; font-size: 24px; color: #999999; font-weight: 600; }
#dateWrap .dateSlider button.off { color: #ececec; }
#dateWrap .dateSlider button.prev { float: left; margin-right: 10px; }
#dateWrap .dateSlider button.next { float: right; margin-left: 12px; }

/* ì¼ì •í‘œ ìƒë‹¨ë²„íŠ¼ */
.scheduleNoti button {height: 32px; margin: 0; border: 1px solid #b8b8b8; background: #fff; font-size: 13px; color: #2a2a2a; font-weight: 500; line-height:30px;}
.scheduleNoti button.safe { width: 216px; }
.scheduleNoti button.freebag { width: 100px; } /* ë¬´ë£Œìˆ˜í™”ë¬¼ */

/* ì¼ì •í‘œ : tab01 */
#schedule #daily { position: relative; display: inline-block; width: 100%; border-top: 1px solid #333333; border-bottom: 2px solid #333333; font-weight: 500; }
#daily .dayTitle { height: 56px; border: 1px solid #d1d4d6; border-top: 1px solid #333333; border-bottom: none; background: #f9fbfb; overflow: hidden; }
#daily .dayTitle span.day { float: left; display: block; margin: 17px 0 0 20px; font-size: 22px; color: #000; font-weight: 800; }
#daily .dayTitle span.dayTxt { float: left; display: table-cell; width: 50%; height: 67px; margin: 0 0 0 33px; font-size: 15px; color: #303030; font-weight: 600; }
#daily .dayTitle span.dayTxt p { display: table-cell; width: 100%; height: 56px; vertical-align: middle; line-height: 1.4; }
#daily .dayTitle > select { float: right; width: 200px; margin: 10px 20px 15px 0; padding: 8px 10px 9px; padding: 8px 10px \9; line-height: 30px; border: 1px solid #dee1e2; font-size: 13px; color: #777777; }

#daily .dayArea { height: 40px; background: url("/images/detail/linedot.png") bottom left repeat-x; border: 1px solid #d1d4d6; border-bottom: none; }
#daily .dayArea span.areaName { background: transparent url("../img/schedule_bul01.png") left top no-repeat; }
#daily .dayArea span { float: left; display: block; margin: 10px 0 0 20px; padding: 2px 0 0 20px; font-size: 16px; color: #303030; font-weight: 600; }
#daily .dayArea span.bar {margin:10px 5px 0 !important; padding:2px 0 0 0 !important;} 
#daily .dayArea span.userName {margin:10px 0 0 0 !important; padding:2px 0 0 0 !important;} 


#daily .dayInfo { display: inline-block; width: calc(100% - 2px); min-width: 818px; padding: 15px 0 0 0; margin-bottom: -4px ; border: 1px solid #dee1e2; border-top: none; border-bottom: none; }
#daily .dayInfo span.time { clear: both; float: left; display: inline-block; min-width: 45px; margin: 0 0 15px 25px; padding: 0 0 0 15px; font-size: 16px; color: #fa6f09; font-weight: 600; background: transparent url("../img/schedule_bul02.png") left center no-repeat; }
#daily .dayInfo span.timeTxt { float: left; display: block; width: 80%; /*min-height: 25px; */margin: -5px 0 5px 40px; font-size: 16px; color: #fa6f09; font-weight: 600; line-height: 1.575; }
#daily .dayInfo span.timeTxtSub { clear: both; display: block; width: 90.3%; margin: 0 10px 15px 40px; font-size: 13px; color: #303030; font-weight: 500; line-height: 1.575; }

#daily .dayInfo div.infoTxt.infoType01 { clear: both; display: inline-block; width: 89%; min-width: 630px; max-width: 740px; margin: 0 10px 10px 0; padding: 15px 20px 0 20px; background: #f9fbfb; font-size: 13px; color: #777777; overflow: hidden; text-align:center;}
#daily .dayInfo div.infoTxt.infoType01 span.tit { float:left; clear: both; display: inline-block; margin:0 0 13px 0; font-size: 14px; color: #303030; font-weight: 700; }
#daily .dayInfo div.infoTxt.infoType01 span.tit span { float: left; display: inline-block; }
#daily .dayInfo div.infoTxt.infoType01 span.tit p { float: left; display: inline-block; margin: 0 8px; font-size: 14px; color: #303030; font-weight: 100; }
#daily .dayInfo div.infoTxt.infoType01 span.dot { text-align: left; float:left; clear: both; display: block; margin: 0 0 0 0; padding: 0 0 0 11px; line-height: 1.8; background: url("/images/detail/dot.png") left 10px no-repeat; }
#daily .dayInfo div.infoTxt.infoType01 span.pic { clear: both; display: block; float: left; margin: 0 62px 0 0; padding: 0 0 0 0; }



/* í…œí”Œë¦¿ */
div.infoTxt.template { clear: both; width: 90.465%; margin: 0 auto; font-size: 13px; color: #777777; overflow: hidden; }
div.infoTxt.template .infoBar { display: table; position: relative; width: calc(100% - 2px); height: 30px; border: 1px solid #e8e9e9; border-bottom:none; background: #f9fbfb; }
div.infoTxt.template .infoBar .ctName {float:left; display:inline-block; width:270px; overflow:hidden; word-wrap:normal; text-overflow:ellipsis; white-space:nowrap; }
div.infoTxt.template .infoBar span.head { display: none; position: absolute; top: -1px; left: -1px; width: 23%; height: 32px; background: #41ae97; color: #fff; font-size: 16px; font-weight: 600; text-align: center; line-height: 33px; }
div.infoTxt.template .infoBar span.head.mint { background: #41ae97; }
div.infoTxt.template .infoBar span.head.yellow { background: #ffc200; }
div.infoTxt.template .infoBar span.head.gray { background: #3e3a3b; }
div.infoTxt.template .infoBar span.tit { display: table-cell; width: 718px; padding-left: 20px; margin-top: 2px; vertical-align: middle; font-size: 14px; color: #333333; font-weight: 600; }
div.infoTxt.template .infoBar span.tit span.hgName { float:left; display:block; height: 14px; overflow: hidden; }
.mrl5 {float:left; margin:0 5px;}
div.infoTxt.template .infoBar span.tit span.barLine {color:#b8bab9;}
div.infoTxt.template .infoBar span.tit .choTxt {float:left; display:inline-block; max-width:210px; overflow:hidden; word-wrap:normal; text-overflow:ellipsis; white-space:nowrap; }
div.infoTxt.template .infoBar span.tit span.navi p {float:left; color: #fa6f09; font-weight: 400; }
div.infoTxt.template .infoBar.headOk > span.head { display: block; }
div.infoTxt.template .infoBar span.btn { position: absolute; right: 20px; top: 8px; font-size: 13px; color: #2a2a2a; font-weight: 500; cursor: pointer; }
div.infoTxt.template .infoBar span.btn p { display: inline-block; width: 15px; text-align: right; font-size: 15px; font-weight: 800; }
div.infoTxt.template .infoBody { display: block; width: calc(100% - 2px); border: 1px solid #ebebeb; font-weight: 500; line-height: 1.6; overflow: hidden; margin-bottom:15px;}
div.infoTxt2.template2 .infoBody { display: block; width: calc(100% - 2px); border: 1px solid #ebebeb; font-weight: 500; line-height: 1.6; overflow: hidden; }
div.infoTxt.template .infoBody span.subject { clear: both; display: block; height: 13px; padding: 0 0 0 8px; margin: 20px 0 -10px 20px; border-left: 2px solid #fa6f09; font-size: 14px; color: #303030; font-weight: 500; line-height: 0.9; }
div.infoTxt.template .infoBody .picWrap { display: inline-block; width:calc(100% - 38px); margin: 10px 19px 0 19px;  line-height:1.6; }
div.infoTxt.template .infoBody .picWrap span.pic { float: left; display: block; width: 31.42857142857%; margin: 0 17px 10px 0; line-height:1.6;}
div.infoTxt.template .infoBody .picWrap span.pic span.txtC { display:block; height: auto; margin: 0 10px; text-align:center; line-height:1.3; }
div.infoTxt.template .infoBody .picWrap span.pic img { width: 100%; height: auto; min-height: 140px; }
div.infoTxt.template .infoBody .picWrap span.picB { display: inline-block; width: 100%; height: auto; margin: 0 AUTO; overflow: hidden; }
div.infoTxt.template .infoBody .picWrap span.picThum { float: left; display: block; width: 31.42857142857%; height:140px; margin: 0 13px 10px 0; line-height:1.6;}
div.infoTxt.template .infoBody .picWrap span.picThum span.txtC { display:block; height: auto; margin: 0 10px; text-align:justify; line-height:1.3; }
div.infoTxt.template .infoBody .picWrap span.picThum img { width: 100%; height: auto; min-height: 140px; }
span.picB span.txtC { display:block; height: auto; margin: 0 150px; text-align:center; }
div.infoTxt.template .infoBody .picWrap span.txtBox { display:inline; width: 100%; height: auto; }
div.infoTxt.template .infoBody .picWrap span.txtBoxB { display:inline-block; width: 100%; height: auto; }
div.infoTxt.template .infoFoot { display: inline-block; margin: 6px 0 0 0; line-height: 1.4; font-size: 13px; color: #777777; font-weight: 500; margin-bottom:40px; }
div.infoTxt.template .infoFoot p { display: inline-block; color: #fa6f09; }
div.infoTxt.template .refer { width:calc(100% - 37px); clear: both; display: inline-block; padding: 17px 19px 20px 19px; background: #f9fbfb; font-size: 14px; font-weight: normal; line-height: 1.475; }
div.infoTxt.template .refer .referTit { display: block; padding: 3px 14px 0 24px; margin-top: -2px; color: #555555; background: url("/images/detail/icon_circle.png") center left no-repeat; }
div.infoTxt.template .refer .referTxt { display: block; padding: 0 14px 0 24px; width: 662px; font-size: 13px; color: #000; font-weight: 500; }

#daily .dayInfo div.infoTxt.infoType03 { position: relative; clear: both; width: calc(100% - 2px); height: 420px; margin: 20px auto; overflow: hidden; }
#daily .dayInfo div.infoTxt.infoType03 .control { position: absolute; display: block; width: 61px; top: 50%; left: 50%; margin: -30px 0 0 -30px; cursor: pointer; }
#daily .dayInfo div.infoTxt.infoType03 .movieBg video { width: 100%}

#daily .dayInfo div.comment { clear: both; width: 90%; margin: 12px auto 20px; font-size: 14px; color: #2a2a2a; font-weight: 500; line-height: 1.475; }
#daily .dayInfo div.comment p { display: inline-block; color: #fa6f09; font-weight: 500; }
#daily .dayInfo div.ending { clear: both; width: 654px; height: auto; margin: 0 10px 0 40px; font-size: 14px; color: #666666; line-height: 1.4; word-break: break-all; }
#daily .dayInfo div.ending img { width: 100%; height: auto; margin: 0; }

#daily .dayStay { min-height: 40px; border: 1px solid #d1d4d6; border-bottom: none; position:relative; margin-top:-4px;}
#daily .dayStay span.stay { float: left; display: block; margin: 13px 0 0 20px; padding: 0 0 0 20px; font-size: 16px; color: #303030; font-weight: 600; background: transparent url("/images/detail/schedule_icon01.png") left center no-repeat; }
#daily .dayStay span.stayTxt { float: left; display: block; margin: 13px 10px 0 35px; font-size: 14px; }
#daily .dayStay span.stayTxt a.link {width:100% !important; position:relative; text-decoration:underline; color:#01b6b1;}
#daily .dayStay span.stayBigo { display: block; padding: 13px 50px 15px 105px; font-size: 14px; line-height: 1.3; }
#daily .dayStay span.stayBigo2 { clear:both; display: block; padding: 13px 15px 15px 105px; font-size: 14px; line-height: 1.3; }
#daily .dayFood { height: 40px; border: 1px solid #d1d4d6; border-bottom: none; }
#daily .dayFood span.food { float: left; display: block; margin: 13px 0 0 20px; padding: 0 0 0 20px; font-size: 16px; color: #303030; font-weight: 600; background: transparent url("/images/detail/schedule_icon02.png") left center no-repeat; }
#daily .dayFood span.foodTxt { float: left; display: block; margin: 13px 0 0 35px; font-size: 14px; }
#daily .dayFood span.foodTxt span { padding-right: 20px; }
#daily .dayFood span.foodTxt img { vertical-align: middle; margin: -2px 7px 0 0; }
#daily .dayFood span.btn { float: right; display: inline-block; margin: 17px 18px 0 0; font-size: 13px; color: #2a2a2a; font-weight: 500; cursor: pointer; display: none; }
#daily .dayFood span.btn p { display: inline-block; width: 15px; text-align: right; font-size: 15px; font-weight: 800; }


/* ì¼ì •í‘œ ì™¸ : tab02 ë¶€í„° */
.etcInfo { display: inline-block; width: 99.7%; margin: 27px 0 0 0; padding: 19px 0 0 0; border: 1px solid #dee1e2; }



/* ìµœí•˜ë‹¨ íƒ­ */
#etcWrap { position: relative; display: inline-block; width: 100%; top:-30px; }
#etcWrap .tab { position: relative; width: 99.7%; margin: 50px 0 -10px 0; }
#etcWrap .tab ul { display: table; table-layout: fixed; width: 100%; height: 48px; border: 1px solid #dddddd; }
#etcWrap .tab ul li { display: table-cell; position: relative; padding: 0 3px; text-align: center; vertical-align: middle; letter-spacing: -1px; font-size: 14px; color: #333333; text-align: center; border-left: 1px solid #dddddd; cursor: pointer; }
#etcWrap .tab ul li:first-child { border-left: none; }
#etcWrap .tab ul li p {  }
#etcWrap .tab ul li a { position: absolute; z-index: 999999; display: block; width: 100%; height: 100%; top:0; left: 0; background: transparent; text-indent: -2000000px; }
#etcWrap .tab ul li.on { background: #2d3139; color: #fff; }

#etcWrap .etc.tab01 { display: block; }
#etcWrap .etc { clear: both; position: relative; width: 820px; margin-top: 20px; font-size: 13px; color: #747474; font-weight: 500; line-height: 1.55; display: none; }
#etcWrap .etc div.left { display: table-cell; position: relative; width: 140px; height: 100%; padding: 30px 0 0 20px; background: #f7f8f9; vertical-align: top; }
#etcWrap .etc div.left button { position: absolute; bottom: 20px; left: 20px; width: 121px; height: 37px; background: #777777; border: none; font-size: 14px; color: #fff; }
#etcWrap .etc div.right { display: table-cell; width: 640px; padding-left: 20px; }
#etcWrap .etc span.pic { clear: both; display: block; width: 120px; height: 30px; }
#etcWrap .etc span.pic img { width: 100%; height: auto; min-height: 20px; }
#etcWrap .etc span.line { clear: both; display: block; width: 30px; height: 1px; background: #4a4a4a; margin: 7px 0 20px 0; }
#etcWrap .etc span.titB { clear: both; display: block; margin: 0 0 0 0; font-size: 20px; color: #333333; font-weight: 600; }
#etcWrap .etc span.tit { clear: both; display: block; margin: 0 0 0 0; font-size: 14px; color: #333333; font-weight: 600; }
#etcWrap .etc span.tit p { display: inline-block; color: #fa6f09; }
#etcWrap .etc span.dot { clear: both; display: block; margin: 22px 0 2px 0; padding: 0 0 0 13px; font-size: 14px; color: #333333; font-weight: 600; background: url("/images/detail/dot.png") left 8px no-repeat; }
#etcWrap .etc span.txt { clear: both; display: block; margin: 0 0 0 0; padding: 0 0 0 12px; color: #666666; }
#etcWrap .etc span.txt.silver { color: #999999; }
#etcWrap .etc span.txt p.black { display: inline-block; color: #333333; }
#etcWrap .etc span.bul { clear: both; display: block; margin: 0 0 0 12px; padding: 0 0 0 13px; color: #999999;}
/* ìµœí•˜ë‹¨ íƒ­ : ìž…ê¸ˆê³„ì¢Œ */
#etcWrap .etc .box { width: 100%; height: 70px; background: #f7f8f9; }
#etcWrap .etc .box span.dot { float: left; clear: none; margin: 25px 10px 0 130px; font-weight: 16px; color: #333333; }
#etcWrap .etc .box span.dot p { display: inline-block; font-weight: 16px; color: #fa6f09; }
/* ìµœí•˜ë‹¨ íƒ­ : ì‡¼í•‘ì •ë³´ */
#etcWrap .etc table.shop { width: 100%; margin-top: 20px; border: 1px solid #000; border-left: none; border-right: none; }
#etcWrap .etc table.shop th, #etcWrap .etc table.shop td { height: 57px; text-align: center; vertical-align: middle; border-left: 1px solid #d1d1d1; border-bottom: 1px solid #d1d1d1; color: #666666; }
#etcWrap .etc table.shop th:first-child, #etcWrap .etc table.shop td:first-child { border-left: none; }
#etcWrap .etc table.shop th { color: #333333; font-weight: 600; background: #f7f8f9; }



/* í•´ì™¸ì—¬í–‰ ì•ˆì „ì •ë³´ ì•ˆë‚´ */
#safeWrap { width: ca1c(100% - 2px); margin: -20px 0 0 0; border: 1px solid #e8e9e9; }
#safeWrap span.titleBar { display: inline-block; width: calc(100% - 18px); width:100%; height: 45px; padding-left: 20px; margin: -1px 0 0 -1px; background: #fdc45d; font-size: 16px; color: #fff; font-weight: 600; line-height: 3; }
#safeWrap span.txt { display: inline-block; margin: 20px; font-size: 14px; color: #747474; font-weight: 500; line-height: 1.4; }
#safeWrap button { height: 32px; margin: 0 0 20px 30px; padding: 0 20px; border: 1px solid #b8b8b8; background: #fff; font-size: 13px; color: #000; font-weight: 500; line-height: .9; }
#safeWrap button.safe { width: 167px; }



/* í˜„ì§€ ì‹œê°„/ë‚ ì”¨ ì •ë³´ */
#weatherWrap { position: relative; display: inline-block; width: calc(100% - 2px); width:818px; margin: 20px 0 0 0; border: 1px solid #e8e9e9; }
#weatherWrap span.titleBar { position: relative; display: inline-block; width: calc(100% - 20px); width:98%; height: 45px; padding-left: 20px; margin: -1px 0 0 -1px; background: #63bcaa; font-size: 16px; color: #fff; font-weight: 600; line-height: 3; }
#weatherWrap span.titleBar span.time { position: absolute; display: inline-block; right: 190px; top: -2px; padding-right: 25px; font-size: 15px; font-weight: 500; }
#weatherWrap span.titleBar span.time span { display: inline-block; font-size: 17px; }
#weatherWrap span.titleBar span.time p { position: absolute; top: 4px; top: 5px \9; right: 0; font-size: 14px; font-weight: 500; }
#weatherWrap span.titleBar span.selectArea { position: absolute; display: inline-block; right: 20px; top: 7px; }
#weatherWrap span.titleBar span.selectArea > select { display: block; width: 150px; padding: 7px; padding: 6px 7px 5px \9; line-height: 28px; border: none; font-size: 14px; color: #777777; }

#weatherWrap div.clock { float: left; width: 24.5%; border-right: 1px solid #e8e9e9; font-size: 14px; color: #2a2a2a; font-weight: 500; text-align: center; }
#weatherWrap div.clock span { display: block; }
#weatherWrap div.clock span.subject { height: 30px; text-align: center; line-height: 2.2; background: url("/images/detail/weather_bg.png") repeat; }
#weatherWrap div.clock span.tit { margin: 40px 0 0 0; font-size: 15px; color: #63bcaa; font-weight: 600; }
#weatherWrap div.clock span.time { margin: 8px 0 0 0; font-size: 20px; color: #303030; font-weight: normal; }
#weatherWrap div.clock span.time span { display: inline-block; }
#weatherWrap div.clock span.time p { display: inline-block; margin-left: 4px; font-size: 14px; font-weight: 800; }
#weatherWrap div.clock span.subscript { margin: 12px 0 40px 0; font-size: 13px; color: #777777; font-weight: normal; }

#weatherWrap div.weather { float: left; width: 75.3%; font-size: 14px; color: #2a2a2a; font-weight: 500; text-align: center; }
#weatherWrap div.weather span { display: block; }
#weatherWrap div.weather span.subject { height: 30px; text-align: center; line-height: 2.2; background: url("/images/detail/weather_bg.png") repeat; }
#weatherWrap div.weather .slide { position: relative; float: left; width: 450px; height: 136px; overflow: hidden; }
#weatherWrap div.weather .slide ul { position: absolute; left: 0; display: inline-block; width: 3000px; height: 136px; }
#weatherWrap div.weather .slide ul li { float: left; width: 150px; display: inline-block; }
#weatherWrap div.weather .slide ul li span { display: block; }
#weatherWrap div.weather .slide ul li span.date { margin: 21px 0 0 0; }
#weatherWrap div.weather .slide ul li span.pic { margin: 14px 0 11px 0; height: 40px; }
#weatherWrap div.weather .slide ul li span.txt { margin: 0 0 3px 0; color: #777777; font-weight: normal; }
#weatherWrap div.weather .slide ul li span.txt p.symbol { display: inline-block; font-size: 16px; font-weight: 500; }
#weatherWrap div.weather button { float: left; border: none; width: 36px; height: 36px; }
#weatherWrap div.weather button.prev { float: left; margin: 55px 0 0 0; background: transparent url("/images/detail/weather_arrowL.png") center center no-repeat; }
#weatherWrap div.weather button.next { float: right; margin: 55px 0 0 0; background: transparent url("/images/detail/weather_arrowR.png") center center no-repeat; }



/* ì—¬í–‰í›„ê¸° */
#infoWrap #reviewWrap { position: relative; display: inline-block; width: 100%; margin: 25px 0 0 0; }
#infoWrap #reviewWrap .subtitle { position: absolute; top: 38px; right: 0; display: inline-block; font-size: 14px; color: #999999; }
/* ë¦¬ìŠ¤íŠ¸ */
#infoWrap #reviewWrap #listWrap { position: relative; width: 100%; padding-bottom: 15px; }
#listWrap .board_area { position: relative; display: block; width: 100%; margin: 40px 0 30px 0; }
#listWrap .board_area table { width: 100%; font-size: 14px; color: #333333; }
#listWrap .board_area table tr.even{ background: #f7f8f9; }
#listWrap .board_area table tr th { height: 50px; border-top: 2px solid #555555; border-bottom: 2px solid #555555; text-align: center; vertical-align: middle; font-weight: bold; }
#listWrap .board_area table tr td { position: relative; height: 50px; line-height: 50px; text-align: center; vertical-align: middle; font-weight: normal; }
#listWrap .board_area table tr td.subject { text-align: left; padding-left: 20px; }
#listWrap .board_area table tr td a { color: #303030; }
#listWrap .board_navi_area { position: relative; text-align: center; font-weight: bold; }
#listWrap .board_navi_area span.paging { display: inline-block; text-align: center; }
#listWrap .board_navi_area span.paging span { display: inline-block; text-align: center; margin: 0 10px 0 0; font-size: 12px; color: #c1c1c1; }
#listWrap .board_navi_area span span a { color: #c1c1c1; }
#listWrap .board_navi_area span span.on a { color: #191919; }
#listWrap .board_navi_area span span.first { margin: 0 19px 0 0; }
#listWrap .board_navi_area span span.pre { margin: 0 15px 0 0; }
#listWrap .board_navi_area span span.next { margin: 0 0 0 5px;  }
#listWrap .board_navi_area span span.last { margin: 0 0 0 19px; }
#listWrap .board_navi_area span.board_btn { position: absolute; top: -10px; right: 0; }
#listWrap .bottomline { display: block; width: 100%; height: 1px; margin: 60px 0 -60px 0; border-bottom: 1px solid #e4e4e4; }
/* ë³´ê¸° */
#infoWrap #reviewWrap #viewWrap { position: relative; width: 100%; overflow: hidden; }
#viewWrap .board_view { display: table; width: 100%; margin: 50px 0 20px 0; border-top: 2px solid #555555; border-bottom: 2px solid #555555; line-height: 4; }
#viewWrap .board_view .viewListBox { width: 100%; font-size: 14px; font-weight: bold; color: #303030; } 
#viewWrap .board_view .viewListBox ul.viewList_tit { display: block; height: 54px; font-size: 14px; font-weight: bold; line-height: 3.8; border-bottom: 1px solid #d1d1d1; }
#viewWrap .board_view .viewListBox ul.viewAns_tit { display: block; height: 90px; font-size: 14px; font-weight: bold; line-height: 6; border-bottom: 1px solid #d1d1d1; background: #f8f9fa;}
#viewWrap .board_view .viewListBox li { float: left; vertical-align: middle; line-height: 4; } 
#viewWrap .board_view .viewListBox li.subject { width: 430px; padding-left: 40px; text-align: left !important; }
#viewWrap .board_view .viewListBox li.subject_ans { width: 100%; padding-left: 40px; text-align: left !important; }
#viewWrap .board_view .viewListBox li.click { width: 120px; text-align: center; }
#viewWrap .board_view .viewListBox li.dt { width: 120px; text-align: center; }
#viewWrap .board_view .viewListBox li.author { width: 110px; text-align: center; }
#viewWrap .board_view .viewListBox li.ans_bul { width: 100px; }
#viewWrap .board_view .viewContent { padding: 15px 40px; vertical-align: middle; line-height: 1.5; font-size: 14px; font-weight: normal; color: #555555; }

#viewWrap .board_view table.starResult { width: 100%; margin-bottom: 30px; line-height: 1; border: 1px solid #e0e0e0; font-size: 14px; }
#viewWrap .board_view table.starResult th { width: 12.5%; height: 53px; border-left: 1px solid #e0e0e0; color: #666666; text-align: center; vertical-align: middle; }
#viewWrap .board_view table.starResult th:first-child { border-left: none; }
#viewWrap .board_view table.starResult td { height: 53px; border-top: 1px solid #e0e0e0; border-left: 1px solid #e0e0e0; color: #fa6f09; text-align: center; vertical-align: middle; }
#viewWrap .board_view table.starResult td:first-child { border-left: none; }

#viewWrap .board_view ul.starBox { line-height: 1; }
#viewWrap .board_view ul.starBox li { float: left; display: block; width: 25%; border-top: 1px solid #e0e0e0; text-align: center; }
#viewWrap .board_view ul.starBox li span.tit { display: block; margin: 50px 0 10px 0; font-size: 14px; color: #666666; }
#viewWrap .board_view ul.starBox li span.star { display: inline-block; width: 15px; height: 14px; background: url("/images/detail/star.png") center center no-repeat; }
#viewWrap .board_view ul.starBox li span.star:first-child {  }
#viewWrap .board_view ul.starBox li span.star.on { background: url("/images/detail/starOn.png") center center no-repeat; }
#viewWrap .board_view ul.starBox li span.starCnt { display: block; margin: 30px 0 50px 0; font-size: 26px; color: #333333; }
#viewWrap .board_view ul.starBox li span.starCnt.off { font-size: 20px; }
#viewWrap .board_view ul.starBox { display: none; }

#viewWrap .board_view .viewAns_cont { display: table; width: 100%; margin: 0 0 60px 0; padding: 40px 40px 40px 140px ; vertical-align: middle; line-height: 26px; font-size: 14px; font-weight: normal; color: #555555; background: #f8f9fa;}
#viewWrap .board_view .viewListBox dl.ans { display: block; height: 90px; line-height: 4; border-bottom: 1px solid #d1d1d1; background: #f8f9fa; }
#viewWrap .board_view .viewAns { display: table; width: 960px; margin: 30px 0 30px 0; padding: 140px; vertical-align: middle; line-height: 26px; font-size: 14px; font-weight: normal; color: #555555; border-bottom: 2px solid #555555; background: #f8f9fa;}
#viewWrap .board_view span.bul_ans { display:block; float:left; width: 28px; height: 14px; padding: 8px 19px; margin: 30px 0 0 40px; line-height: 14px; vertical-align: middle; border:none; background: #ffc200; color: #ffffff; font-size: 14px; }
#viewWrap .board_view span.bul_ans { display:block; float:left; width: 28px; height: 14px; padding: 8px 19px; margin: 30px 0 0 40px; line-height: 14px; vertical-align: middle; border:none; background: #ffc200; color: #ffffff; font-size: 14px; }
/* ì“°ê¸° */
#infoWrap #reviewWrap #writeWrap { position: relative; width: 100%; overflow: hidden; }
#writeWrap table { width: 100%; margin: 50px 0 20px 0; border-top: 2px solid #555555; border-bottom: 2px solid #555555; }
#writeWrap table td { height: 50px; padding-left: 30px; border-top: 1px solid #d1d1d1; vertical-align: middle; font-size: 14px; color: #666666; font-weight: normal; }
#writeWrap table td:first-child { border-top: none; }
#writeWrap table td.tit { width: 90px; border-top: 1px solid #d1d1d1; background: #f7f8f9; color: #333333; font-weight: 600; }
#writeWrap table td input[type="text"] { width: 97%; padding: 6px 6px 8px 6px; padding: 5px 6px 8px 6px \9; border: 1px solid #dee1e2; line-height: 18px; font-size: 14px; color: #252525; }
#writeWrap table td textarea { width: 97%; height: 300px; margin: 20px 0; padding: 6px; border: 1px solid #dee1e2; overflow-y: auto; }
#writeWrap table td input[type="radio"] { cursor: pointer; }
#writeWrap table td label { position: relative; display: inline-block; margin: 0 20px 0 0; padding: 0 0 0 3px; }
#writeWrap table td label span { display: block; height: 14px; }
#writeWrap table td label span.star_5 { background: url("/images/detail/star_5.png") left center no-repeat; width: 83px; }
#writeWrap table td label span.star_4 { background: url("/images/detail/star_4.png") left center no-repeat; width: 66px; }
#writeWrap table td label span.star_3 { background: url("/images/detail/star_3.png") left center no-repeat; width: 49px; }
#writeWrap table td label span.star_2 { background: url("/images/detail/star_2.png") left center no-repeat; width: 32px; }
#writeWrap table td label span.star_1 { background: url("/images/detail/star_1.png") left center no-repeat; width: 15px; }
#writeWrap table td label span.star_0 { position: absolute; top: -14px; top: -12px \9; left: 0; width: 60px; }
/* ë²„íŠ¼ */
#reviewWrap div.btnarea { position: relative; width: 100%; height: 40px; text-align: right; }
#reviewWrap button.btnGray { width: 95px; height: 40px; border: none; background: #777777; color: #ffffff; cursor: pointer; }
#reviewWrap button.btnBlack { width: 95px; height: 40px; border: none; background: #252525; color: #ffffff; cursor: pointer; }



/* aside í€µë©”ë‰´ */
/* íƒœê·¸ */
#asideWrap div.aside01 { position: absolute; top: 0; left: 0; width: 240px; height: 104px; padding: 19px 0 2px 20px; background: #ffb902; color: #fff; font-weight: normal; }
#asideWrap div.aside01 span { display: inline-block; }
#asideWrap div.aside01 span.tit {font-size:15px; width: 44px; background: url("/images/detail/aside_div.png") center right no-repeat; }
#asideWrap div.aside01 span.name { font-size:15px; margin: 0 6px 0 7px; }
#asideWrap div.aside01 span.phone { font-size:15px; }
#asideWrap div.aside01 span.info { font-size:14px; clear: both; margin: 21px 0 6px 0; }
#asideWrap div.aside01 span.info img { vertical-align: middle; margin-left: 5px; }
#asideWrap div.aside01 span.price { clear: both; font-size: 33px; font-weight: 600; }
/* ìƒí’ˆëª… */
#asideWrap div.aside02 { position: relative; width: 100%; }
#asideWrap div.aside02 span { display: block; }
#asideWrap div.aside02 span.tit { margin: 0 4px 5px 0; color: #303030; font-family: 'NanumBold'; }
#asideWrap div.aside02 span.pNum { position: absolute; top: 0; left: 55px; display: inline-block; width: 200px; color: #999999;  font-family: 'NanumBold'; }
#asideWrap div.aside02 span.pNum .num { display: inline-block; color: #fa6f09;   font-family: 'NanumExtraBold'; }
#asideWrap div.aside02 span.txt { height: 40px; overflow: hidden; line-height: 1.6; }
/* ì¶œë°œì¼ */
#asideWrap div.aside03 { position: relative; width: 100%; margin: 23px 0 0 0; }
#asideWrap div.aside03 span { display: block; }
#asideWrap div.aside03 span.tit { margin: 0 0 15px 0; width: 90%; color: #303030;  font-family: 'NanumBold';}
#asideWrap div.aside03 button.btn { position: absolute; top: -7px; right: 15px; width: 100px; padding: 5px 8px; border: 1px solid #bfbfbf; background: #fff; font-size: 12px; color: #2a2a2a; font-weight: 500; }
#asideWrap div.aside03 span.txt { font-weight: normal; }
#asideWrap div.aside03 span.txt.txt01 { margin: 0 0 6px 0; color: #fa6f09;   font-family: 'NanumExtraBold';}
#asideWrap div.aside03 span.txt.txt02 { color: #777777; }
/* ë„ì°©ì¼ */
#asideWrap div.aside04 { position: relative; width: 100%; margin: 20px 0 0 0; }
#asideWrap div.aside04 span { display: block; }
#asideWrap div.aside04 span.tit { margin: 0 0 10px 0; width: 90%; color: #303030;  font-family: 'NanumBold';}
#asideWrap div.aside04 span.txt { font-weight: normal; }
#asideWrap div.aside04 span.txt.txt01 { margin: 0 0 6px 0; color: #fa6f09;  font-family: 'NanumExtraBold';}
#asideWrap div.aside04 span.txt.txt02 { color: #777777; }
/* ì—¬í–‰ê¸°ê°„ */
#asideWrap div.aside05 { position: relative; width: 100%; margin: 20px 0 0 0; }
#asideWrap div.aside05 span { display: block; }
#asideWrap div.aside05 span.tit { margin: 0 0 10px 0; width: 90%; color: #303030;  font-family: 'NanumBold'; }
#asideWrap div.aside05 span.txt { font-weight: normal; color: #777777; }
/* í•­ê³µ */
#asideWrap div.aside06 { position: relative; width: 100%; margin: 20px 0 0 0; }
#asideWrap div.aside06 span { display: block; }
#asideWrap div.aside06 span.tit { margin: 0 0 10px 0; width: 90%; color: #303030;  font-family: 'NanumBold'; }
/* í•­ê³µ DIVì…€ë ‰íŠ¸ë°•ìŠ¤ */
#asideWrap div.aside06 div.seletboxAir { position: relative; display: inline-block; width: 219px; min-height: 36px; margin: 0; padding: 0; cursor: pointer; z-index: 99999; }
#asideWrap div.aside06 div.seletboxAir span#inputAir { position: relative; width: 205px; height: 24px; margin: 0; padding: 10px 0 0 12px; border: 1px solid #dee1e2; color: #777777; background: #fff url("/images/detail/icon_selectbox.png") 200px center no-repeat; }
#asideWrap div.aside06 div.seletboxAir span#inputAir img { float: left; width: 12px; margin: 1px 5px 0 0; vertical-align: middle; }
#asideWrap div.aside06 div.seletboxAir ul { position: absolute; top: 35px; left: 0; width: 217px; border: 1px solid #dee1e2; border-top: none; background: #fff; z-index: 99999; display: none; }
#asideWrap div.aside06 div.seletboxAir ul li { position: relative; display:block; width: 205px; padding: 10px 0 15px 12px; z-index: 9999; }
#asideWrap div.aside06 div.seletboxAir ul li img { float: left; height: 12px; max-width: 22px; margin: 1px 7px 0 0; }
#asideWrap div.aside06 div.seletboxAir ul li span.mark { display: inline-block; margin: -3px 0 0 10px; }
#asideWrap div.aside06 div.seletboxAir ul li span.airname { float: left; display: block; }
#asideWrap div.aside06 div.seletboxAir ul li span.date { clear: both; padding: 7px 0 9px 0; color: #fa6f09; }
#asideWrap div.aside06 div.seletboxAir ul li span.price { color: #000000; }
/* ë‚¨ì€ì¢Œì„ */
#asideWrap div.aside07 { position: relative; width: 100%; margin: 18px 0 0 0; }
#asideWrap div.aside07 span { display: block; }
#asideWrap div.aside07 span.tit { margin: 0 0 10px 0; width: 90%; color: #303030; font-weight: 700; }
#asideWrap div.aside07 span.txt { font-weight: normal; color: #777777; }
/* ë²„íŠ¼ */
#asideWrap div.aside08 { position: relative; clear: both; width: 100%; margin: 25px 0 0 0; }
#asideWrap div.aside08 button.btnCalculator { float: left; width: 106px; padding: 13px 0; border: none; background: #777777; font-size: 15px; color: #ffffff;  font-family: 'NanumBold'; margin: 0 8px 0 0; z-index: 9; }
#asideWrap div.aside08 button.btnReserveS   { float: left; width: 106px; padding: 13px 0; border: none; background: #ffc200; font-size: 15px; color: #ffffff; font-family: 'NanumBold'; margin: 0; }
#asideWrap div.aside08 button.btnReserveS.reserveEnd {background: #acacac; }
/* ë§í¬ */
#asideWrap div.aside09 { position: absolute; top: 643px; left: 0; width: 100%; height: 40px; background: #999999; }
#asideWrap div.aside09 span { float: left; display: inline-block; height: 100%; background: url("/images/detail/quick_div.png") right center no-repeat; }
#asideWrap div.aside09 span.quick01 { width: 45px; text-align: center; }
#asideWrap div.aside09 span.quick01 img { margin: 10px 0 0 12px; }
#asideWrap div.aside09 span.quick02 { width: 41px; text-align: center; }
#asideWrap div.aside09 span.quick02 img { margin: 12px 0 0 0; }
#asideWrap div.aside09 span.quick03 { width: 43px; text-align: center; }
#asideWrap div.aside09 span.quick03 img { margin: 13px 0 0 0; }
#asideWrap div.aside09 span.quick04 { width: 38px; text-align: center; }
#asideWrap div.aside09 span.quick04 img { margin: 12px 0 0 0; }
#asideWrap div.aside09 span.quick05 { width: 41px; text-align: center; }
#asideWrap div.aside09 span.quick05 img { margin: 12px 0 0 0; }
#asideWrap div.aside09 span.quick06 { width: 51px; text-align: center; }
#asideWrap div.aside09 span.quick06 img { margin: 12px 0 8px 0; }
/* TOP ë²„íŠ¼ */
#asideWrap div.asideTop { position: absolute; display: inline-block; bottom: -88px; left: 106px; z-index: 999; }

/* ìžìœ ì—¬í–‰íƒ€ìž… í•­ê³µì˜µì…˜ */
#asideWrap div.aside011 { position: relative; width: 100%; margin: 20px 0 0 0; }
#asideWrap div.aside011 span { display: block; }
#asideWrap div.aside011 span.tit { margin: 0 0 10px 0; width: 90%; color: #303030; font-weight: 700; }
#asideWrap div.aside011 div.seletboxOption { position: relative; display: inline-block; width: 219px; min-height: 36px; margin: 0; padding: 0; cursor: pointer; z-index: 9999; }
#asideWrap div.aside011 div.seletboxOption span#inputOption { position: relative; width: 205px; height: 24px; margin: 0; padding: 10px 0 0 12px; border: 1px solid #dee1e2; color: #777777; background: #fff url("/images/detail/icon_selectbox.png") 200px center no-repeat; }
#asideWrap div.aside011 div.seletboxOption ul { position: absolute; top: 35px; left: 0; width: 217px; border: 1px solid #dee1e2; border-top: none; background: #fff; z-index: 9999; display: none; }
#asideWrap div.aside011 div.seletboxOption ul li { position: relative; width: 205px; height: 18px; padding: 0 0 10px 12px; z-index: 999; }
#asideWrap div.aside011 div.seletboxOption ul li img { float: left; margin-right: 5px; }
#asideWrap div.aside011 div.seletboxOption ul li span.opt { padding: 6px 0 6px 0; }


/* ìžìœ ì—¬í–‰íƒ€ìž… ì—¬í–‰ê¸°ê°„ */
#asideWrap div.aside012 { position: relative; width: 100%; margin: 20px 0 0 0; }
#asideWrap div.aside012 span { display: block; float: left; }
#asideWrap div.aside012 span.tit { margin: 0 10px 30px 0; color: #303030; font-weight: 700; }
#asideWrap div.aside012 span.txt { font-weight: normal; color: #777777; }

/* ìžìœ ì—¬í–‰íƒ€ìž… ë‹¤ë¥¸ì¶œë°œì¼ë³´ê¸° */
#asideWrap div.aside03 button.btn.free { top: -7px; }



/* ë‹¬ë ¥ */
#calendar { position: absolute; top: 408px; left: 10px; width: 228px; height: 254px; border: 1px solid #d9d9d9; border-bottom: none; background: #fff; z-index: 99999; display: none; }
#calendar #calendar_top { position: relative; width: 100%; height: 50px; font-size: 16px; font-weight: 600; color: #303030; }
#calendar #calendar_top button { position: absolute; top: 16px; width: 50px; height: 20px; border: 0; }
#calendar #calendar_top button#calendar_prev { left: 20px; background: url("/images/unit/calendar/calendar_btnL.png") center center no-repeat; }
#calendar #calendar_top button#calendar_next { right: 20px; background: url("/images/unit/calendar/calendar_btnR.png") center center no-repeat; }
#calendar #calendar_top span.yyyymm { float: left; display: block; width: 100%; margin: 18px 0 0 0; text-align: center; }
#calendar table#calendar_body { width: 200px; height: 63%; font-size: 11px; color: #666666; margin: 0 auto; }
#calendar table#calendar_body tr {  }
#calendar table#calendar_body tr td, #calendar table#calendar_body tr th { position: relative; width: 14%; text-align: center; vertical-align: middle; }
#calendar table#calendar_body tr td { cursor: pointer; }
#calendar table#calendar_body tr td.orange { background: url("/images/unit/calendar/calendar_orange.png") center center no-repeat; color: #fff; }
#calendar table#calendar_body tr td.mint { background: url("/images/unit/calendar/calendar_mint.png") center center no-repeat; color: #fff; }
#calendar table#calendar_body tr td.gray { background: url("/images/unit/calendar/calendar_gray.png") center center no-repeat; color: #fff; }
#calendar #calendar_bottom { position: absolute; bottom: 0; left: -1px; width: 230px; height: 35px; background: #6a6a6a; font-size: 11px; color: #bababa; }
#calendar #calendar_bottom span { display: block; float: left; width: 44px; padding-left: 12px; margin: 11px 0 0 7px; }
#calendar #calendar_bottom span.orange { background: url("/images/unit/calendar/calendar_orangeBg.png") left center no-repeat; margin-left: 15px; }
#calendar #calendar_bottom span.mint { background: url("/images/unit/calendar/calendar_mintBg.png") left center no-repeat; }
#calendar #calendar_bottom span.gray { background: url("/images/unit/calendar/calendar_grayBg.png") left center no-repeat; }
#calendar #calendar_bottom button#calendar_close { position: absolute; bottom: 6px; right: 5px; width: 25px; height: 25px; border: 0; background: url("/images/unit/calendar/calendar_close.png") center center no-repeat; }
#calendar table#calendar_body tr td.todayOn { color: #c844ff; font-weight: bold; }
#calendar table#calendar_body tr td span.selectedImg { position: absolute; top: 1px; left: 4px; width: 21px; height: 21px; background: url("/images/unit/calendar/calendar_selected.png") center center no-repeat; z-index: 999999999; }



/* ê°€ê²© */
.air.air03.price , .txt.txt09.price , .aside06 .price { position: relative !important; color: #f2312c !important; font-weight: 600 !important; }
.air.air03.price p , .txt.txt09.price p , .aside06 .price p { display: inline-block !important; padding: 0 0 0 1px; font-size: .9em !important; color: #000; }
p.won { display: inline-block !important; padding: 0 0 0 1px; color: #000; font-size: .9em; }
#asideWrap div.aside01 span.price span { font-size: .8em; padding-left: 3px; }

.txt.txt05.price, .air.air03.price { position: relative !important; color: #f2312c !important; font-weight: 600 !important; }
.txt.txt05.price p { display: inline-block !important; padding: 0 0 0 1px; font-size: .9em !important; color: #000; }

.price p.black { color: #000 !important; display: inline-block !important; font-size: 22px !important; }

/* erp ë¯¸ë¦¬ë³´ê¸°í™”ë©´ ìˆ˜ì • */
#erpPreView { width: 1100px !important; margin: 0 auto; overflow: hidden; }
#erpPreView #erpView { width: 820px !important; margin: 0 auto; overflow: hidden; }
#erpView > #haedline { width: 100% !important;  margin-bottom: 10px}
#erpView > #haedline > .pNum { width: 100% !important; }
#erpView > #haedline > .title { width: 100% !important; }
/* ì¼ì •í‘œì¸ì‡„ */



/*********ìƒí’ˆìƒì„¸ ê³µí†µì‚¬í•­ ì¸ì‡„ ë¶€ë¶„ css ì¶”ê°€í•¨ 20151102 lhm start*********/
#prtBodyWrap .infoTxt.template .refer .referTxt {width:550px !important;}
.tabview.etcTab .etcInfo {font-size: 13px; color: #747474; font-weight: 500; line-height: 1.55; border: 1px solid #ffffff }
.tabview.etcTab .etcInfo .etcTxt {width:780px; padding-left: 20px; padding-bottom: 20px;}
.tabview.etcTab .etcInfo div.left { display: table-cell; position: relative; width: 140px; height: 100%; padding: 30px 0 0 20px; background: #f7f8f9; vertical-align: top; }
.tabview.etcTab .etcInfo div.left button { position: absolute; bottom: 20px; left: 20px; width: 121px; height: 37px; background: #777777; border: none; font-size: 14px; color: #fff; }
.tabview.etcTab .etcInfo div.right { display: table-cell; width: 520px; padding-left: 20px; }
.tabview.etcTab .etcInfo span.pic { clear: both; display: block; width: 120px; height: 30px; }
.tabview.etcTab .etcInfo span.pic img { width: 100%; height: auto; min-height: 20px; }
.tabview.etcTab .etcInfo span.line { clear: both; display: block; width: 30px; height: 1px; background: #4a4a4a; margin: 7px 0 20px 0; }
.tabview.etcTab .etcInfo span.titB { clear: both; display: block; margin: 0 0 0 0; font-size: 20px; color: #333333; font-weight: 600; }
.tabview.etcTab .etcInfo span.tit { clear: both; display: block; margin: 0 0 0 0; font-size: 14px; color: #333333; font-weight: 600; }
.tabview.etcTab .etcInfo span.tit p { display: inline-block; color: #fa6f09; }
.tabview.etcTab .etcInfo span.dot { clear: both; display: block; margin: 22px 0 2px 0; padding: 0 0 0 13px; font-size: 14px; color: #333333; font-weight: 600; background: url("/images/detail/dot.png") left 8px no-repeat; }
.tabview.etcTab .etcInfo span.txt { clear: both; display: block; margin: 0 0 0 0; padding: 0 0 0 12px; color: #666666; }
.tabview.etcTab .etcInfo span.txt.silver { color: #999999; }
.tabview.etcTab .etcInfo span.txt p.black { display: inline-block; color: #333333; }
.tabview.etcTab .etcInfo span.bul { clear: both; display: block; margin: 0 0 0 12px; padding: 0 0 0 13px; color: #999999; }
/* ìµœí•˜ë‹¨ íƒ­ : ìž…ê¸ˆê³„ì¢Œ */
.tabview.etcTab .etcInfo .box { width: 100%; height: 70px; background: #f7f8f9; }
.tabview.etcTab .etcInfo .box span.dot { float: left; clear: none; margin: 25px 10px 0 130px; font-weight: 16px; color: #333333; }
.tabview.etcTab .etcInfo .box span.dot p { display: inline-block; font-weight: 16px; color: #fa6f09; }
/* ìµœí•˜ë‹¨ íƒ­ : ì‡¼í•‘ì •ë³´ */
.tabview.etcTab .etcInfo table.shop { width: 100%; margin-top: 20px; border: 1px solid #000; border-left: none; border-right: none; }
.tabview.etcTab .etcInfo table.shop th, .tabview.etcTab .etcInfo table.shop td { height: 57px; text-align: center; vertical-align: middle; border-left: 1px solid #d1d1d1; border-bottom: 1px solid #d1d1d1; color: #666666; }
.tabview.etcTab .etcInfo table.shop th:first-child, .tabview.etcTab .etcInfo table.shop td:first-child { border-left: none; }
.tabview.etcTab .etcInfo table.shop th { color: #333333; font-weight: 600; background: #f7f8f9; }
/*********ìƒí’ˆìƒì„¸ ê³µí†µì‚¬í•­ ì¸ì‡„ ë¶€ë¶„ css ì¶”ê°€í•¨ 20151102 lhm end*********/

/* ybí”„ë¦¬ë¯¸ì—„ header ì¶”ê°€ css- í”„ë¦¬ë¯¸ì—„ ìƒì„¸íŽ˜ì´ì§€ì— ì‚¬ìš© */
/* Header */
#wrap header { position: relative; display: inline-block; width: 100%; height: auto; z-index: 2; }

/* Skip Nav */
#wrap header #skipNavi{position: absolute; width: 100%; height: 0; }
#wrap header #skipNavi a{position: absolute; left: 0; top: 0; display: block; overflow: hidden; width: 1px; height: 1px; text-align: center; color: #000; white-space: nowrap; font-weight: bold; }
#wrap header #skipNavi a:focus, #wrap header #skipNavi a:hover, #wrap header #skipNavi a:active { display: block; width: 100%; height: auto; padding: 14px 0; background: #fdba00; color: #fff; z-index: 9999999; }

#wrap header span.logo { display: block; width: 180px; height: 22px; margin: 35px auto 34px; }
#wrap header span.mypageWrap { display: block; position: absolute; top: 95px; left: 50%; width: 1100px; height: 13px; margin: 0 0 0 -550px; }
#wrap header span.mypageWrap span.mypage { position: relative; display: block; float: right; width: 60px; height: 13px; background:url("/images/ybPremium/btnMypage.png") no-repeat; }
#wrap header span.mypageWrap span.mypage a { display: block; position: absolute; top: 0; left: 0; width: 100%; height: 100%; z-index: 9999; text-indent: -200000px; }
#wrap header #top { position: relative; width: 100%; height: 46px; background: #f5f5f5; }
#wrap header #top #topArea { position: relative; width: 1100px; height: 20px; padding-top: 14px; margin: 0 auto; }
#wrap header #top #topArea #topLeft { float: left; }
#wrap header #top #topArea #topLeft li { float: left; }
#wrap header #top #topArea #topLeft li.left01 {  }
#wrap header #top #topArea #topLeft li.left02 { margin-top: -2px; }
#wrap header #top #topArea span.dvide { display: block; width: 1px; height: 8px; margin: 5px 9px 0; background: #b8b8b8; }
#wrap header #top #topArea #topRight { float: right; }
#wrap header #top #topArea #topRight li { float: left; }
#wrap header #top #topArea #topRight li img { margin-top: 3px; }

/* GNB 2015.12.09 modify */
#wrap header nav.gnb_yb { position: relative; width: 100%; height: 36px; }
#wrap header nav.gnb_yb ul { display: block; width: 600px; height: 36px; margin: 0 auto; text-align: center; }
#wrap header nav.gnb_yb ul li { float: left; display: block; width: 80px; height: 36px; margin-left: 56px; background-repeat: no-repeat; background-position: left top; }
#wrap header nav.gnb_yb ul li:first-child { margin-left: 0; }
#wrap header nav.gnb_yb ul li a { display: block; width: 100%; height: 100%; margin: -1px 106px 0 0; text-indent: -200000px; }
#wrap header nav.gnb_yb ul li.gnb01 { width: 76px; background-image:url("/images/ybPremium/gnb01.png"); }
#wrap header nav.gnb_yb ul li.gnb02 { width: 61px; background-image:url("/images/ybPremium/gnb02.png"); }
#wrap header nav.gnb_yb ul li.gnb03 { width: 45px; background-image:url("/images/ybPremium/gnb03.png"); }
#wrap header nav.gnb_yb ul li.gnb04 { width: 30px; background-image:url("/images/ybPremium/gnb04.png"); }
#wrap header nav.gnb_yb ul li.gnb05 { width: 61px; background-image:url("/images/ybPremium/gnb05.png"); }
#wrap header nav.gnb_yb ul li.gnb06 { width: 46px; background-image:url("/images/ybPremium/gnb06.png"); }
#wrap header nav.gnb_yb ul li.gnb01.on { background-image:url("/images/ybPremium/gnb01_on.png"); }
#wrap header nav.gnb_yb ul li.gnb02.on { background-image:url("/images/ybPremium/gnb02_on.png"); }
#wrap header nav.gnb_yb ul li.gnb03.on { background-image:url("/images/ybPremium/gnb03_on.png"); }
#wrap header nav.gnb_yb ul li.gnb04.on { background-image:url("/images/ybPremium/gnb04_on.png"); }
#wrap header nav.gnb_yb ul li.gnb05.on { background-image:url("/images/ybPremium/gnb05_on.png"); }
#wrap header nav.gnb_yb ul li.gnb06.on { background-image:url("/images/ybPremium/gnb06_on.png"); }



/* Contents */
.subTopWrap { width: 100%; height: 250px; text-align: center; }
.subTopWrap.s01 { background: url("/images/ybPremium/top_bg01.jpg") no-repeat center; } /* í•´ì™¸íŒ¨í‚¤ì§€ */
.subTopWrap.s02 { background: url("/images/ybPremium/top_bg02.jpg") no-repeat center; } /* ìžìœ ì—¬í–‰ */
.subTopWrap.s03 { background: url("/images/ybPremium/top_bg03.jpg") no-repeat center; } /* í—ˆë‹ˆë¬¸ */
.subTopWrap.s04 { background: url("/images/ybPremium/top_bg04.jpg") no-repeat center; } /* ê³¨í”„ */
.subTopWrap.s05 { background: url("/images/ybPremium/top_bg05.jpg") no-repeat center; } /* êµ­ë‚´ì—¬í–‰ */
.subTopWrap.s06 { background: url("/images/ybPremium/top_bg06.jpg") no-repeat center; } /* í¬ë£¨ì¦ˆ */
.subTopWrap span.topTxt { display: inline-block; height: 36px; margin-top: 100px; font-size: 38px; font-weight: normal; color: #fff; }
.subTopWrap span.topLine { display: block; width: 38px; height: 2px; margin: 20px auto 0; background: #fff; } 

#subCont { position: relative; width: 1100px; margin: 0 auto; padding: 30px 0 10px; }
#subCont .subNavi { display: block; width: 1100px; height: 12px; margin: 0 auto 60px; }
#subCont .subNavi span { display: block; float: left; font-size: 13px; font-weight: normal; color: #666666; }
#subCont .subNavi span.home { width: 14px; height: 12px; background: url("/images/ybPremium/icon_home.png") no-repeat left center; }
#subCont .subNavi span.arr { width: 5px; height: 12px; margin: 0 10px; background: url("/images/ybPremium/icon_arr.png") no-repeat center center; }
#subCont .subNavi span.naviC { color: #333333; }

/* ì¹´í…Œê³ ë¦¬ íƒ­ì˜ì—­ */
#subCont table.tab_area { width: 1100px; height: 48px; margin: 0 auto; }
#subCont table.tab_area th { height: 48px; padding: 0 18px; background-image: url("/images/ybPremium/tab_div.png"); background-repeat: no-repeat; background-position: right center ; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd; text-align: center; font-size: 16px; font-weight: normal; color: #333333; vertical-align: middle; cursor: pointer; }
#subCont table.tab_area th:first-child { border-left: 1px solid #dddddd; }
#subCont table.tab_area th.last { background-image: none; border-right: 1px solid #dddddd; }
#subCont table.tab_area th a { color: #333333 }
#subCont table.tab_area th.on { background-color: #3d505e; background-image: none; color: #ffffff; border-color: #3d505e; }
#subCont table.tab_area th.on a { color: #ffffff; }

/* ì˜µì…˜í˜• new type */
.fl_none {float:none !important; }
.bg_gray {background-color:#f7f7f7 !important}
.top_0 {top:0}
.option_wing {width:260px;  height:690px ; position:absolute; right:0 }
.option_wing .result_memo {width:220px; height:85px; padding:20px; background-color:#ffb902; }
.option_wing .result_memo p.name {color:#fff; font-size:15px}
.option_wing .result_memo p.name span.dt {padding-right:5px; display:inline-block; background: url("/images/detail/aside_div.png") 100% 4px no-repeat }
.option_wing .result_memo .price {font-size:36px; color:#fff;   font-family: 'NanumBold'; line-height:1; position:relative}
.option_wing .result_memo .price span.info {font-size:14px; line-height:1}
.option_wing .result_memo .price span.won {font-size:24px}
.option_wing .result_memo .price a {position:relative; }
.option_wing .result_memo div.box_tip {position:absolute; top:35px; left:-132px; background: url("/images/unit/tooltip_bg.png") no-repeat; width: 162px; height: 68px;}
.option_wing .result_memo div.box_tip ul {padding:20px}
.option_wing .result_memo div.box_tip li { font-size: 12px; color: #303030; background: url("/images/unit/tooltip_dot.png") left center no-repeat; padding:4px 5px 2px}
.option_wing .result_memo a:link div.box_tip {display:none}
.option_wing .result_memo a:hover div.box_tip {display:block}

.option_wing .option_info {width:220px;  background-color:#fffcf3; padding:25px 20px; }
.option_wing .option_info dl.list { }
.option_wing .option_info dl.list dt {font-size:13px; color:#303030;  font-family: 'NanumBold'; display:block; margin-bottom:10px }
.option_wing .option_info dl.list dt span { font-family: 'NanumBold';}
.option_wing .option_info dl.list dd {font-size:13px; color:#555; line-height:1.6;display:block; letter-spacing:-0.05em; margin-bottom:10px}
.option_wing .option_info strong {  font-family: 'NanumExtraBold'; color:#f86f09} 
.option_wing .option_info dl.list dd li {line-height:1.6}
.option_wing .option_info dl.list dd li:first-child {color:#fa6f09;  font-family: 'NanumExtraBold';}

.option_wing .option_info dl.list_cell {overflow:hidden}
.option_wing .option_info dl.list_cell dt {font-size:13px; color:#303030;  font-family: 'NanumBold';  margin-bottom:10px; width:35px;float:left; line-height:1.6;}
.option_wing .option_info dl.list_cell dd {font-size:13px; color:#555; line-height:1.6;display:block; letter-spacing:-0.05em; margin-bottom:10px; width:185px;float:left}
.option_wing .option_info dl.list_cell dd img {vertical-align:middle}

.option_wing .option_info dl.list_cell2 {overflow:hidden}
.option_wing .option_info dl.list_cell2 dt {font-size:13px; color:#303030;  font-family: 'NanumBold';  margin-bottom:10px; width:60px;float:left; line-height:1.6;}
.option_wing .option_info dl.list_cell2 dd {font-size:13px; color:#555; line-height:1.6;display:block; letter-spacing:-0.05em; margin-bottom:10px; width:155px;float:left}

.option_wing  .btn { position: relative; clear: both; width: 100%; margin: 25px 0 0 0; overflow:hidden}
.option_wing  .btn button.btnCalculator { float: left; width: 106px; padding: 13px 0; border: none; background: #777777; font-size: 15px; color: #ffffff;  font-family: 'NanumBold'; margin: 0 8px 0 0; z-index: 9; }
.option_wing  .btn button.btnReserveS   { float: left; width: 106px; padding: 13px 0; border: none; background: #ffc200; font-size: 15px; color: #ffffff; font-family: 'NanumBold'; margin: 0; }
.option_wing  .btn button.btnReserveS.reserveEnd {background: #acacac; }

.sns_group {width:100%; height:40px; background-color:#999}
.sns_group ul {display:table; table-layout:fixed; width:260px}
.sns_group li {line-height:40px; display:table-cell; text-align:center;  background: url("/images/detail/quick_div.png") 0 50% no-repeat; }
.sns_group li:first-child {background-image:none} 
a.goto_top {display:block; width:100%; text-align:center; margin-top:40px}

.wing_fixed {position:fixed; top:20px; left:50% ; margin-left:290px }
.wing_abs {position:absolute; right:0; bottom:0 !important}

/* ë¡œë”© */
.bg_white_date {position:absolute; top:0; z-index:1; width:820px; height:233px; background:url(/images/product/bg_fff.png) repeat }
.bg_white_date .loading {width:820px; height:233px; background:url(/images/product/loadingYB.gif) no-repeat 50% 50% ; }
.bg_white_date .loading span {visibility:hidden}

.bg_white_wing {position:absolute; z-index:1; width:260px; height:650px; background:url(/images/product/bg_fff.png) repeat }
.bg_white_wing .loading {width:260px; height:650px; background:url(/images/product/loadingYB.gif) no-repeat 50% 50% ; }
.bg_white_wing .loading span {visibility:hidden}

.wrap_option {clear:both; width:820px; height:395px; position:relative;}
.bg_white_option {position:absolute; z-index:1; width:820px; height:395px; background:url(/images/product/bg_fff.png) repeat}
.bg_white_option .loading {width:820px; height:395px; background:url(/images/product/loadingYB.gif) no-repeat 50% 50% ; }
.bg_white_option .loading span {visibility:hidden}


/* commons style */
@charset "utf-8";

/* Reset ##################################################################################################################### */
/* http://meyerweb.com/eric/tools/css/reset/ */
/* v2.0 | 20110126 */
/* License: none (public domain) */
/* ########################################################################################################################### */
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, img, ins, kbd, q, s, samp,
small, strike, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video { margin: 0; padding: 0; border: 0; font-size: 100%; font: inherit; vertical-align: baseline; }
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section { display: block; }

body { line-height: 1; }
ol, ul { list-style: none; }
blockquote, q { quotes: none; }
blockquote:before, blockquote:after, q:before, q:after { content: ''; content: none; }
table { border-collapse: collapse; border-spacing: 0; }

/* ########################################################################################################################### */
/* Common #################################################################################################################### */
/* ########################################################################################################################### */
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

@font-face {
  font-family: 'Nanum Gothic';
  font-style: normal;
  font-weight: normal;
  src: url('./font/NanumGothic-Regular.eot');
  src: url('./font/NanumGothic-Regular.eot?#iefix') format('embedded-opentype'),
       url('./font/NanumGothic-Regular.woff2') format('woff2'),
       url('./font/NanumGothic-Regular.woff') format('woff'),
       url('./font/NanumGothic-Regular.ttf') format('truetype');
}
@font-face {
  font-family: 'NanumBold';
  font-style: normal;
  font-weight: normal;
  src: url('./font/NanumGothic-Bold.eot');
  src: url('./font/NanumGothic-Bold.eot?#iefix') format('embedded-opentype'),
       url('./font/NanumGothic-Bold.woff2') format('woff2'),
       url('./font/NanumGothic-Bold.woff') format('woff'),
       url('./font/NanumGothic-Bold.ttf') format('truetype');
}
@font-face {
  font-family: 'NanumExtraBold';
  font-style: normal;
  font-weight: normal;
  src: url('./font/NanumGothic-ExtraBold.eot');
  src: url('./font/NanumGothic-ExtraBold.eot?#iefix') format('embedded-opentype'),
       url('./font/NanumGothic-ExtraBold.woff2') format('woff2'),
       url('./font/NanumGothic-ExtraBold.woff') format('woff'),
       url('./font/NanumGothic-ExtraBold.ttf') format('truetype');
}


body, th, td, li, div, span, p, form, label, select, input, textarea, button {
	font-family: 'Nanum Gothic', '나눔고딕', '맑은 고딕', Dotum, '돋움', Gulim, '굴림', verdana, HelveticaNeue, Apple-Gothic, sans-serif; }

/* Typography */
.fontM { font-family: 'Moebius'; }
.helv { font-family: HelveticaNeue, 돋움, Dotum, 굴림, Gulim, Apple-Gothic; }
.verd { font-family: verdana, HelveticaNeue, 돋움, Dotum, 굴림, Gulim, Apple-Gothic; }
.bold { font-weight: bold !important; }
.hr { border-top: 1px solid #dddddd; font-size: 1px; padding-bottom: 1.250em; }
.nowrap { white-space: normal; }
.viewContent.nowrap img { display: block; }
.strike { text-decoration: line-through; } /* 취소선 */
.ellipsis { display: block; text-overflow: ellipsis; white-space: nowrap; -o-text-overflow: ellipsis; overflow: hidden; } /* 말줄임 */
.ellipsis1 { display: -webkit-box; -webkit-line-clamp: 1; -webkit-box-orient: vertical; white-space: normal; word-wrap: break-word; word-break: break-all; overflow: hidden; } /* 1행 말줄임   */
.ellipsis2 { display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; white-space: normal; word-wrap: break-word; word-break: break-all; overflow: hidden; } /* 2행 말줄임   */
.ellipsis3 { display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; white-space: normal; word-wrap: break-word; word-break: break-all; overflow: hidden; } /* 3행 말줄임   */
a, a:link, a:visited, a:hover, a:active { color: inherit; text-decoration: none; }

/* Headline */
/*h1,h2,h3,h4,h5,h6 { font-size: 100%; font-weight: normal; font-weight: 700; line-height: 1.125em; margin-bottom: 0.938em; color: #424242; }
h1 { font-size: 2em; font-weight: 100; }
h2 { font-size: 1.250em; font-weight: normal; }
h3 { font-size: 1em; font-weight: normal; }
h4 { font-size: 0.875em; }
h5 { font-size: 0.813em; }
h6 { font-size: 0.688em; }*/

/* z-index */
.z1 { z-index: 1; }
.z2 { z-index: 2; }
.z3 { z-index: 3; }
.z4 { z-index: 4; }
.z5 { z-index: 5; }

/* Float,Align */
.relative { position: relative; }
.absolute { position: absolute; }
.fixed { position: fixed !important; }
.floatL { float: left !important; }
.floatR { float: right !important; }
.floatC { float: center !important; }
.align-l { text-align: left !important; }
.align-c { text-align: center !important; }
.align-r { text-align: right !important; }
.align-j { text-align: justify !important; }
.align-t { vertical-align: top !important; }
.align-m { vertical-align: middle !important; }
.align-b { vertical-align: bottom !important; }

/* Clear */
.clear { clear: both; }
.clearfix:after { clear: both; content: ' '; display: block; font-size: 0; line-height: 0; visibility: hidden; width: 0; height: 0; }
.clearfix { display: inline-block; }
* html .clearfix { height: 1%; }
.clearfix { display: block; }

/* None,Hidden,Border */
.block { display: block !important; }
.none { display: none !important; }
.hidden { visibility: hidden !important; }
.blind { position: absolute; width: 0; height: 0; font-size: 0; line-height: 0; overflow: hidden; visibility: hidden; }
.bg0 { background: none !important; }
.bd0 { border: none !important; }
.bdt0 { border-top: none !important; }
.bdb0 { border-bottom: none !important; }
.bdL0 { border-left: none !important; }
.bdr0 { border-right: none !important; }
.bdr { border-right: 1px solid #d3d6dc !important; }
.bdb { border-bottom: 1px solid #d3d6dc !important; }
.bgf5f5f5 { background: #f5f5f5 !important; }

/* Font_Size */
.f12{ font-size:12px; }

/* Size */
.w100 { width: 100% !important; }
.w125 { width: 125px !important; }
.w500 { width: 500px !important; }
.w95 { width: 95% !important; }
.h100 { height: 100% !important; }
.h95 { height: 95% !important; }
.h36 { height: 36px !important; }
.h37 { height: 37px !important; }
.h40 { height: 40px !important; }

/* min-height */
.minH37 {min-height:37px;}

/* Top,Bottom,Left,Right */
.top0 { top: 0 !important; }
.bottom0 { bottom: 0 !important; }
.left0 { left: 0 !important; }
.right0 { right: 0 !important; }

/* Padding */
.pd0 { padding: 0 !important; }
.pdL0 { padding-left: 0 !important; }
.pdR0 { padding-right: 0 !important; }
.pdR20 { padding-right: 20px !important; }
.pdR30 { padding-right: 30px !important; }
.pdL30 { padding-left: 30px !important; }
.pdL150 { padding-left: 150px !important; }
.pdL160 { padding-left: 160px !important; }
.pdL170 { padding-left: 170px !important; }
.pdL180 { padding-left: 180px !important; }
.pdL190 { padding-left: 190px !important; }
.pdr3 { padding-right: 3px !important; }
.pdt0 { padding-top: 0 !important; }
.pdt5 { padding-top: 5px !important; }
.pdt10 { padding-top: 10px !important; }
.pdt15 { padding-top: 15px !important; }
.pdt20 { padding-top: 20px !important; }
.pdt25 { padding-top: 25px !important; }
.pdt27 { padding-top: 27px !important; }
.pdt30 { padding-top: 30px !important; }
.pdt35 { padding-top: 35px !important; }
.pdt40 { padding-top: 40px !important; }
.pdt45 { padding-top: 45px !important; }
.pdt50 { padding-top: 50px !important; }
.pdt55 { padding-top: 55px !important; }
.pdt60 { padding-top: 60px !important; }
.pdt65 { padding-top: 65px !important; }
.pdb0 { padding-bottom: 0px !important; }
.pdb5 { padding-bottom: 5px !important; }
.pdb8 { padding-bottom: 8px !important; }
.pdb10 { padding-bottom: 10px !important; }
.pdb15 { padding-bottom: 15px !important; }
.pdb20 { padding-bottom: 20px !important; }
.pdb25 { padding-bottom: 25px !important; }
.pdb30 { padding-bottom: 30px !important; }
.pdb35 { padding-bottom: 35px !important; }
.pdb40 { padding-bottom: 40px !important; }
.pdb45 { padding-bottom: 45px !important; }
.pdb50 { padding-bottom: 50px !important; }
.pdb55 { padding-bottom: 55px !important; }
.pdb60 { padding-bottom: 60px !important; }
.pdb65 { padding-bottom: 65px !important; }


/* Margin */
.mg0 { margin: 0 !important; }
.mgL0 { margin-left: 0 !important; }
.mgR0 { margin-left: 0 !important; }
.mgL12 { margin-left: 12px !important; }
.mgL16 { margin-left: 16px !important; }
.mgL20 { margin-left: 20px !important; }
.mgL50 { margin-left: 50px !important; }
.mgL160 { margin-left: 160px !important; }
.mgr0 { margin-right: 0 !important; }
.mgr10 { margin-right: 10px !important; }
.mgr20 { margin-right: 20px !important; }
.mgr25 { margin-right: 25px !important; }
.mgr30 { margin-right: 30px !important; }
.mgt0 { margin-top: 0 !important; }
.mgt2 { margin-top: 2px !important; }
.mgt5 { margin-top: 5px !important; }
.mgt10 { margin-top: 10px !important; }
.mgt13 { margin-top: 13px !important; }
.mgt15 { margin-top: 15px !important; }
.mgt20 { margin-top: 20px !important; }
.mgt25 { margin-top: 25px !important; }
.mgt30 { margin-top: 30px !important; }
.mgt35 { margin-top: 35px !important; }
.mgt36 { margin-top: 36px !important; }
.mgt40 { margin-top: 40px !important; }
.mgt45 { margin-top: 45px !important; }
.mgt50 { margin-top: 50px !important; }
.mgt55 { margin-top: 55px !important; }
.mgt60 { margin-top: 60px !important; }
.mgt65 { margin-top: 65px !important; }
.mgb0 { margin-bottom: 0px !important; }
.mgb5 { margin-bottom: 5px !important; }
.mgb10 { margin-bottom: 10px !important; }
.mgb15 { margin-bottom: 15px !important; }
.mgb20 { margin-bottom: 20px !important; }
.mgb25 { margin-bottom: 25px !important; }
.mgb30 { margin-bottom: 30px !important; }
.mgb35 { margin-bottom: 35px !important; }
.mgb40 { margin-bottom: 40px !important; }
.mgb45 { margin-bottom: 45px !important; }
.mgb50 { margin-bottom: 50px !important; }
.mgb55 { margin-bottom: 55px !important; }
.mgb60 { margin-bottom: 60px !important; }
.mgb65 { margin-bottom: 65px !important; }

/* Font color */
.fontRed { color: #cf050a !important; }
.fontOrg { color: #fa791a !important; }
.font333 { color: #333 !important; }
.font777 { color: #777 !important; }
.fontff923a { color: #ff923a !important; } /* org */
.font11b3e5 { color: #11b3e5 !important; } /* blue */
.fontYel{ color: #f8931f !important; } /* yellow */

/* Font style */
.b{ font-weight: bold !important;}
.bold{ color: #333; font-weight: bold;}
.small{font-size:12px !important;}
.font10{font-size:10px !important;}
.font19{font-size:19px !important;}
.font15{font-size:15px !important;}

/* Background color */
.bgWhite { background: #fff !important; }
.bgSky { background: #1aa4e1 !important; }
.bgBlue { background: #3b5998 !important; }
.bgOrange { background: #fd7b1b !important; }
.bgRed { background: #dc282c !important;}
.bgf5f5f5 { background: #f5f5f5 !important;}

/* Form */
legend, caption { display: none; clear: both; }
textarea { resize: none; }
textarea:focus { -webkit-user-modify: read-write-plaintext-only; -webkit-tap-highlight-color:rgba(0,0,0,0); }
input:focus { -webkit-user-modify: read-write-plaintext-only; -webkit-tap-highlight-color: rgba(0,0,0,0); }/* read-only read-write read-write-plaintext-only */
input[type="number"]:focus { -webkit-user-modify: read-write-plaintext-only; -webkit-tap-highlight-color: rgba(0,0,0,0); }
label, input[type="checkbox"], input[type="radio"], button, select { cursor: pointer; }
input[type="text"]::-ms-clear{display: none; }

::-webkit-input-placeholder { color: #c0c0c0; font-size: 14px; font-weight: normal; }
::-moz-placeholder { color: #c0c0c0; font-size: 14px; font-weight: normal; } /* firefox 19+ */
:-ms-input-placeholder { color: #c0c0c0; font-size: 14px; font-weight: normal; } /* ie */
input:-moz-placeholder { color: #c0c0c0; font-size: 14px; font-weight: normal; }

/* PIE */
span.pie { float: left; display: inline-block; height: 18px; font-size: 12px; color: #ffffff; line-height: 1.4; z-index: 1;}

span.pie.mint { width:43px; text-align:center; background:url(/images/common/sprite_tag.png) -58px -10px no-repeat;}/* 특가 */
span.pie.blue { width:42px;text-align:center; background:url(/images/common/sprite_tag.png) -106px -10px no-repeat; }/* 품격 */
span.pie.yellow { width:42px;text-align:center; background:url(/images/common/sprite_tag.png) -11px -10px no-repeat; }/* 긴급 (클래스명 그대로 이용) */
span.pie.redReal { width:42px;text-align:center; background:url(/images/common/sprite_tag.png) -11px -10px no-repeat; }/* 행사리스트 긴급 */
span.pie.pink { width:54px;text-align:center; background:url(/images/common/sprite_tag.png) -153px -10px no-repeat; }/* 선착순 */
span.pie.gold { width:65px;text-align:center; background:url(/images/common/sprite_tag.png) -212px -10px no-repeat; }/* 프리미엄 */
span.pie.green { width:43px; text-align:center; background:url(/images/common/sprite_tag.png) -282px -10px no-repeat;}/* 실속 */
span.pie.red { width:54px;text-align:center; background:url(/images/common/sprite_tag.png) -330px -10px no-repeat; }/* 땡처리 */
span.pie.purple { width:65px;text-align:center; background:url(/images/common/sprite_tag.png) -389px -10px no-repeat; }/* 주말특가 */
span.pie.gray { width:65px;text-align:center; background:url(/images/common/sprite_tag.png) -11px -38px no-repeat; }/* 예약마감 */
span.pie.orange { width:65px;text-align:center; background:url(/images/common/sprite_tag.png) -83px -38px no-repeat; }/* 예약가능 */
span.pie.mintblue { width:65px;text-align:center; background:url(/images/common/sprite_tag.png) -155px -38px no-repeat; }/* 예약대기 */


/* DIV 셀렉트 */
.select { display: inline-block; /* *display: inline; */ position: relative !important; background: #fff; line-height: normal; vertical-align: middle; /* *zoom:1; */ height: 45px; }
.select *{ margin: 0; padding: 0; color: #999999; font-size: 13px; cursor:pointer }
.select .my_value { overflow: visible; position: relative; top: 0; left: 0; z-index: 2; border: none; background: transparent; text-align:left; line-height: 19px; _line-height: normal }
.select.open .my_value,
.select .my_value.outLine { border: 1px solid #999 }
.select button.my_value { width: 100% !important; height: 45px; *padding-left: 5px; text-indent: 10px; *text-indent: 0; }
.select div.my_value { height: 19px; text-indent: 8px }
.select .ctrl { position: absolute !important; top: 0; right: 0; width: 30px !important; height: 45px; background: #FFF url("/images/find_icon01.png") center center no-repeat; }
.select .arrow { position: absolute; width: 0; height: 0; top: 9px; right: 6px; border-top: 3px solid #999; border-left: 3px solid #fff; border-right: 3px solid #fff; font-size: 0; line-height: 0; display: none; }
.select ul { overflow: hidden; position: absolute; top: 45px; top: 43px \9; left: 0; width: 100%; border: 0; border-top: 1px solid #bababa; border-bottom: 1px solid #bababa; background: #fff; list-style: none; z-index: 50; }
.select ul.a_list { display: none }
.select.open ul.a_list { display: block }
.select ul.i_list { left: -2000% }
.select.open ul.i_list { left: 0 }
.select li { overflow: hidden; position: relative; height: 18px; border-left: 1px solid #bababa; border-right: 1px solid #bababa; white-space: nowrap }
.select li input.option { position: absolute; width: 100%; height: 18px; line-height: 20px }
.select li label { position: absolute; top: 0; left: 0; width: 100%; height: 18px; background: #fff; color: #767676; line-height: 18px; text-indent: 8px; *text-indent: 6px }
.select li a { display: block; height: 18px; background: #fff; color: #000; line-height: 18px; text-indent: 8px; *text-indent: 6px; text-decoration: none }
.select li.hover *{ background: #999; color: #fff }
/* DIV 셀렉트 */

::-webkit-input-placeholder { color: #999999; font-size: 13px; font-weight: normal; }
::-moz-placeholder { color: #999999; font-size: 13px; font-weight: normal; } /* firefox 19+ */
:-ms-input-placeholder { color: #999999; font-size: 13px; font-weight: normal; } /* ie */
input:-moz-placeholder { color: #999999; font-size: 13px; font-weight: normal; }



</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
//다른 출발일 보기, 요금계산기
$("button[name='btnSchedule'], button[name='btnCalculator']").click(function(){
	showLayer($(this));
})

/*****************
 * 일정표 일차 이동
 *****************/
function moveSchedule(target , id, dayno){
   var offset = $(target).offset().top; 
   $('body,html').animate({scrollTop:offset},1000);
   
   if( id != "" && dayno != ""){
      $("#"+id+" option[value="+dayno+"]").attr("selected", "selected");
   }
}
});

</script>
</head>
<body>
<div id="schedule" class="tabview tab01" style="display: block;"><!--[[ 일정표 schedule Start ]]-->

<!--[[ 일정차수 dateWrap Start ]]-->
     <div id="dateWrap">
         <div class="dateSlider">
             <button type="button" class="prev off" title="이전">&lt;</button>
             <div class="slideWrap" style="width: 190px;">
                 <div class="slide">
                  <span class="on" onclick="moveSchedule('#dayTitle1'); return false;">
                      	1일
                      </span>
                  <span class="" onclick="moveSchedule('#dayTitle2'); return false;">
                      	2일
                      </span>
                  <span class="" onclick="moveSchedule('#dayTitle3'); return false;">
                      	3일
                      </span>
                  <span class="" onclick="moveSchedule('#dayTitle4'); return false;">
                      	4일
                      </span>
                  </div>
             </div>
             
             <button type="button" class="next off" title="다음">&gt;</button>
             
         </div>
         
     </div><!--[[ 일정차수 dateWrap End ]]-->

     <div id="daily"><!--[[ 일정상세 daily Start ]]-->
    
      <!-- 일정start -->	
      <div class="dayTitle" id="dayTitle1">
                    <span class="day">1일차</span>
                    <span class="dayTxt"><p>2016년07월27일 수요일 - 보라카이</p></span>                        
    	<select name="product" id="daySchedule1" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle1'); return false;">
			<option value="#dayTitle1" selected="">[1일차] 2016-07-27  수</option>
    		<option value="#dayTitle2">[2일차] 2016-07-28  목</option>
    		<option value="#dayTitle3">[3일차] 2016-07-29  금</option>
    		<option value="#dayTitle4">[4일차] 2016-07-30  토</option>
    		</select>
                </div>
                
                <!-- 시간별 일정정보  Start -->       
              <div class="dayArea">
                  <span class="areaName">보라카이</span>
                  </div>
             <div class="dayInfo">
             	<!-- 시간별 일정 제목& 내용 -->
             	<span class="time">20:00</span>
                 <span class="timeTxt">김해 국제공항 출발</span>			                        
                       <span class="timeTxtSub"><strong><span style="color:rgb(255, 140, 0)">미팅시간</span></strong> : 17시 30분&nbsp;(출발 2시간전까지 꼭!! 와주세요)<br>
<strong><span style="color:rgb(255, 140, 0)">미팅장소</span></strong> : 김해 국제공항 2층 국제선청사 3번게이트 앞<br>
<strong><span style="color:rgb(255, 140, 0)">미팅담당 연락처 </span></strong>: 010-5859-7600</span>
                       <!-- 여행정보 Start -->
                	<!-- 여행정보 end -->               	
                 </div>
             
         <div class="dayInfo">
             	<!-- 시간별 일정 제목& 내용 -->
             	<span class="time">23:05</span>
                 <span class="timeTxt">깔리보 국제공항 도착</span>			                        
                       <span class="timeTxtSub">보라카이 깔리보 국제공항 도착<strong><span style="color:rgb(178, 34, 34)">현지 가이드 미팅 후 보라카이 리조트 이동</span></strong><br>
-수화물을 찾고 공항 밖으로 나오시면<strong><span style="color:rgb(178, 34, 34)"> "노랑풍선/리조트명 또는 손님성함"</span></strong> 으로 된 피켓을 들고 있는 가이드와 만나 보라카이 섬으로 이동합니다. 깔리보공항↔보라카이 이동시 차량으로 1시간 30분정도 이동하며, 까띠끌란 도착 후 배로 섬까지 이동(약15분)됩니다.<br>
&nbsp;<br>
<strong><span style="color:rgb(255, 0, 0)">※에어아시아 제스트 항공의 경우 기내식이 별도 제공되어지지 않습니다.</span></strong><br>
</span>
			                                <!-- 여행정보 Start -->
                	<!-- 여행정보 end -->               	
                 </div>
             
         <div class="dayInfo">
             	<!-- 시간별 일정 제목& 내용 -->
             	<span class="timeTxt"></span>			                        
                       <span class="timeTxtSub">호텔 투숙 및 휴식</span>
                       <!-- 여행정보 Start -->
                	<div class="infoTxt template">    
                     <div class="infoBar ">	
			<!-- 숙박 헤더정보 -->
                           <span class="head gray">숙소</span>
                           <span class="tit">
				<span class="hgName">라까멜라 더 보라카이 리조트 호텔</span>
				<span class="hgName mrl5">:</span><span class="ctName">la carmela de boracay resort hotel</span>
				<span class="btn" onclick="javascript:fnTourDtlInfo('accom','A0004451');">자세히보기<p onc="">+</p></span></span>                             
                       </div>	
                         <div class="infoBody">
                     	<div class="picWrap">
                      	<!-- 템플릿 -->											
		<span class="pic"><img src="http://dimg.cdn.ybtour.co.kr/TN/3d/3deea87062fba4569b37360bf7075de4.tn.410x280.jpg" alt="라까멜라 더 보라카이 리조트 호텔" style="height: 140px;"></span>
				<span class="pic"><img src="http://dimg.cdn.ybtour.co.kr/TN/4a/4a961138011e71314903b79c57d80008.tn.410x280.jpg" alt="라까멜라 더 보라카이 리조트 호텔" style="height: 140px;"></span>
				<span class="pic" style="margin-right: 0px;"><img src="http://dimg.cdn.ybtour.co.kr/TN/f8/f893b793805e7f1b1e153b89ca1b6100.tn.410x280.jpg" alt="라까멜라 더 보라카이 리조트 호텔" style="height: 140px;"></span>
			<span class=" txtBox floatL">							
			하얀 백사장의 해변이 아름다운 보라카이에 위치하고 있는 호텔로 75개의 객실을 보유하고 있다. 객실에는 에어컨, 위성TV 등의 편의 시설이 갖추어져 있으며, 호텔내에는 슬라이딩, 저쿠지 시설이 갖춰진 수영장과 인터넷 이용이 가능한 비즈니스 센터 시설이 마련되어 있다.</span></div>
								                                					                        		
                 		<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
                 		<!-- 참고사항 -->		
                         </div>
                      
                     </div>
                	<!-- 여행정보 end -->               	
                 </div>
             
         <!-- 일정정보 end -->
        <!-- 일정end -->	
</div><!--[[ 일정상세 1 daily End ]]-->
	 
	 <div id="daily"><!--[[ 일정상세 daily Start ]]-->
    
      <!-- 일정start -->	
      <div class="dayTitle" id="dayTitle2">
                    <span class="day">2일차</span>
                    <span class="dayTxt"><p>2016년07월27일 수요일 - 보라카이</p></span>                        
    	<select name="product" id="daySchedule1" title="일정선택" onchange="moveSchedule(this.value, this.id, '#dayTitle1'); return false;">
			<option value="#dayTitle1" selected="">[1일차] 2016-07-27  수</option>
    		<option value="#dayTitle2">[2일차] 2016-07-28  목</option>
    		<option value="#dayTitle3">[3일차] 2016-07-29  금</option>
    		<option value="#dayTitle4">[4일차] 2016-07-30  토</option>
    		</select>
                </div>
                
                <!-- 시간별 일정정보  Start -->       
              <div class="dayArea">
                  <span class="areaName">보라카이</span>
                  </div>
             <div class="dayInfo">
             	<!-- 시간별 일정 제목& 내용 -->
             	<span class="time">20:00</span>
                 <span class="timeTxt">김해 국제공항 출발</span>			                        
                       <span class="timeTxtSub"><strong><span style="color:rgb(255, 140, 0)">미팅시간</span></strong> : 17시 30분&nbsp;(출발 2시간전까지 꼭!! 와주세요)<br>
<strong><span style="color:rgb(255, 140, 0)">미팅장소</span></strong> : 김해 국제공항 2층 국제선청사 3번게이트 앞<br>
<strong><span style="color:rgb(255, 140, 0)">미팅담당 연락처 </span></strong>: 010-5859-7600</span>
                       <!-- 여행정보 Start -->
                	<!-- 여행정보 end -->               	
                 </div>
             
         <div class="dayInfo">
             	<!-- 시간별 일정 제목& 내용 -->
             	<span class="time">23:05</span>
                 <span class="timeTxt">깔리보 국제공항 도착</span>			                        
                       <span class="timeTxtSub">보라카이 깔리보 국제공항 도착<strong><span style="color:rgb(178, 34, 34)">현지 가이드 미팅 후 보라카이 리조트 이동</span></strong><br>
-수화물을 찾고 공항 밖으로 나오시면<strong><span style="color:rgb(178, 34, 34)"> "노랑풍선/리조트명 또는 손님성함"</span></strong> 으로 된 피켓을 들고 있는 가이드와 만나 보라카이 섬으로 이동합니다. 깔리보공항↔보라카이 이동시 차량으로 1시간 30분정도 이동하며, 까띠끌란 도착 후 배로 섬까지 이동(약15분)됩니다.<br>
&nbsp;<br>
<strong><span style="color:rgb(255, 0, 0)">※에어아시아 제스트 항공의 경우 기내식이 별도 제공되어지지 않습니다.</span></strong><br>
</span>
			                                <!-- 여행정보 Start -->
                	<!-- 여행정보 end -->               	
                 </div>
             
         <div class="dayInfo">
             	<!-- 시간별 일정 제목& 내용 -->
             	<span class="timeTxt"></span>			                        
                       <span class="timeTxtSub">호텔 투숙 및 휴식</span>
                       <!-- 여행정보 Start -->
                	<div class="infoTxt template">    
                     <div class="infoBar ">	
			<!-- 숙박 헤더정보 -->
                           <span class="head gray">숙소</span>
                           <span class="tit">
				<span class="hgName">라까멜라 더 보라카이 리조트 호텔</span>
				<span class="hgName mrl5">:</span><span class="ctName">la carmela de boracay resort hotel</span>
				<span class="btn" onclick="javascript:fnTourDtlInfo('accom','A0004451');">자세히보기<p onc="">+</p></span></span>                             
                       </div>	
                         <div class="infoBody">
                     	<div class="picWrap">
                      	<!-- 템플릿 -->											
		<span class="pic"><img src="http://dimg.cdn.ybtour.co.kr/TN/3d/3deea87062fba4569b37360bf7075de4.tn.410x280.jpg" alt="라까멜라 더 보라카이 리조트 호텔" style="height: 140px;"></span>
				<span class="pic"><img src="http://dimg.cdn.ybtour.co.kr/TN/4a/4a961138011e71314903b79c57d80008.tn.410x280.jpg" alt="라까멜라 더 보라카이 리조트 호텔" style="height: 140px;"></span>
				<span class="pic" style="margin-right: 0px;"><img src="http://dimg.cdn.ybtour.co.kr/TN/f8/f893b793805e7f1b1e153b89ca1b6100.tn.410x280.jpg" alt="라까멜라 더 보라카이 리조트 호텔" style="height: 140px;"></span>
			<span class=" txtBox floatL">							
			하얀 백사장의 해변이 아름다운 보라카이에 위치하고 있는 호텔로 75개의 객실을 보유하고 있다. 객실에는 에어컨, 위성TV 등의 편의 시설이 갖추어져 있으며, 호텔내에는 슬라이딩, 저쿠지 시설이 갖춰진 수영장과 인터넷 이용이 가능한 비즈니스 센터 시설이 마련되어 있다.</span></div>
								                                					                        		
                 		<!--객실정보 :: 여행정보가 숙박이고 룸표시를 할경우  -->
                 		<!-- 참고사항 -->		
                         </div>
                      
                     </div>
                	<!-- 여행정보 end -->               	
                 </div>
             
         <!-- 일정정보 end -->
        <!-- 일정end -->	
</div><!-- 2일차 end -->
	 
	 </div>
</body>
</html>