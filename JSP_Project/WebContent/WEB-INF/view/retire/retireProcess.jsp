<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html lang="ko">
  <head>
  <title>급여관리 페이존 - 퇴직관리 > 사원퇴직처리</title>
   <meta charset="euc-kr" />
  <!--<meta http-equiv="refresh" content="7;URL=http://payzon.co.kr" />-->
  <meta name="keywords" content="payzon, 인사관리, 급여관리" />
  <meta name="description" content="급여관리 페이존 - 퇴직관리 > 사원퇴직처리"  />

  <meta name="naver-site-verification" content="navercdc5a22c7fcc5c46acb3324a06bc9f11"/>
  <meta property="og:title" content="페이존 (급여관리 자동화)"/>
  <meta property="og:type" content="website"/>
  <!-- <meta property="og:site_name" content="페이존 (급여관리 자동화)" /> -->
  <meta property="og:url" content="http://www.payzon.co.kr/pzRetirement/retireProcess.php" />
  <meta property="og:description" content="급여관리 페이존 - 퇴직관리 > 사원퇴직처리" />
  <meta property="og:image" content="https://img.payzon.co.kr_guideImg/common/logo.png" />
  <!-- <link rel="image_src" href="https://img.payzon.co.kr_guideImg/common/logo.png" /> -->

  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <link rel="stylesheet" type="text/css" href="//www.payzon.co.kr/_commonCss/_ssl/style.css"/>

  <link rel="shortcut icon" href="//img.payzon.co.kr/_commonImg/favicon.ico" type="image/x-icon">

  <!-- Google CDN jQuery with fallback to local -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script>!window.jQuery && document.write(unescape('%3Cscript src="//www.payzon.co.kr/_commonJs/external/jquery-1.11.1.min.js"%3E%3C/script%3E'))</script>

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery-migrate-1.2.1.min.js"></script><!-- jquery-migrate-1.1.1.min.js -->

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery.cookie.js"></script>

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/ajaxFileUpload.js"></script>

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/common.js?v=20220221"></script>

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/noticeBrowser.js" defer="defer"></script>

  <link rel="stylesheet" type="text/css" href="//www.payzon.co.kr/_commonCss/_ssl/external/jquery/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery-ui.js"></script>
  <!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" /> -->

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery-ui.customer.formUI.js"></script>
  <link rel="stylesheet" type="text/css" href="//www.payzon.co.kr/_commonCss/external/jquery-ui.customer.formUI.css" />

  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery.alphanum.js"></script>

<!-- msDropDown: 선택상자 UI -->
  <script type="text/javascript" src="//www.payzon.co.kr/_commonJs/external/jquery.dd.js"></script>
  <link rel="stylesheet" type="text/css" href="//www.payzon.co.kr/_commonCss/external/jquery.dd.css" />

<!-- mCustomScrollbar: DIV 스크롤바 -->
<link href="//www.payzon.co.kr/_commonCss/external/jquery/scrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" />
<script src="//www.payzon.co.kr/_commonJs/external/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- 라디오버튼 스킨: label_radio r_on -->
<link rel="stylesheet" type="text/css" href="//www.payzon.co.kr/_commonCss/external/jquery.maratz.radio.css" />



  <!-- <script src="http://www.google.com/jsapi"></script> -->
  <script type="text/javascript">
    // 유효성 키
    var setChkMd5;
    setChkMd5 = '16e5d11fb6a22309ee0126906b6027d5';
    var setShortKeyVer = 2;
    var isCuUrl;  // 지금은 제휴중(cu)
    if (document.location.href.split('?')[0].indexOf("cu.payzon.co.kr") > -1 ) isCuUrl = "cu";

    const hiworksLinked = ''; // 가비아 하이웍스 스토어
  </script>

  <!-- 지역 스크립트 -->
  <!-- <script type="text/javascript" src="//www.payzon.co.kr/pzRetirement/js/pzRetirement.js"></script> -->
  <script type="text/javascript" src="/pzRetirement/js/pzRetirement.js"></script>


  <!-- 단축 키 설정 -->
<script src="//www.payzon.co.kr/_commonJs/shortKey.js"></script>  </head>
  <body>
<!-- 2021-01-29 -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-55667387-4"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-55667387-4');
  gtag('config', 'G-CCK8YDQV0H');
  </script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-55667387-4', 'auto');
  ga('send', 'pageview');
</script>

<!-- DDN 2017-03-27 이사님요청 -->
<script type="text/javascript">
    var roosevelt_params = {
        retargeting_id:'Q-xRfWi38dMBWz8cmhE3ew00',
        tag_label:'GXO6C48SRjeVl99UM5Nhng'
    };
</script>
<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('1130293680471885162').pageView();
</script>
<script type="text/javascript" src="//adimg.daumcdn.net/rt/roosevelt.js" async></script>


<div id="layerProc" class="disHide" style="text-align:center;padding-top:3px;"><!--  title="TITLE:Basic modal dialog" background-color:red;-->
<iframe name="iFrmBox" id="iFrmBox" src="" width="100%" height="0px;" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><!-- /_commonHTML/ifrmLoading.html -->
<input type="hidden" id="idLayerDestroyTrigger" name="idLayerDestroyTrigger"><!-- /_commonHTML/ifrm/ifrmLoading.html -->
</div>

    <header>

<style>
.jbMenu {
  text-align: center;
  color: #ffffa6;
  background-color: #ff4242;
  padding: 6px 0px;
  width: 100%;
}
.jbFixed {
  position: fixed;
  top: 0px;
  z-index: 1;
}
</style>
<script>
$( document ).ready( function() {
  if($( '.jbMenu' ).length > 0){
    var jbOffset = $( '.jbMenu' ).offset();
    $( window ).scroll( function() {
      if ( $( document ).scrollTop() > jbOffset.top ) {
        $( '.jbMenu' ).addClass( 'jbFixed' );
      }
      else {
        $( '.jbMenu' ).removeClass( 'jbFixed' );
      }
    });
  }

});


  // 뷰어 다운
  $.fn.getExcelViewer = function() {
    var setUrl = "/pzServiceManual/php/inManualPdfDownProc.php";
    setUrl += "?setManualCode=EXV";
    setUrl += "&setChkMd5=" + setChkMd5;
    $("#iFrmMulti").attr("src", setUrl);
    return;
  };
  // 페이존 바로가기 다운
  $.fn.getPayzonQuick = function() {
    var setUrl = "/pzServiceManual/php/inManualPdfDownProc.php";
    setUrl += "?setManualCode=QLK";
    setUrl += "&setChkMd5=" + setChkMd5;
    $("#iFrmMulti").attr("src", setUrl);
    return;
  };

</script>

<div class="jbMenu" style="text-align:left;color:#FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 현재 고객님은 체험판 이용중 이십니다. 월 12,000원으로 급여관리 자동화 페이존(PAYZON)의 모든 서비스를 자유롭게 이용하실 수 있습니다. <a href="/pzServiceGuide/php/inLogoutProc.php?ref=ExZon"><span style="color:#FFFFFF;">[회원가입]</span></a></div>
    <div id="main_header">
      <div class="header">
        <ul class='logo p_t10'><a href="${pageContext.request.contextPath}"><img src='https://img.payzon.co.kr/_commonImg/header_logo_lt.png'></a><a href="${pageContext.request.contextPath}"><img src='https://img.payzon.co.kr/_commonImg/header_logo_rt.png'></a></ul>
        <ul class="logInfo">고객님 무료체험회원 입니다. </ul>
        <ul class='login_menu'>
        <div class='direct'>
        <!--<span><a href="/pzMyPage/onlineQnAList.php"><span class='direct_c'>온라인 상담실</span></a></span> /pzServiceGuide/customerQnAList.php -->
        <span><a href="/pzServiceGuide/php/inLogoutProc.php?ref=ExZon">회원가입</a></span><!-- 2015-01-05 /pzMyPage/myInfo.php 2015-01-19 회원가입(체험존) / 마이페이지 -->
        <span><a href="/pzServiceGuide/php/inLogoutProc.php">로그아웃</a></span>
        </div>
        <div class='favorite'><span id="btnBookmark" onclick="$.fn.setBookmark();" class="anchor"><img src='https://img.payzon.co.kr/_commonImg/icon_fa.gif' alt='즐겨찾기 추가' title='즐겨찾기 추가'></span> <a href="javascript:$.fn.getPayzonQuick();"><img src='https://img.payzon.co.kr/_commonImg/icon_go.gif' alt='바탕화면바로가기' title='바탕화면바로가기'></a></div>
      <!--<div class='print'><a href='#'><img src='https://img.payzon.co.kr/_commonImg/top_direct_print.png' alt='인쇄' title='인쇄'></a></div>--></ul>
      </div>
    </div>
    </header>
  <!-- 아이콘 메뉴 -->
    <nav>
    <div  id="top_gnb_2017">
        <div class="navi_2017">
        <ul class="navi_L_2017">
           <li class="n01"><a href="/pzServiceInfo/serviceInfo.php?ref=home" title="[Shift + 1] HOME"><span id="SK01">HOME</span></a></li>
           <li class="n02"><a href="${pageContext.request.contextPath}/pzRetirement/retireProcess.php" title="[Shift + 2] 사원등록"><span id="SK02">사원등록</span></a></li>
           <li class="n03"><a href="/pzPersonnel/employeeMnt.php" title="[Shift + 3] 사원현황"><span id="SK03">사원현황</span></a></li>
           <li class="n04"><a href="/pzPersonnel/certificatePrintWorking.php" title="[Shift + 4] 제 증명서 발급"><span id="SK04">제 증명서 발급</span></a></li>
           <li class="n05"><a href="/pzDiligence/diligenceMnt.php" title="[Shift + 5] 근태기록/관리"><span id="SK05">근태기록/관리</span></a></li>
           <li class="n06"><a href="/pzDiligence/holidaysSearchResult.php" title="[Shift + 6] 휴가조회"><span id="SK06">휴가조회</span></a></li>
           <li class="n07"><a href="/pzPayment/paymentMnt.php?frmPmsvTurmYYYY=2024&frmPmsvTurmMM=06&frmPmsvTurmCh=01&setPmsvType=0" title="[Shift + 7] 급여입력/관리"><span id="SK07">급여입력/관리</span></a></li>
           <li class="n08"><a href="/pzPayment/paymentMntDayWorker.php?frmPmsvTurmYYYY=2024&frmPmsvTurmMM=06&frmPmsvTurmCh=01" title="[Shift + 8] 급여입력/관리(일용직)"><span id="SK08">급여입력/관리(일용직)</span></a></li>
           <li class="n09"><a href="/pzPayment/paymentRegisterList.php" title="[Shift + 9] 급여대장"><span id="SK09">급여대장</span></a></li>
           <li class="n10"><a href="/pzPayment/paymentPayslip.php?frmPmsvTurmYYYY=2024&frmPmsvTurmMM=06&frmPmsvTurmCh=01" title="[Shift + 0] 급여명세서"><span id="SK10">급여명세서</span></a></li>
           <li class="n11"><a href="/pzPayment/paymentPayList.php" title="[Shift + -] 사원별급여내역"><span id="SK11">사원별급여내역</span></a></li>
           <li class="n12"><a href="/pzPayment/withHoldingTax.php" title="[Shift + =] 월천징수부"><span id="SK12">월천징수부</span></a></li>
           <li class="n13"><a href="javascript:$.fn.getExcelViewer();"><span>엑셀뷰어</span></a></li>
          <li class="n14"><a href="/pzServiceManual/manualStart.php"><span>사용매뉴얼</span></a></li>
          <li class="n15"><a href="/pzMyPage/onlineQnAEdit.php"><span>온라인 문의</span></a></li>
        </ul>
         </div>
    </div>
    </nav>


<!-- 대메뉴 -->
    <nav>
      <div id="bottom_gnb2017">
        <div id="menu" class="menu2020">
          <ul class="menu_s2020"><!--navi_s의 클래스로 width값 height값 배경색상을 지정해줌 속해있는 li값도 미리 설정-->
            <li class="n01">
              <a href="/pzConfig/membersInfo.php"><span>기본환경설정</span></a>
              <div class='menu_2depth_01_2020 ' style="z-index:9999;">
                <ul class='menu_01'>
                  <li><a href="/pzConfig/membersInfo.php">사용자 정보</a></li>
                  <li><a href="/pzPersonnel/employeeIns.php">사원 등록</a></li>
                  <li><a href="/pzConfig/dnLItemSet.php">휴가/근태 설정</a></li>
                  <li><a href="/pzConfig/payItemSet.php">급여항목 설정</a></li>
                </ul>
              </div>
            </li><!--클래스 n01로 속해있는 a태그의 백그라운드 포지션변경-->

            <li class="n02">
              <a href="/pzPersonnel/employeeMnt.php"><span>인사관리</span></a>
              <div class='menu_2depth_01_2020 ' style="z-index:9999;">
                <ul class='menu_01'>
                  <li><a href="/pzPersonnel/employeeMnt.php">사원현황/관리</a></li>
                  <li><a href="/pzPersonnel/employeeCard.php">인사기록 카드</a></li>
                  <li><a href="/pzPersonnel/certificatePrintWorking.php">제 증명서 발급</a></li>
                  <li><a href="/pzPersonnel/certificateRegister.php">제 증명서 발급대장</a></li>
                </ul>
              </div>
            </li><!--a:hover시엔 top값을 수정해서 사용-->

            <li class="n03">
              <a href="/pzDiligence/diligenceMnt.php"><span>근태관리</span></a>
              <div class='menu_2depth_01_2020 ' style="z-index:9999;">
                <ul class='menu_01'>
                 <!-- <li><a href="/pzConfig/dnLItemSet.php">근태(휴가)항목 설정 </a></li>-->
                  <li><a href="/pzDiligence/diligenceMnt.php">근태기록/관리</a></li>
                  <li><a href="/pzDiligence/diligenceSearchMonth.php">근태조회</a></li>
                  <li><a href="/pzDiligence/holidaysSearchResult.php">휴가조회</a></li><!-- /pzDiligence/holidaysSearch.php -->
                  <li><a href="/pzDiligence/dayWorkerMnt.php">일용직 근무기록/관리</a></li>
                  <li><a href="/pzDiligence/dayWorkerSearchMonth.php">일용직 근무 조회</a></li>
                </ul>
              </div>
            </li>

            <li class="n04">
              <a href="/pzPayment/paymentMnt.php?frmPmsvTurmYYYY=2024&frmPmsvTurmMM=06&frmPmsvTurmCh=01&setPmsvType=0"><span>급여관리</span></a>
              <div class='menu_2depth_01_2020 ' style="z-index:9999;">
                <ul class='menu_01'>
                 <!-- <li><a href="/pzConfig/payItemSet.php">급여항목 설정</a></li>-->
                  <li><a href="/pzPayment/paymentMnt.php?frmPmsvTurmYYYY=2024&frmPmsvTurmMM=06&frmPmsvTurmCh=01&setPmsvType=0">급여입력/관리</a></li>
                  <li><a href="/pzPayment/paymentMntDayWorker.php?frmPmsvTurmYYYY=2024&frmPmsvTurmMM=06&frmPmsvTurmCh=01">급여입력/관리(일용직)</a></li>
                  <li><a href="/pzPayment/paymentRegisterList.php">급여대장</a></li>
                  <li><a href="/pzPayment/paymentPayslip.php?frmPmsvTurmYYYY=2024&frmPmsvTurmMM=06&frmPmsvTurmCh=01">급여명세서</a></li><!-- /pzPayment/paymentPayslip.php -->
                  <li><a href="/pzPayment/paymentPayList.php">사원별 급여내역</a></li>
                  <li><a href="/pzPayment/paymentTransfer.php">급여이체 신청</a></li>
                  <li><a href="/pzPayment/paymentTransferList.php">급여이체 결과조회</a></li>
                  <li><a href="/pzPayment/paymentPayItemPart.php">항목별 대장</a></li>
                  <li><a href="/pzPayment/4insureList.php?setPmsvTurmYYYY=2024&setPmsvTurmMM=06&setPmsvTurmCh=01">4대보험 공제내역</a></li>
                  <!--
                  <li class="height"><a href="/pzPayment/dayWorkerPayslipSend.php">일용근로소득 지급명세서<br />(지급자 제출용)</a></li>
                  <li class="height"><a href="/pzPayment/dayWorkerPayslipSave.php">일용근로소득 지급명세서<br />(원천징수영수증)</a></li>-->
                </ul>
              </div>
            </li>

          <li class="n07">
              <a href="/pzStatistics/paymentStatisticsAll.php"><span>급여통계</span></a>
              <div class='menu_2depth_01_2020' style="z-index:9999;">
                <ul class='menu_01'>
                  <li><a href="/pzStatistics/paymentStatisticsAll.php">연도별 전체급여 통계</a></li>
                  <li><a href="/pzStatistics/paymentStatisticsAllMonth.php">월별 전체급여 통계</a></li>
                  <li><a href="/pzStatistics/paymentStatistics.php">연도별 개인연봉 통계</a></li>
                  <li><a href="/pzStatistics/paymentStatisticsMonth.php">월별 개인급여 통계</a></li>
                  <li><a href="/pzStatistics/paymentStatisticsPayItems.php">급여항목 구성 통계</a></li>
                </ul>
              </div>
            </li>

            <li class="n05">
              <a href="${pageContext.request.contextPath}/pzRetirement/retireProcess.php"><span>퇴직관리</span></a>
              <div class='menu_2depth_01_2020' style="z-index:9999;">
                <ul class='menu_01'>
                  <li><a href="${pageContext.request.contextPath}/pzRetirement/retireProcess.php">사원 퇴직처리</a></li>
                  <li><a href="${pageContext.request.contextPath}/pzRetirement/retirementMnt.php">퇴직급여 입력/관리</a></li>
                  <li><a href="${pageContext.request.contextPath}/pzRetirement/retirePayslip.php">퇴직급여명세서</a></li>
                 <!-- <li><a href="/pzRetirement/retireReceipt.php">퇴직소득원천징수영수증</a></li>-->
                </ul>
              </div>
            </li>
            <li class="n06">
              <a href="/pzPayment/withHoldingTax.php"><span>세무관리</span></a>
              <div class='menu_2depth_01_2020 ' style="z-index:9999;">
                <ul class='menu_01'>
                  <li><a href="/pzPayment/withHoldingTax.php">근로소득 원천징수부</a></li>
                  <li><a href="/pzPayment/dayWorkerPayslipV2.php">일용근로소득 지급명세서</a></li>
                  <li><a href="/pzRetirement/retireReceipt.php">퇴직소득원천징수영수증</a></li>
                  <!-- <li><span style='color:#cccccc;'>원천징수이행상황신고 [준비중]</span></li> -->
                </ul>
              </div>
            </li>
          </ul> <!-- // Class: menu_s -->
        </div> <!-- // Class: menu -->
      </div> <!-- // ID: bottom_gnb -->

    </nav>
  <!-- 2depth 메뉴 -->

<script type="text/javascript">
<!-- 

  $(function() {

    // UI
    $("#selSearchTarget, #selSortStat").msDropDown();

    // 상태별 검색
    $("#selSortStat").change(function(){
      if(window.location.href.indexOf("?") >= 0) location.replace(location.href + "&selSortStat=" + $(this).val());
      else location.replace(location.href + "?selSortStat=" + $(this).val());
      return;
    });

    // 2014-12-16 추가
    // 사원목록 마우스오버: 색상변경
    $("#table1 ul").hover(
      function(){  // over
        $("#table1 ul").removeClass("cssOverColorSet");
        if($(this).hasClass("sell_bg") !== true) $(this).addClass("cssOverColorSet");
      }, 
      function(){  // out
        $("#table1 ul").removeClass("cssOverColorSet");
      }
    );

  });

  // Customer Function
  // 사원 리스트에서 행 선택
  $.fn.selUlEmployee = function(p1){
    var obj = p1;
    if (obj){      
      var selEmployeeId = obj.id;
      var selEmplStatId = selEmployeeId.replace("EM", "liEmplStat");
      $("#table1 li").attr("style",null);
      var objEmployeeId = "#" + selEmployeeId;
      var objEmplStatId = "#" + selEmplStatId;
      $("#table1 > Ul").removeClass("ON");
      $(objEmployeeId).addClass("ON");
      $(objEmployeeId + " > li").attr("style","background-color:#1C59A5;color:#ffffff");
//      alert($(objEmplStatId).text());
      var pVal = '';
      if($(objEmplStatId).text() == "재직") pVal = "work";
      else if($(objEmplStatId).text() == "퇴직") pVal = "retire";
      pVal += "^" + selEmployeeId;
      var pType = "retireSet";
      $.fn.layerProcCreate(pType, pVal);
    }
    return;
  };

  // 재직자 재직/퇴직 상태 변경(PROC) 후 UI 변경 함수
  $.fn.setUlUpd = function(pMode, pDate){
    if($("#table1 > Ul.ON").length < 1) return false;
    var selEmployeeId = $("#table1 > Ul.ON").attr("id");
    var selEmplStatId = selEmployeeId.replace("EM", "liEmplStat");
    var selEmplQtDtId = selEmployeeId.replace("EM", "liEmplQtDt");

    if (pMode == "btnRetireSet"){
      $("#" + selEmplStatId).addClass("bold c_red").text("퇴직");
      $("#" + selEmplQtDtId).text(pDate);
    }else if(pMode == "btnRetireCancel"){
      $("#" + selEmplStatId).removeClass("bold c_red").text("재직");
      $("#" + selEmplQtDtId).text("");    
    }
    return;
  };



  $.fn.frmSrchCheck = function(){
    if($("#srchKwrd").val() == "검색어를 입력해주세요." || $.trim($("#srchKwrd").val()).length < 2){
      alert("검색어를 확인해 주세요.   ");
      $("#srchKwrd").select();
      return false;
    }
    return;
  };
-->
</script>

  <section>
  <div id="main_container">
  <!-- 타이틀 이미지 -->
    <div class='sub_titimg'>
    <ul>
    <li class='tit_img p_r7'><img src='../_commonImg/retire/resign_tit_img.gif' width='70' height='68'   alt='사원 퇴직처리' title='사원 퇴직처리'></li>
    <li class='p_t10'><img src='../_commonImg/retire/resign_tit_01.gif'  width='156' height='25'  alt='사원 퇴직처리' title='사원 퇴직처리'></li>
    <li  class='p_t5'>퇴직대상 사원을 선택하여 퇴직처리에 따른 정보를 입력할 수 있습니다. 퇴직사원으로 분류하여 전체 퇴직사원을 볼 수 있습니다.</li>
    </ul>
     <!-- <span class="calculator anchor" onclick="$.layerCreateCommon('manualView','F01');"><img src='https://img.payzon.co.kr/_commonImg/icon_zoom.png'  width='27' height='27' alt='매뉴얼' title='매뉴얼'></span> <span class="calculator anchor" onclick="$.fn.CallCalc();"><img src='https://img.payzon.co.kr/_commonImg/icon_calculator.gif'  width='22' height='26' alt='계산기' title='계산기'></span>-->
    </div>
    <hr>


   <!-- 퇴직처리 관리 -->
<div class='main_titimg wp_100'>
  <!-- 검색 & 정렬 -->
<form name="frmSrchEmployee" id="frmSrchEmployee" onSubmit="return $.fn.frmSrchCheck();">
  <div class='search_box p_b10 p_l10 '>
    <ul class='p_t1'>
      <select name="selSearchTarget" id="selSearchTarget" style='width:100px;'>
        <option value="srchName" >성명</option>
        <option value="srchMbId" >사원번호</option>
        <option value="srchDprt" >부서</option>
        <option value="srchAlls" >전체</option>
      </select>
    </ul>
    <ul class='p_l5'><input name="srchKwrd" id="srchKwrd" type='text' value="검색어를 입력해주세요." class='border w_170 height_22 p_l5' onFocus="this.value = (this.value == '검색어를 입력해주세요.')?'':this.value;"></ul><ul class='p_t1'><input type='image' value='검색' src='../_commonImg/retire/btn_s_search.png'  width='23px' height='23px' alt='검색' title='검색' class='p_l5 '></ul>
    <ul class='p_t1'><a href="/pzRetirement/retireProcess.php"><img name="btnListInit" id="btnListInit" type='image' value='전체보기' src='../_commonImg/retire/btn_list_all01.png'  width='74px' height='23px' alt='전체보기' title='전체보기' class='p_l10' ></a></ul>
    <!-- 2014-11-06 추가 -->
    <ul class="right p_r50">
      <select name="selSortStat" id="selSortStat" style="width:80px;">
       <option value="">상태별</option>
       <option value="srchDrof" >재직</option><!-- during office  -->
       <option value="srchRsnt" >퇴직</option><!-- resignation -->
      </select>
    </ul>  
  </div>
</form>


   <!-- 휴가조회 리스트 -->
      <div class='e_total'>
        <div id='table1'>
        <p class='caption'></p>
        <ul>
          <li  class='w_50 tit '>번호</li>
          <li  class='w_106 tit '>상태</li>
          <li  class='w_102 tit '><a href="/pzRetirement/retireProcess.php?setSortItem=emNo&setSortType=desc&page=1" class='c_linkblue'><u><strong>사원번호</strong></u></a></li>
          <li  class='w_100 tit'><a href="/pzRetirement/retireProcess.php?setSortItem=emNm&setSortType=asc&page=1" class='c_linkblue'><u><strong>성명</strong></u></a></li>
          <li  class='w_120 tit'><a href="/pzRetirement/retireProcess.php?setSortItem=dprt&setSortType=asc&page=1" class='c_linkblue'><u><strong>부서</strong></u></a></li>
          <li  class='w_120 tit'><a href="/pzRetirement/retireProcess.php?setSortItem=pstn&setSortType=asc&page=1" class='c_linkblue'><u><strong>직위</strong></u></a></li>
          <li  class='w_120 tit'><a href="/pzRetirement/retireProcess.php?setSortItem=emJd&setSortType=asc&page=1" class='c_linkblue'><u><strong>입사일</strong></u></a></li>
          <li  class='w_120 tit'><a href="/pzRetirement/retireProcess.php?setSortItem=emEd&setSortType=desc&page=1" class='c_linkblue'><u><strong>퇴직일</strong></u></a></li>
          <li  class='w_100 tit'>근속연수</li>
          <li  class='w_100 tit'>중간정산</li>
          <li  class='w_100 tit'>퇴직정산</li>
        </ul>
        
        
        <c:forEach var="n" items="${list}" begin="0" end="13" varStatus="st">
        <ul id="${n.emp_no}" onClick="$.fn.selUlEmployee(this);" class="anchor">
          <li class='w_50 '>${st.index+1}</li>
          <li class='w_106 ' id="liEmplStat1221223">${n.state}</li>
          <li class='w_102 '>${n.emp_no}</li>
          <li class='w_100 '>${n.name_kor}</li>
          <li class='w_120 '>${n.dept}</li>
          <li class='w_120 '>${n.job}</li>
          <li class='w_120 '>${n.hired_date}</li>
          <li class='w_120 ' id="liEmplQtDt1221223">${n.retired_date}</li>
          <li class='w_100 '>${n.years_service}</li>
          <li class='w_100 '><img src="../_commonImg/retire/icon_x.gif" width="17" height="17"></li>
          <li class='w_100 '><img src="../_commonImg/retire/icon_x.gif" width="17" height="17"></li>
        </ul>
       </c:forEach>
        
        </div>
    </div>
  <!-- 페이지 인덱스 -->
<!-- <style>
/*페이징*/
.paging{display:block; position:relative; clear:both; width:100%; padding:10px 0; text-align:center;}
/*
.paging{display:block; position:relative; clear:both; width:100%; margin:0 0 48px 30px; _margin-bottom:0px; padding:15px 0; text-align:center;}
*/
.paging a,
.paging strong{position:relative; display:inline-block; margin-right:1px; padding:3px 3px 5px 3px; color:#000; text-decoration:none; border:1px solid #ffffff; line-height:normal; font:bold 13px Verdana; _width:26px;}
.paging strong{color:#f23219 !important; border:1px solid #d7d7d7;}
.paging a:hover{background:#fff; text-decoration:underline; border:1px solid #249ede;line-height:normal;}
.paging .pre, .paging .next{font-weight:normal; display:inline-block; color:#565656; border:1px solid #d7d7d7;_position:relative; _top:-1px; font:12px Gulim; _width:60px;}
.paging .pre{margin-right:9px; padding:7px 6px 3px 16px; background:url(http://imgs.yesform.com/z_i/btn_arrow_left_on.gif) no-repeat 8px 9px !important;}
.paging .next{margin-left:9px; padding:7px 16px 3px 6px; background:url(http://imgs.yesform.com/z_i/btn_arrow_right_on.gif) no-repeat 47px 9px !important;}
.paging .line, .paging .line:visited{position:relative; display:inline-block; margin-right:1px; padding:3px 3px 5px 3px; color:#000; text-decoration:none; border:1px solid #d7d7d7; line-height:normal; font:bold 13px Verdana; _width:26px;}
.paging .line:hover{background:#fff; text-decoration:underline; border:1px solid #249ede;padding:3px 3px 5px 3px;line-height:normal; font:bold 13px Verdana; _width:26px;}
</style>
 -->

<!-- 페이지 링크 -->
<div class="paginate">
<a href='#' onClick="msg_pagelink(''); return false;" class='prev'>이전페이지</a> 
<a href="#현재페이지" class="on"><strong>1</strong></a> <a href='#' onClick="msg_pagelink(''); return false;" class='next'>다음페이지</a>
</div>
<!-- 페이지 링크 끝 -->
<script language='Javascript'>
function msg_pagelink(ptype) {
  if(ptype);
  else alert('더 이상 이동할 페이지가 없습니다.');
}
</script>

  

  </div>
</div>  
<hr class='hr_50'></hr>
  </section>

<!-- footer -->
      <footer>
        <iframe ref="nofollow" name="iFrmMulti" id="iFrmMulti" src="about:blank" tabindex="-1" width="0px" height="0px" frameborder="0" scrolling="yes" marginheight="0" marginwidth="0"></iframe>
        <iframe ref="nofollow" name="iFrmLog" id="iFrmLog" src="about:blank" tabindex="-1" width="0px" height="0px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><!--  -->
        <div id="main_footer"><img src='https://img.payzon.co.kr/_commonImg/bottom_2023.gif' usemap="#footer"></div>

        <map name="footer">
          <area shape="rect" coords="456,9,627,87" href="/pzServiceGuide/customerFAQList.php" alt='faq' title='faq'>
          <area shape="rect" coords="636,12,819,87" href="/pzMyPage/onlineQnAEdit.php" alt='qna' title='qna'>
          <area shape="rect" coords="827,12,991,86" href="/pzServiceManual/manualStart.php" alt='이용안내' title='이용안내'>
          <area shape="rect" coords="998,12,1150,86" href="/pzServiceGuide/memberPayment.php" alt='충전&결제' title='충전&결제'>
        </map>
     </footer>

        <!-- <iframe ref="nofollow" name="iFrmMulti" id="iFrmMulti" src="/_commonLog/logProc.php?pc=A001" tabindex="-1" width="0px" height="0px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="display:none;"></iframe>
        <iframe ref="nofollow" name="iFrmLog" id="iFrmLog" src="/_commonLog/logProc.php?pc=A002" width="0px" height="0px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="display:none;"></iframe> --><!-- /_commonLog/logProc.php?pc=A001 -->
<!-- // footer -->


</body>
</html>

