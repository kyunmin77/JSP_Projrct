<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="ko">
  <head>
  <title>급여관리 페이존 - 퇴직관리 > 퇴직급여입력/관리</title>
   <meta charset="euc-kr" />
  <!--<meta http-equiv="refresh" content="7;URL=http://payzon.co.kr" />-->
  <meta name="keywords" content="payzon, 인사관리, 급여관리" />
  <meta name="description" content="급여관리 페이존 - 퇴직관리 > 퇴직급여입력/관리"  />

  <meta name="naver-site-verification" content="navercdc5a22c7fcc5c46acb3324a06bc9f11"/>
  <meta property="og:title" content="페이존 (급여관리 자동화)"/>
  <meta property="og:type" content="website"/>
  <!-- <meta property="og:site_name" content="페이존 (급여관리 자동화)" /> -->
  <meta property="og:url" content="http://www.payzon.co.kr/pzRetirement/retirementMnt.php" />
  <meta property="og:description" content="급여관리 페이존 - 퇴직관리 > 퇴직급여입력/관리" />
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
           <li class="n02"><a href="/pzPersonnel/employeeIns.php" title="[Shift + 2] 사원등록"><span id="SK02">사원등록</span></a></li>
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


  $(function() {

    // UI
    $("select").msDropDown();
    // DATE 픽커
    $( ".frmCalendar:not(#frmRtsvPayD)" ).datepicker({  // frmRtsvPayD 아닌것.
        //option
        "showAnim":"fadeIn",
        "dateFormat":"yy-mm-dd",
        "showMonthAfterYear":true,
        "yearSuffix":"년",
        "showOtherMonths":true,
        "selectOtherMonths":true,
        "changeYear": true,
        "yearRange":"1950:+30",
    });
    $( "#frmRtsvPayD" ).datepicker({
        //option
        "showAnim":"fadeIn",
        "dateFormat":"yy-mm-dd",
        "showMonthAfterYear":true,
        "yearSuffix":"년",
        "showOtherMonths":true,
        "selectOtherMonths":true,
        "changeYear": true,
        "yearRange":"1950:+3",
    });

    $(".frmGives, .frmGiveInco, #frmCompensa, #frmDismissl, #frmSPRDeduEtc, .frmGiveDates, #frmSPRIncomeTax, #frmSPRAreaTax, .frmEtcMoney").numeric({
      allowMinus   : false,
      allowThouSep : true
    });
    $(".frmGives, .frmGiveInco, #frmCompensa, #frmDismissl, #frmSPRDeduEtc, #frmSPRIncomeTax, #frmSPRAreaTax, .frmEtcMoney").css("ime-mode", "disabled"); //한글사용 비활성화
    $(".frmGives, .frmGiveInco, #frmCompensa, #frmDismissl, #frmSPRDeduEtc, #frmSPRIncomeTax, #frmSPRAreaTax, .frmEtcMoney").on("keyup", function(){
      var rtnNumber = $.setComma($(this).val());
      if (rtnNumber == "") rtnNumber = 0;
      else if (rtnNumber.indexOf('0') == 0 && rtnNumber.length > 1) {
        if (rtnNumber.indexOf('.') != 1) {
          rtnNumber = rtnNumber.substr(1);
        }
      }
      $(this).val(rtnNumber);
      return;
    });

    // 지급연도 변경 시
    $("#selRtsvYyyy").change(function(){
      if($("#selRtsvYyyy").val()){
        location.replace("/pzRetirement/retirementMnt.php?setRtsvYyyyy=" + $("#selRtsvYyyy").val());
      }
      return;
    });

    // 급여내역 수정 시 계산
    $(".frmGives").keyup(function(){
      // 급여내역 산정일수, 급여총액 계산
      $.fn.setGiveSum();
      return;
    });

    // 기타 과세소득
    $(".frmGiveInco").keyup(function(){
      var setGiveInco3M = 0;
      var thisVal = Number($.fn.commaDel($(this).val()));
      var targetId = $(this).attr("id").replace("frmGiveInco", "disGiveInco3M");
      setGiveInco3M = parseInt(thisVal / 12 * 3);
      $("#" + targetId).text($.setComma(setGiveInco3M));
      return;
    });

    $(".frmCalendar").change(function(){
      var thisId = $(this).attr("id");
      if ($("#" + thisId).val() != ""){
        // 날짜 정규식검사
        if($.isDateFormat10th($("#" + thisId).val()) == null) {
          alert("날짜형식이 올바르지 않습니다.\n\n예) 2014-01-01 와 같은 형식으로 입력해 주십시오.\n\n또는 달력에서 날짜를 선택해 주세요.   \n");
          $("#" + thisId).val("");
          $("#" + thisId).select();
          return ;
        }
      }
    });


    // E.F 추가 사원 추가
    $("#btnEmployeeAdd").click(function(){
      if($("#selRtsvYyyy").val() == ''){
        alert("지급연도를 선택해 주세요.   ");
        $("#selRtsvYyyy").select();
        return;
      }
      var pType = "retireEmploAdd", pVal = "";
      $.fn.layerProcCreate(pType, pVal);
      return ;
    });

    // E.F.퇴직목록.선택사원 삭제
    $("#btnRetireEmployeeDeleteSelect").click(function(){
      var isSelected = false;

      $('#table1_retireData ul').each(function(){
        if($(this).hasClass("sell_bg") == true){
          isSelected = true;
//          alert($(this).index());
          if(confirm("선택된 사원을 삭제 하시겠습니까?   ")){
            // 선 등록 된 사원이면
            if ($(this).attr("type") != "N"){
              $.fn.setRetireInfoDelete($(this).attr("id"));
              $.fn.frmRetireInit("Init");
            }
            else {
              // 퇴직급여 폼 초기화
              $.fn.frmRetireInit("Init");
              alert("제거 되었습니다.   ");
            }
            $(this).remove();
            return;
          }else{
            alert("취소 되었습니다.   ");
            return;
          }
        }
      });
      if(isSelected == false){
        alert("선택된 사원이 없습니다.   ");
        return;
      }
      return;
    });
    //E.F.퇴직목록.전체사원삭제
    $("#btnRetireEmployeeDeleteAll").click(function(){
      if($('#table1_retireData ul').length < 1){
        alert("추가된 사원이 없습니다.   ");
        return;
      }
      if(confirm("전체 사원을 삭제 하시겠습니까?   ") == true){
        $.fn.setRetireInfoDelete("all");
        // 퇴직급여 폼 초기화
        $.fn.frmRetireInit("Init");
        $('#table1_retireData ul').remove();
        return;
      }else{
        alert("취소 되었습니다.   ");
        return;
      }
    });

    // 급여내역 불러오기
    $("#btnRetireInfoOk").click(function() {
      var isSelected = '', setRtsvSttD = '', setRtsvEndD = '';

      isSelected = $.fn.isEmployeeSelected();
      if(isSelected == false){
        alert("선택된 사원이 없습니다.   "); return 0;
      }

      setRtsvSttD = $("#frmRtsvSttD").val();
      setRtsvEndD = $("#frmRtsvEndD").val();

      if($("#selRtsvType").val() == ""){
        alert("퇴직 구분을 선택해 주세요.   ");
        $("#selRtsvType").select();
        return 0;
      }
      if(setRtsvSttD == ''){
        alert("입사일을 입력해 주세요.   ");
        $("#frmRtsvSttD").select();
        return 0;
      }
      if(setRtsvEndD == ''){
        alert("퇴직일을 입력해 주세요.   ");
        $("#frmRtsvEndD").select();
        return 0;
      }

      var setWorkingDay = Number($("#disRtsvDays").text());

      var setRtsvIndx = isSelected.replace("ulRtsvIndxNo", "");
      var setMatchCount = 0;
      // 추가되었는지 체크
      $.each($(".clsEmplIndx"), function(key, value){
        if($(this).text() == setRtsvIndx) setMatchCount++;
      });

      if(setWorkingDay < 365 && setMatchCount < 2){
        alert("1년 미만 재직자로 퇴직급여 대상자에 해당되지 않아\n\n퇴직급여 산정작업을 진행할 수 없습니다.\n\n[근속일수: " + setWorkingDay + "일]");
        return;
      }

      $.fn.getPayGivedInfoProc(isSelected, setRtsvEndD);

      // 퇴직금 계산 정보 초기화
      $.fn.frmRetireCalcInit();
      return;
    });

    // 사원 근무일, 근속년수, 근속일수 계산
    $("#frmRtsvSttD, #frmRtsvEndD").change(function(){
      if($("#frmRtsvSttD").val() && $("#frmRtsvEndD").val()){
        var setRtsvDays = $.getDateDiff($("#frmRtsvEndD").val(), $("#frmRtsvSttD").val());

//        var setRtsvYear = Math.ceil(setRtsvDays / 365);

        // 윤년의 개선 처리 2021-01-07 유기원
        // var setRtsvYear = $.getDateDiff3($("#frmRtsvEndD").val(), $("#frmRtsvSttD").val());
        // 2024-03-07 유기원
        var setRtsvYear = $.getDateDiff4($("#frmRtsvEndD").val(), $("#frmRtsvSttD").val());
// console.log('setRtsvYear : '+setRtsvYear);
// setRtsvYear2 = $.getDateDiff4($("#frmRtsvEndD").val(), $("#frmRtsvSttD").val());
// console.log('setRtsvYear2 : '+setRtsvYear2);

        $("#disRtsvYear").text(setRtsvYear);
        $("#disRtsvDays").text(setRtsvDays);
      }
      return;
    });





    // 급여내역 날짜 변경 처리1
    $("#frmRtsvSttD1, #frmRtsvEndD1").change(function(){
      if($("#frmRtsvSttD1").val() && $("#frmRtsvEndD1").val()){
        var setRtsvDays = $.getDateDiff($("#frmRtsvEndD1").val(), $("#frmRtsvSttD1").val()) + 1;
        if(Number(setRtsvDays) > 31 || Number(setRtsvDays) < 1 ){
          alert("급여지급 기간이 정확하지 않습니다.   ");
          $(this).val("");
          return;
        }
        $("#disRtpsDays1").text(setRtsvDays);
      }
      else{
        $("#disRtpsDays1").text(0);
        $("#frmRtpsPays1").val(0);
      }
      // 급여내역 산정일수, 급여총액 계산
      $.fn.setGiveSum();
      return;
    });

    // 급여내역 날짜 변경 처리2
    $("#frmRtsvSttD2, #frmRtsvEndD2").change(function(){
      if($("#frmRtsvSttD2").val() && $("#frmRtsvEndD2").val()){
        var setRtsvDays = $.getDateDiff($("#frmRtsvEndD2").val(), $("#frmRtsvSttD2").val()) + 1;
        if(Number(setRtsvDays) > 31 || Number(setRtsvDays) < 1 ){
          alert("급여지급 기간이 정확하지 않습니다.   ");
          $(this).val("");
          return;
        }
        $("#disRtpsDays2").text(setRtsvDays);
      }
      else{
        $("#disRtpsDays2").text(0);
        $("#frmRtpsPays2").val(0);
      }
      // 급여내역 산정일수, 급여총액 계산
      $.fn.setGiveSum();
      return;
    });

    // 급여내역 날짜 변경 처리3
    $("#frmRtsvSttD3, #frmRtsvEndD3").change(function(){
      if($("#frmRtsvSttD3").val() && $("#frmRtsvEndD3").val()){
        var setRtsvDays = $.getDateDiff($("#frmRtsvEndD3").val(), $("#frmRtsvSttD3").val()) + 1;
        if(Number(setRtsvDays) > 31 || Number(setRtsvDays) < 1 ){
          alert("급여지급 기간이 정확하지 않습니다.   ");
          $(this).val("");
          return;
        }
        $("#disRtpsDays3").text(setRtsvDays);
      }
      else {
        $("#disRtpsDays3").text(0);
        $("#frmRtpsPays3").val(0);
      }
      // 급여내역 산정일수, 급여총액 계산
      $.fn.setGiveSum();
      return;
    });

    // 급여내역 날짜 변경 처리4
    $("#frmRtsvSttD4, #frmRtsvEndD4").change(function() {
      if($("#frmRtsvSttD4").val() && $("#frmRtsvEndD4").val()){
        var setRtsvDays = $.getDateDiff($("#frmRtsvEndD4").val(), $("#frmRtsvSttD4").val()) + 1;
        if(Number(setRtsvDays) > 31 || Number(setRtsvDays) < 1 ){
          alert("급여지급 기간이 정확하지 않습니다.   ");
          $(this).val("");
          return;
        }
        $("#disRtpsDays4").text(setRtsvDays);
      }
      else {
        $("#disRtpsDays4").text(0);
        $("#frmRtpsPays4").val(0);
      }
      // 급여내역 산정일수, 급여총액 계산
      $.fn.setGiveSum();
      return;
    });

    // 기타공제 입력 시 공제총액, 실수령액 계산
    // 퇴직소득세, 퇴직지방소득세, 농어촌특별세, 기타공제
    $("#frmSPRIncomeTax, #frmSPRAreaTax, #frmSPRDeduEtc, #frmRtIfTxFF").keyup(function(){
      // 실수령액 = 퇴직소득 - 공제총액
      $.fn.setSPRRealTotal();
      return;
    });

    //########
    // 퇴직급여 저장
    //########
    $("#btnSaveOk").click(function(){
      var isSelected;
      isSelected = $.fn.isEmployeeSelected();
      if(isSelected == false){
        alert("선택된 사원이 없습니다.   ");
        return ;
      }

      var setRtpsPayT = Number($.fn.commaDel($("#disRtpsPayT").text()));
      if(setRtpsPayT == 0){
        alert("지난 급여내역을 입력해 주세요.   \n\n- 사유발생일 이전 최근 3개월   \n[클릭: 급여내역 불러오기]");
        return ;
      }

      if($("#disSPRRealTotal").text() == "0"){
        alert("퇴직금 계산을 해 주세요.   ");
        return ;
      }
      if($("#frmRtsvWays").val() == ""){
        alert("퇴직금 지급방법을 입력해 주세요.   ");
        $("#frmRtsvWays").select();
        return ;
      }
      if($("#frmRtsvPayD").val() == ""){
        alert("퇴직금 지급일을 입력해 주세요.   ");
        $("#frmRtsvPayD").select();
        return ;
      }
      // 2019-04-19 퇴직소득 재계산 추가
      if($("#frmSPRIncome").val() != $("#frmSPRIncomeCmp").val()){
        alert("퇴직소득 금액이 변경된 이력이 있습니다.\n\n퇴직소득 [×재계산]을 해 주세요.");
        return ;
      }


      // 데이터 저장
      $.fn.setRetireInfoSave(isSelected);

      return;
    });

    // 퇴직급여 저장 취소
    $("#btnSaveCancel").click(function(){
      // 전체 폼 초기화
      if(confirm("입력된 정보를 초기화 할까요?   ") == true){
        $.fn.frmRetireInit('Init');
        alert("초기화 되었습니다.   ");
      }else alert("초기화가 취소 되었습니다.   ");
      return;
    });

    // 2016-04-25 퇴직소득 사용자 입력 가능(요청)
    $("#frmSPRIncome").on("keyup", function(){
      // 해당부분만 재계산: 과세대상 퇴직급여 - 차감원천징수세액 = 실수령액
      var setSPRIncome = $(this).val();
      setSPRIncome = Number($.fn.commaDel(setSPRIncome));
      var setRtIfRtPm = setSPRIncome;
      $("#disRtIfRtPm").text($.setComma(setSPRIncome));

      var setRtIfMnTx = Number($.fn.commaDel($("#disRtIfMnTx").text()));

      var setSPRRealTotal = setRtIfRtPm - setRtIfMnTx;
      $("#disSPRRealTotal").text($.setComma(setSPRRealTotal));

      return;
    });


    // 제외일수 입력칸 조정  2022-02-21 유기원
    $('#frmRtsvDayo').on('keyup', function() {
      txtLen = $(this).val().length;
      txtWidth = (txtLen+1)*10;
      if(txtWidth>80) txtWidth = 80;
      $(this).css('width', txtWidth+'px');
    });
    // 제외일수 적용
    $('#btnDayCalc').click(function() {
console.log('제외일수 적용')
      var isSelected;
      isSelected = $.fn.isEmployeeSelected();
      if(isSelected == false){
        alert("선택된 사원이 없습니다.   ");
        return ;
      }

      rtsvSttDate = $("#frmRtsvSttD").val();
      rtsvEndDate = $("#frmRtsvEndD").val();

      rtsvYear = $.getDateDiff4(rtsvEndDate, rtsvSttDate); // 근속년수
      rtsvDay = $.getDateDiff(rtsvEndDate, rtsvSttDate); // 근속일수
      console.log('사원선택) '+$('#disRtsvYear').text()+'년 / '+$('#disRtsvDays').text()+'일');
      console.log('계산전) '+rtsvYear+'년 / '+rtsvDay+'일')

      // 근속일수 계산
      setRtsvDay = rtsvDay-$('#frmRtsvDayo').val();
      $('#disRtsvDays').text(setRtsvDay);

      // 근속년수 계산 = (근속월수-제외월수+가산월수)/12
      //              근속일수/365
      setRtsvYear = Math.ceil(setRtsvDay/365);
      $('#disRtsvYear').text(setRtsvYear);

    });

  }); // end function()//

  // 퇴직급여 데이터 저장 후 노출 정보 반영(변경)
  $.fn.disRetireTableUpdate = function(emplId, flgRtsvType, setRtsvIndx, setRtSvEndD){
    if(typeof(emplId) === "undefined"){
      alert("퇴직급여 반영 정보가 부족합니다.   ");  return;
    }
//  2014-10-28 퇴직급여 저장후 목록 선택 시 아이디 업데이트 오류 현상
//    alert($("#ulRtsvIndxNo" + emplId).length + " :: " + emplId + " :: " + setRtsvIndx);

    // 상태변화 [중]:중간정산, [퇴]:퇴직정산
    var setNameFieldText = ""; // 2014-11-06 수정 = $("#ulRtsvIndxNo" + emplId + " > li").eq(1).text();
    /*
    setNameFieldText = setNameFieldText.replace("[중]", "");
    setNameFieldText = setNameFieldText.replace("[퇴]", "");
    */
    var setNameStatText = "";
    if(flgRtsvType == "I") setNameStatText = "중간정산";
    else if(flgRtsvType == "E") setNameStatText = "퇴직정산";

    setNameFieldText = setNameFieldText + setNameStatText;
    $("#ulRtsvIndxNo" + emplId + " > li").eq(1).text(setNameFieldText);

    $("#ulRtsvIndxNo" + emplId).attr("type", flgRtsvType);
    $("#ulRtsvIndxNo" + emplId).attr("id", "ulRtsvIndxNo" + setRtsvIndx);
    $("#liPayDay" + emplId).text($("#frmRtsvPayD").val());
    $("#liPayDay" + emplId).attr("id", "liPayDay" + setRtsvIndx);
//    $("#liWorkPeriod" + emplId).text($("#frmRtsvSttD").val() + " ~ " + $("#frmRtsvEndD").val());
    $("#liWorkPeriod" + emplId).text($("#frmRtsvSttD").val() + " ~ " + setRtSvEndD); //$("#frmRtsvEndD").val());
    $("#liWorkPeriod" + emplId).attr("id", "liWorkPeriod" + setRtsvIndx);
    $("#liWorkingDay" + emplId).text($("#disRtsvDays").text());
    $("#liWorkingDay" + emplId).attr("id", "liWorkingDay" + setRtsvIndx);
    $("#liPayAmount" + emplId).text($("#disSPRRealTotal").text());
    $("#liPayAmount" + emplId).attr("id", "liPayAmount" + setRtsvIndx);
    $("#liPayWay" + emplId).text($("#frmRtsvWays").val());
    $("#liPayWay" + emplId).attr("id", "liPayWay" + setRtsvIndx);
    alert("퇴직급여가 저장 되었습니다.   ");
//    location.replace("/pzRetirement/retirementMnt.php");
    $.fn.frmRetireInit('Init');
    return;
  }


  // C.F.퇴직급여 전체/선택 삭제 후 반영
  $.fn.disRetirementMntDeleteResult = function(setEmplIndx){
    if(setEmplIndx){
      alert("퇴직급여 데이터가 삭제 되었습니다.[" + setEmplIndx + "]   ");
    }
    return;
  }

  // 사원 선택 유무(return id:true/false)
  $.fn.isEmployeeSelected = function(){
    var rtnVal = '';
    if($("#table1_retireData ul").hasClass("sell_bg") == true){
      $('#table1_retireData ul').each(function(){
        if($(this).hasClass("sell_bg") == true){
          rtnVal = $(this).attr("id");
        }
      });
      return rtnVal;
    }
    else return false;
  };

  $.fn.setRetireEmployeeSelect = function(val){
    //UI, PROC 구분.pzRetirement.js
    $.fn.getRetireEmployeeSelectProc(val);
    return;
  };

  //C.F. Get Select Employee Info Insert
  $.fn.setAddRetireEmployeeInList = function(val) {
    var addRecord;
    var jsonEmployeeList = eval("(" + val + ")");
    var setMatchCount = 0;
//    alert(jsonEmployeeList.employeeList.length);   return;
    $.each(jsonEmployeeList.employeeList, function(key,state){
      obj = state;//      alert(obj.setEmplIndx + obj.setEmplCode);
      setMatchCount = 0;
      // 추가되었는지 체크
      $.each($(".clsEmplIndx"), function(key, value){
        if($(this).text() == obj.setEmplIndx) setMatchCount++;
      });
      if (setMatchCount < 2){
        addRecord = "<ul onclick='$.fn.setEmployeeAddRecodeClick(this);' id=\"ulRtsvIndxNo"+ obj.setEmplIndx+"\" type=\"N\">";
        addRecord += "<li class='w_100 c' id='liPayDay" + obj.setEmplIndx + "'>0000-00-00</li>";
        addRecord += "<li class='w_100 c'></li>";// 2014-11-06 " + obj.setEmplEmpl + "
        addRecord += "<li class='w_100 c'>" + obj.setEmplName + "</li>";
        addRecord += "<li class='w_100 c'>" + obj.setPstnName + "</li>";
        addRecord += "<li class='w_100 c'>" + obj.setDprtName + "</li>";
        addRecord += "<li class='w_200 c' id='liWorkPeriod" + obj.setEmplIndx + "'></li>";
        addRecord += "<li class='w_120 con_r' id='liWorkingDay" + obj.setEmplIndx + "'></li>";
        addRecord += "<li class='w_150 con_r bold' id='liPayAmount" + obj.setEmplIndx + "'></li>";
        addRecord += "<li class='w_170  c' id='liPayWay" + obj.setEmplIndx + "'></li>";
        addRecord += "<span class='clsEmplIndx disHide'>" + obj.setEmplIndx + "</span>";
        addRecord += "</ul>";
        $("#table1_retireData").append(addRecord);
      }else{
        alert(obj.setEmplName + "님은 2건(중간/퇴직)이 추가되어 있습니다.   ");
      }
    });
//    alert("END");
    // 퇴직급여 폼 초기화
    $.fn.frmRetireInit("Init");
    return;
  };

  //사원목록.사원선택
  $.fn.setEmployeeAddRecodeClick = function(obj){
    // 퇴직급여 폼 초기화
    $.fn.frmRetireInit("Init");
    $('#table1_retireData ul').each(function(){
      if($(this).hasClass("sell_bg") == true){
        $(this).toggleClass('sell_bg');
        $(this).find("li").toggleClass("c_white");
      }
    });
    $(obj).toggleClass('sell_bg');
//    alert("aa: " + $(obj).find("span").length);
    $(obj).find("li").toggleClass("c_white");

    $.fn.getEmployeeInfoSelectProc($(obj).attr("id"));

    return;
  };

  //C.F. Get Selected Employee Info || Get RetireInfo
  $.fn.setEmployeeRetireInfoSelected = function(result) {
    var jsonEmployeeData = eval("(" + result + ")");

    $.each(jsonEmployeeData.employeeWorkingInfo, function(key, value){
      var obj = value;
      $("#disRtsvName").text(obj.setEmplName);
      $("#disRtsvPstn").text(obj.setPstnName);
      $("#selRtsvType").val(obj.setEmplType).msDropDown();
      $("#frmRtsvSttD").val(obj.setEmplJnDt);
      $("#frmRtsvEndD").val(obj.setEmplQtDt);
      $("#disRtsvYear").text(obj.setEmplWkYr);
      $("#disRtsvDays").text($.setComma(obj.setEmplWkDy));
      $("#frmRtsvDayo").val(obj.setEmplWkoDy).trigger('keyup'); // 제외일수 2022-02-24 유기원
      $("#frmMode").val(obj.setMode);
    });


    // 이미 입력된 퇴직정보가 있으면(지난 급여내역 저장(2))
    if(typeof(jsonEmployeeData.getRtrmPaysInfo) != "undefined"){
      $.each(jsonEmployeeData.getRtrmPaysInfo, function(key, value){
        var obj = value;
        var targetNum = key + 1;
        $("#frmRtsvSttD" + targetNum).val(obj.setRtpsSttD);
        $("#frmRtsvEndD" + targetNum).val(obj.setRtpsEndD);
        $("#disRtpsDays" + targetNum).text(obj.setRtpsDays);
        $("#frmRtpsPays" + targetNum).val($.setComma(Number(obj.setRtpsPays)));

        $("#disRtpsDayT").text(obj.setRtpsDayT);
        $("#disRtpsPayT").text($.setComma(Number(obj.setRtpsPayT)));
      });
    }

    // 이미 입력된 퇴직정보가 있으면(추가지급(3))
    if(typeof(jsonEmployeeData.getRtrmGiveInfo) != "undefined"){
      $.each(jsonEmployeeData.getRtrmGiveInfo, function(key, value){
        var obj = value;
        if(obj.setRtgvType == "퇴직위로금") $("#frmCompensa").val($.setComma(Number(obj.setRtgvAmnt)));
        else if(obj.setRtgvType == "해고예고수당") $("#frmDismissl").val($.setComma(Number(obj.setRtgvAmnt)));
        else if(obj.setRtgvType == "비과세퇴직급여") $("#frmRtrmTaxFree").val($.setComma(Number(obj.setRtgvAmnt)));
        else if(obj.setRtgvType == "기납부세액") $("#frmPostponeTax").val($.setComma(Number(obj.setRtgvAmnt)));
      });
    }

    // 이미 입력된 퇴직정보가 있으면(과세이연계좌(3+1) 2016)
    if(typeof(jsonEmployeeData.getRtrmDPoTInfo) != "undefined"){
      $.each(jsonEmployeeData.getRtrmDPoTInfo, function(key, value){
        var obj = value;
        var targetNum = key;
//        alert(key + " :: " +targetNum + " :: " + obj.setRtDpIndx + " :: " + obj.setRtDpName + " :: " + obj.setRtDpUniq + " :: " + obj.setRtDpBkNm + " :: " + obj.setRtDpInsD + " :: " + obj.setRtDpAmnt);
        $("#frmPpCmpnName" + targetNum).val(obj.setRtDpName);
        $("#frmPpCmpnUniq" + targetNum).val(obj.setRtDpUniq);
        $("#frmPpCmpnBkNb" + targetNum).val(obj.setRtDpBkNm);
        $("#frmPpDpDate" + targetNum).val(obj.setRtDpInsD);
        $("#frmPpDpAmount" + targetNum).val($.setComma(Number(obj.setRtDpAmnt)));

      });
    }

    // 이미 입력된 퇴직정보가 있으면(기타 과세소득(4))
    if(typeof(jsonEmployeeData.getRtrmInCmInfo) != "undefined"){
      $.each(jsonEmployeeData.getRtrmInCmInfo, function(key, value){
        var obj = value;
        var targetNum = key + 1;
//        alert(key + " :: " + obj.setRticIndx + " :: " + obj.setRticDate + " :: " + obj.setRticItem + " :: " + obj.setRticAmnt + " :: " + obj.setRticAm3M);
        $("#frmGiveDate" + targetNum).val(obj.setRticDate);
        $("#frmGiveItem" + targetNum).val(obj.setRticItem);
        $("#frmGiveInco" + targetNum).val($.setComma(Number(obj.setRticAmnt)));
        $("#disGiveInco3M" + targetNum).text($.setComma(Number(obj.setRticAm3M)));

      });
    }

    // 이미 입력된 퇴직정보가 있으면(퇴직금 계산 정보(5))
    if(typeof(jsonEmployeeData.getRtrmInfoInfo) != "undefined"){
      $.each(jsonEmployeeData.getRtrmInfoInfo, function(key, value){
        var obj = value;
//        alert(key + " :: " + obj.setRtifTtl3 + " :: " + obj.setRtifAver + " :: " + obj.setRtifInco );
        $("#disSPR3MTotal").text($.setComma(Number(obj.setRtifTtl3)));
        $("#disSPR1MAverage").text($.setComma(Number(obj.setRtifAver)));
        $("#frmSPR1MOrdinary").val($.setComma(Number(obj.setRtifOrdi))); // 통상임금 2021-08-18 유기원
        $("#disSPRIncome").text($.setComma(Number(obj.setRtifInco)));
        $("#frmSPRIncome").val($.setComma(Number(obj.setRtifInco)));
        $("#frmSPRIncomeCmp").val($.setComma(Number(obj.setRtifInco)));
        $("#disSPRDeduction").text($.setComma(Number(obj.setRtifDedu)));
        $("#disSPRDeduYear").text($.setComma(Number(obj.setRtifDedL)));
        $("#disSPRIncomDeduTotal").text($.setComma(Number(obj.setRtifDedR)));

        $("#disSPRTaxBase").text($.setComma(Number(obj.setRtifTxBs)));
        $("#disSPRTaxBaseAverage").text($.setComma(Number(obj.setRtifTxYA)));
        $("#disSPRTaxAmountAverage").text($.setComma(Number(obj.setRtifTxAA)));
        $("#disSPRTaxAmount").text($.setComma(Number(obj.setRtifTxAm)));
//        $("#disSPRIncomeTax").text($.setComma(Number(obj.setRtifRtic)));
        $("#frmSPRIncomeTax").val($.setComma(Number(obj.setRtifRtic)));  // 2016-02-12 추가
//        $("#disSPRAreaTax").text($.setComma(Number(obj.setRtifAric)));
        $("#frmSPRAreaTax").val($.setComma(Number(obj.setRtifAric)));  // 2016-02-12 추가
        $("#frmSPRDeduEtc").val($.setComma(Number(obj.setRtifDedE)));
        $("#disSPRDeduTotal").text($.setComma(Number(obj.setRtifDedT)));

        $("#frmTaxDedu").val($.setComma(Number(obj.setTaxDedu))); // 2021-01-15

//        if (typeof(obj.setRtifRtYY) == "object") {
        if (obj.setRtifRtYY != "" && obj.setRtifRtYY != "0") {
//          alert("20160101 이후 저장");
//          alert(obj.setRtifRtYY);

          $("#disRtIfRtYY").text(Number(obj.setRtifRtYY));  // 2016-03-22 2016
          $("#disRtIfTx15").text($.setComma(Number(obj.setRtifTx15)));  // 2016-03-22 2016
          $("#disRtIfTx16").text($.setComma(Number(obj.setRtifTx16)));  // 2016-03-22 2016
          $("#disRtIfDpIc").text($.setComma(Number(obj.setRtifDpIc)));  // 2016-03-22 2016
          $("#disRtIfDpAI").text($.setComma(Number(obj.setRtifDpAI)));  // 2016-03-22 2016

          $("#frmRtIfTxFF").val($.setComma(Number(obj.setRtifTxFf)));  // 2016-03-22 2016
          $("#disRtIfRtPm").text($.setComma(Number(obj.setRtifRtPm)));  // 2016-03-22 2016
          $("#disRtIfMnTx").text($.setComma(Number(obj.setRtifMnTx)));  // 2016-03-22 2016
        }
        else {
//          alert("20151231 이전 저장");
          $("#disRtIfRtYY").text("");  // 2016-03-22 2016
          $("#disRtIfTx15").text(0);  // 2016-03-22 2016
          $("#disRtIfTx16").text(0);  // 2016-03-22 2016
          $("#disRtIfDpIc").text(0);  // 2016-03-22 2016
          $("#disRtIfDpAI").text(0);  // 2016-03-22 2016

          $("#frmRtIfTxFF").val(0);  // 2016-03-22 2016
          $("#disRtIfRtPm").text($.setComma(Number(obj.setRtifInco)));  // 2016-03-22 2016
          $("#disRtIfMnTx").text($.setComma(Number(obj.setRtifDedT)));  // 2016-03-22 2016
        }


        $("#disSPRRealTotal").text($.setComma(Number(obj.setRtifRTAm)));
        $("#frmRtsvWays").val(obj.setRtifWays);
        $("#frmRtsvPayD").val(obj.setRtifDate);

      });
    }

    // 1일 평균임금 2021-12-15 유기원
    var setSPR1DAverage = 0;
    setSPR1DAverage = parseInt($.fn.commaDel($('#disSPR3MTotal').text()) / Number($.fn.commaDel($("#disRtpsDayT").text())));
    $("#disSPR1DAverage").text($.setComma(setSPR1DAverage));

/*
    // 1년전 퇴직급여 데이터 체크
    if(typeof(jsonEmployeeData.getRtrmSave1YInfo) != "undefined"){
      $.each(jsonEmployeeData.getRtrmSave1YInfo, function(key, value){
        var obj = value;
        alert(" 지급된 퇴직정보중 입사일, 퇴직일과 중복되는 데이터가 있습니다.   \n\n[" + obj.setRtsvType1Y + ": " + obj.setRtsvSttD1Y + " ~ " + obj.setRtsvEndD1Y + "]\n[지급액: " + $.setComma(Number(obj.setRtsvPays1Y)) + "원]   ");
        $("#frmRtsvSttD").val(obj.setRtsvEndD1Y);
        $("#frmRtsvSttD").trigger("change");
      });
    }
*/

    return;
  };

  //C.F. 급여내역 설정
  $.fn.setPayGiveInfo = function(val){
    var jsonpayGiveData = eval("(" + val + ")");
    var idNum;
    $(".clsGRtsvSttD, .clsGRtsvEndD, .frmGives").val("");
    $(".frmDays, .disRtpsDayT, .disRtpsPayT").text(0);
    $.each(jsonpayGiveData.payGiveSet, function(key, value){
      var obj = value;


//      alert(obj.setRtsvIndx + " :: " + obj.payGiveData);
      if (typeof(obj.payGiveData) == "object"){
        $.each(obj.payGiveData, function(keySub, valueSub){
          var objSub = valueSub;
          idNum = Number(obj.setRtsvIndx) + 1;
          $("#frmRtsvSttD" + idNum).val(objSub.setRtsvSttD);
          $("#frmRtsvEndD" + idNum).val(objSub.setRtsvEndD);
          $("#disRtpsDays" + idNum).text(objSub.setRtsvDays);
          $("#frmRtpsPays" + idNum).val($.setComma(Number(objSub.setRtsvGive)));

        });
      }
    });

    // 급여내역 산정일수, 급여총액 계산
    $.fn.setGiveSum();

  };

  // 급여내역 산정일수/급여총액 계산
  $.fn.setGiveSum = function(){
    var setDaysSum = 0, setGivesSum = 0;
    $.each($(".frmDays"), function(key, state){
      setDaysSum += Number($.fn.commaDel($(this).text()));
//      console.log("::" + setDaysSum);
    });
    $("#disRtpsDayT").text($.setComma(setDaysSum));

    $.each($(".frmGives"), function(key, state){
      setGivesSum += Number($.fn.commaDel($(this).val()));
    });
    $("#disRtpsPayT").text($.setComma(setGivesSum));
    return ;
  };


  // 변동(40%) 소득공제 = ①퇴직급여액 * 40%
  $.fn.getSPRDeduction201401 = function(setSPAmount){
    var point = 0.40;
    var setSPRDeduction = setSPAmount * point * 100 / 100;
    return setSPRDeduction;
  }

  // 근속년수 별 공제(근속연수 공제): 변동 표(테이블)
  $.fn.getSPRDeduYear201401 = function(setRtsvYear){
    var setSPRDeduYear = 0;
    if(setRtsvYear < 1){
      alert("근속년수가 없습니다.   ");  return 0;
    }else if(setRtsvYear > 0 && setRtsvYear <= 5)
      setSPRDeduYear = 300000 * setRtsvYear;
    else if(setRtsvYear > 5 && setRtsvYear <= 10)
      setSPRDeduYear = 1500000 + 500000 * (setRtsvYear - 5);
    else if(setRtsvYear > 10 && setRtsvYear <= 20)
      setSPRDeduYear = 4000000 + 800000 * (setRtsvYear - 10);
    //else if(setRtsvYear > 10 && setRtsvYear <= 20)
    else if(setRtsvYear>20)
      setSPRDeduYear = 12000000 + 1200000 * (setRtsvYear - 20);

    return setSPRDeduYear;
  };

  // 근속년수 별 공제(근속연수 공제): 변동 표(테이블)
  $.fn.getSPRDeduYear202301 = function(setRtsvYear){
    var setSPRDeduYear = 0;
    if(setRtsvYear < 1){
      alert("근속년수가 없습니다.   ");  return 0;
    }else if(setRtsvYear > 0 && setRtsvYear <= 5)
      setSPRDeduYear = 1000000 * setRtsvYear;
    else if(setRtsvYear > 5 && setRtsvYear <= 10)
      setSPRDeduYear = 5000000 + 2000000 * (setRtsvYear - 5);
    else if(setRtsvYear > 10 && setRtsvYear <= 20)
      setSPRDeduYear = 15000000 + 2500000 * (setRtsvYear - 10);
    //else if(setRtsvYear > 10 && setRtsvYear <= 20)
    else if(setRtsvYear>20)
      setSPRDeduYear = 40000000 + 3000000 * (setRtsvYear - 20);

    return setSPRDeduYear;
  };

  // 연평균산출세액: 변동 표(테이블) # 환산산출세액표로도 사용(2016년 변경 통합됨)
  $.fn.getSPRTaxAmountAverage201601 = function(setSPRTaxBaseAverage){
    var setSPRTaxAmountAverage = 0;
    if(setSPRTaxBaseAverage <= 12000000) setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.06;
    else if(setSPRTaxBaseAverage > 12000000 && setSPRTaxBaseAverage <= 46000000)
      setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.15 - 1080000;
    else if(setSPRTaxBaseAverage > 46000000 && setSPRTaxBaseAverage <= 88000000)
      setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.24 - 5220000;
    else if(setSPRTaxBaseAverage > 88000000 && setSPRTaxBaseAverage <= 150000000)
      setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.35 - 14900000;
    else if(setSPRTaxBaseAverage > 150000000)
      setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.38 - 19400000;

    return parseInt(setSPRTaxAmountAverage);
  };

  // 세액산출
  $.fn.getSpecialTaxAmount202301 = function(setSPRTaxBaseAverage){
    var setSPRTaxAmountAverage = 0;
    if(setSPRTaxBaseAverage <=14000000) setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.06;
    else if(setSPRTaxBaseAverage <=50000000) setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.15-1260000;
    else if(setSPRTaxBaseAverage <=88000000) setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.24-5760000;
    else if(setSPRTaxBaseAverage <=150000000) setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.35-15440000;
    else if(setSPRTaxBaseAverage <=300000000) setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.38-19940000;
    else if(setSPRTaxBaseAverage <=500000000) setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.4-25940000;
    else if(setSPRTaxBaseAverage <=1000000000) setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.42-35940000;
    else if(setSPRTaxBaseAverage >1000000000) setSPRTaxAmountAverage = setSPRTaxBaseAverage * 0.45-65940000;
    return parseInt(setSPRTaxAmountAverage);
  }

  // 환산급여별 공제 (환산급여/차등공제)
  $.fn.getReturnRtrmDedu201601 = function(setReturnRtrmPay){

    var rtnReturnRtrmDedu = 0;
    if(setReturnRtrmPay <= 8000000) rtnReturnRtrmDedu = setReturnRtrmPay;
    else if(setReturnRtrmPay <= 70000000) rtnReturnRtrmDedu = (setReturnRtrmPay - 8000000) * 0.60 + 8000000;
    else if(setReturnRtrmPay <= 100000000) rtnReturnRtrmDedu = (setReturnRtrmPay - 70000000) * 0.55 + 45200000;
    else if(setReturnRtrmPay <= 300000000) rtnReturnRtrmDedu = (setReturnRtrmPay - 100000000) * 0.45 + 61700000;
    else rtnReturnRtrmDedu = (setReturnRtrmPay - 300000000) * 0.35 + 151700000;
//    alert(setReturnRtrmPay + " :: " + rtnReturnRtrmDedu + " :: " + parseInt(rtnReturnRtrmDedu));
    return rtnReturnRtrmDedu;
  };

  // 특례 적용 산출세액
  // 2015 이전, 2016 이후 합산금액을 기본으로 하고
  // 세액이 하나만 있을 경우 해당 세액만 구함
  $.fn.getSpecialTaxAmount = function(setRtrmTaxYYYY, setSPRTaxAmount2015, setSPRTaxAmount2016){
    var setSpecialTaxAmount = 0;
    if(setRtrmTaxYYYY < 2016) setSpecialTaxAmount = setSPRTaxAmount2015;
    else if(setRtrmTaxYYYY == 2016)
      setSpecialTaxAmount = ( setSPRTaxAmount2015 * 0.80 ) + ( setSPRTaxAmount2016 * 0.20 );
    else if(setRtrmTaxYYYY == 2017)
      setSpecialTaxAmount = ( setSPRTaxAmount2015 * 0.60 ) + ( setSPRTaxAmount2016 * 0.40 );
    else if(setRtrmTaxYYYY == 2018)
      setSpecialTaxAmount = ( setSPRTaxAmount2015 * 0.40 ) + ( setSPRTaxAmount2016 * 0.60 );
    else if(setRtrmTaxYYYY == 2019)
      setSpecialTaxAmount = ( setSPRTaxAmount2015 * 0.20 ) + ( setSPRTaxAmount2016 * 0.80 );
    else
      setSpecialTaxAmount = setSPRTaxAmount2016;

    return parseInt(setSpecialTaxAmount);
  };


  // 퇴직금 계산
  $.fn.getSeverancePay = function(){
    var isSelected;
    isSelected = $.fn.isEmployeeSelected();
    if(isSelected == false){
      alert("선택된 사원이 없습니다.   ");
      return ;
    }
    var setRtpsPayT = Number($.fn.commaDel($("#disRtpsPayT").text()));
    if(setRtpsPayT == 0){
      alert("지난 급여내역을 입력해 주세요.   \n\n- 사유발생일 이전 최근 3개월   \n[클릭: 급여내역 불러오기]");
      return ;
    }
    $(".frmDays").each( function(key, value){
      var thisIdx = key + 1;
      if($("#disRtpsDays" + thisIdx).text() > 0 && $("#frmRtpsPays" + thisIdx).val() < 1){
        $("#frmRtpsPays" + thisIdx).select();
        alert("산정일수에 대한 급여총액을 입력해 주세요.   ");
        return false;
      }
    });
    var setGiveIncoSum = 0;
    $.each($(".disGiveInco"), function(key, state){
      setGiveIncoSum += Number($.fn.commaDel($(this).text()));
    });

    // 3개월 총계 = 급여내역 + 기타 과세소득
    var setSPR3MTotal = setRtpsPayT + setGiveIncoSum;
    $("#disSPR3MTotal").text($.setComma(setSPR3MTotal));

    // 평균임금 = 급여내역 3개월 총계 / 총 산정일수 * 30(일)
    var setSPR1MAverage = 0;
    setSPR1MAverage = parseInt(setSPR3MTotal / Number($.fn.commaDel($("#disRtpsDayT").text())) * 30);
    $("#disSPR1MAverage").text($.setComma(setSPR1MAverage));
    // 1일 평균임금  2021-12-15 유기원
    var setSPR1DAverage = 0;
    setSPR1DAverage = parseInt(setSPR3MTotal / Number($.fn.commaDel($("#disRtpsDayT").text())));
    $("#disSPR1DAverage").text($.setComma(setSPR1DAverage));

    // 통상임금 - 입력 시 평균임금보다 우선하여 계산  2021-08-18 유기원
    var setSPR1MOrdinary = Number($.fn.commaDel($('#frmSPR1MOrdinary').val()));

    var setWageAmount = 0;
    //setWageAmount = (setSPR1MOrdinary>0) ? setSPR1MOrdinary : setSPR1MAverage;
    setWageAmount = (setSPR1MOrdinary>0) ? setSPR1MOrdinary : setSPR1DAverage;
    console.log('setWageAmount: ', setWageAmount);
    // ①퇴직급여액 = 평균임금 * 근속일수 / 365
    //var setSPAmount = parseInt(setWageAmount * Number($.fn.commaDel($("#disRtsvDays").text())) / 365);
    // ①퇴직급여액 = 일평균임금 * 30 * 근속일수 / 365
    //console.log('근속일수 : '+$("#disRtsvDays").text());
    var setSPAmount = parseInt(setWageAmount * 30 * Number($.fn.commaDel($("#disRtsvDays").text())) / 365);
    console.log('setSPAmount: ', setSPAmount);
    console.log('setSPAmount: ', setWageAmount*30);
//console.log(setSPR3MTotal+' + '+$("#disRtpsDayT").text());
//console.log('setWageAmount : '+setWageAmount);
//console.log('1개월 평균임금 : '+setSPR1MAverage);
//console.log('1일 평균임금 : '+setSPR1DAverage);
//console.log('통상임금 : '+setSPR1MOrdinary);
//console.log('계산 임금 : '+setSPAmount);

    // 비과세 퇴직급여
    var setRtrmTaxFree = Number($.fn.commaDel($("#frmRtrmTaxFree").val()));
    //console.log(setRtrmTaxFree);
    // (27)퇴직소득 = ①퇴직급여액 + (퇴직위로금 + 해고예고수당) - 비과세 퇴직급여(2016)
    var setSPRIncome = setSPAmount + Number($.fn.commaDel($("#frmCompensa").val())) + Number($.fn.commaDel($("#frmDismissl").val())) - setRtrmTaxFree;
    $("#disSPRIncome").text($.setComma(setSPRIncome));
    $("#frmSPRIncome").val($.setComma(setSPRIncome));
    $("#frmSPRIncomeCmp").val($.setComma(setSPRIncome));
console.log("(27)퇴직소득 setSPRIncome:" + setSPRIncome); // OOO


    // 2016-03-21 퇴직일
    // 2015.12.31 이전, 2016.01.01 이후 계산처리 구분
    var setRtsvEndD = $("#frmRtsvEndD").val();
    var setRtsvEndDInt = setRtsvEndD.replace(/-/gi, "");
    if (setRtsvEndDInt <= 20151231) setRtsvTax2016 = false;
    else setRtsvTax2016 = true;
    //alert(setRtsvEndDInt + " :: " + setRtsvTax2016);
    console.log('퇴직일자: ', setRtsvEndDInt);

    // (28)퇴직소득 정률공제:소득공제 = ①퇴직급여액 * 40%(변동) => 소수점 첫째자리 반올림 XXXX
    var setSPRDeduction = $.fn.getSPRDeduction201401(setSPRIncome);
    setSPRDeduction = Math.round(setSPRDeduction);
    $("#disSPRDeduction").text($.setComma(setSPRDeduction)); // XX
 //console.log("(28)퇴직소득 정률공제 setSPRDeduction:" + setSPRDeduction);

    // 근속년수
    var setRtsvYear = Number($.fn.commaDel($("#disRtsvYear").text()));
    console.log('근속년수) '+setRtsvYear);
    // (28)근속연수 공제: 변동 표(테이블)
    var setSPRDeduYear = 0;
    setSPRDeduYear = (setRtsvEndDInt>=20230101) ? $.fn.getSPRDeduYear202301(setRtsvYear) : $.fn.getSPRDeduYear201401(setRtsvYear);
 //console.log('근속년수 공제)'+setSPRDeduYear);
    $("#disSPRDeduYear").text($.setComma(setSPRDeduYear));
    console.log($("#disRtsvYear").text());
    console.log("(28)근속연수 공제 setSPRDeduYear:" + setSPRDeduYear); //28
// ===================

    // 퇴직소득공제합계 = 소득공제 + 근속년수별공제 XXX
    var setSPRIncomDeduTotal = setSPRDeduction + setSPRDeduYear;
    $("#disSPRIncomDeduTotal").text($.setComma(setSPRIncomDeduTotal)); // XX


    // (31)퇴직소득과세표준 = ①퇴직급여액 - 퇴직소득공제합계
    //  var setSPRTaxBase = 0;
    //  setSPRTaxBase = Number(setSPRIncome) - Number(setSPRDeduction) - Number(setSPRDeduYear);
    //  $("#disSPRTaxBase").text($.setComma(setSPRTaxBase));
//  console.log("(30)퇴직소득과세표준 setSPRTaxBase:" + setSPRTaxBase);
//  console.log("(30)퇴직소득과세표준 setSPRTaxBase:" + setSPRTaxBase, ' / ', setSPRIncome, ' - ', setSPRDeduction, ' - ', setSPRDeduYear);

      // (29) 환산급여 [(27-28) × 12배 /정산근속연수]
      // 근속년수==0, 0, 퇴직소득-근속년수공제 *12/ 근속년수
      var setSPRTaxBaseAverage = 0;
      console.log(setSPRIncome,' - ', setSPRDeduYear, '/ ', setRtsvYear);
      if(setRtsvYear>0) setSPRTaxBaseAverage = Math.floor((setSPRIncome-setSPRDeduYear)*12/setRtsvYear);
      console.log('(29)환산급여: ', setSPRTaxBaseAverage, ' setRtsvYear:', setRtsvYear);

      // (30) 환산급여별공제
      var setSPRReturnTaxStandard = $.fn.getReturnRtrmDedu201601(setSPRTaxBaseAverage);
      console.log('(30)환산급여별공제: ', setSPRReturnTaxStandard);

      // (31) 퇴직소득과세표준(29-30)
      var setSPRTaxBase = 0;
      setSPRTaxBase = setSPRTaxBaseAverage - setSPRReturnTaxStandard;
      console.log('(31)퇴직소득과세표준: ', setSPRTaxBaseAverage,' - ',setSPRReturnTaxStandard,' = ', setSPRTaxBase);

      //(32) 환산산출세액(31 × 세율)
      set32 = $.fn.getSpecialTaxAmount202301(setSPRTaxBase);
      console.log('(32)환산산출세액', set32);
      //$("#disRtIfTx16").text($.setComma(set32));

      //(33) 퇴직소득 산출세액(32 × 정산근속연수 / 12배)
      setDeclareTax = Math.floor(set32/12*setRtsvYear);
      console.log('(33)퇴직소득 산출세액', setDeclareTax); // disRtIfTx16
      $("#frmSPRIncomeTax").val($.setComma(setDeclareTax));




/*######################################################*/
/*######################################################*/
/*######################################################*/
    // 입사일
    var setRtsvSttD = $("#frmRtsvSttD").val();
    var setRtsvSttDInt = setRtsvSttD.replace(/-/gi, "");

    // 근속연수
    var setWorkDateYyyyy = 0;
    aWorkDateYyyyy = $.fn.getWorkDate(setRtsvSttD, setRtsvEndD);
    setWorkDateYyyyy = aWorkDateYyyyy["year"];
    var setWorkDate20121231Before = 0;
    var setWorkDate20130101After = 0;


    // 2015.12.31 이전 계산방법
    // (36)과세표준안분
    //// (36_1) 2012.12.31 이전 : (30) * 각근속연수 / 정산근속연수 → 소수점 첫째자리 반올림
    var setTaxStandard20121231 = 0;
//    if (setRtsvSttDInt <= 20121231) {
      aWorkDate20121231Before = $.fn.getWorkDate(setRtsvSttD, "2012-12-31");
      // 근속연수: 2012.12.31. 이전
      setWorkDate20121231Before = aWorkDate20121231Before["year"];
      setTaxStandard20121231 = setSPRTaxBase * setWorkDate20121231Before / setRtsvYear;
      // (36_1) 2012.12.31 이전
      setTaxStandard20121231 = setTaxStandard20121231.toFixed(0);
//    }
    //// (36_2) 2013.01.01 이후 : (30) - (36_1)
    var setTaxStandard20130101 = 0;
//    if (setRtsvSttDInt >= 20130101) {
      setTaxStandard20130101 = setSPRTaxBase - setTaxStandard20121231;
// console.log("(36_2) 2013.01.01 이후 setWorkDate20130101After:" + setTaxStandard20130101 + " == " + setSPRTaxBase + " - " + setTaxStandard20121231);
//    }
    //// (36_3) 합계 : (36_1) + (36_2)
    var setTaxStandard = 0;
    setTaxStandard = setTaxStandard20121231 + setTaxStandard20130101;



    // (37)연평균과세표준 = 과세표준 / 근속연수
    //// (37_1) 2012.12.31 이전 : (36_1) / 각근속연수 -> 소수점 버림
    var setTaxBaseAvg20121231 = 0;
//    if (setRtsvSttDInt <= 20121231) {
      setTaxBaseAvg20121231 = setTaxStandard20121231 / setWorkDate20121231Before;
      setTaxBaseAvg20121231 = Math.floor(setTaxBaseAvg20121231);
//    }
// console.log("(37_1) 2012.12.31 이전 setWorkDate20130101After:" + setTaxBaseAvg20121231 + " == " + setTaxStandard20121231 + " / " + setWorkDate20121231Before);

    //// (37_2) 2013.01.01 이후 : (36_2) / 각근속연수 -> 소수점 버림
    var setTaxBaseAvg20130101 = 0;
  //  if (setRtsvSttDInt >= 20130101) {
     var reSetRtsvSttD = '';  // 입사일이 2013-01-01 보다 클경우 입사일을, 아니면 '2013-01-01'을 시작일로 함
      if (setRtsvSttDInt >= 20130101) reSetRtsvSttD = setRtsvSttD;
      else reSetRtsvSttD = '2013-01-01';
      // 각근속연수 : 2013.01.01 이후
//      aWorkDate20130101After = $.fn.getWorkDate(reSetRtsvSttD, setRtsvEndD);
//      setWorkDate20130101After = aWorkDate20130101After["year"];
      setWorkDate20130101After = setWorkDateYyyyy - setWorkDate20121231Before;
 //console.log("(각근속연수 : 2013.01.01 이후:" + reSetRtsvSttD + " == " + setRtsvEndD + " / " + setWorkDate20130101After);

      setTaxBaseAvg20130101 = setTaxStandard20130101 / setWorkDate20130101After;
      setTaxBaseAvg20130101 = Math.floor(setTaxBaseAvg20130101);
//    }

console.log("(37_2) 2013.01.01 이후 setWorkDate20130101After:" + setTaxBaseAvg20130101 + " == " + setTaxStandard20130101 + " / " + setWorkDate20130101After);

    // (37_3) 합계 : (36_1) / 정산근속연수
    var setSPRTaxBaseAverage = 0;
    setSPRTaxBaseAverage = setTaxStandard / setRtsvYear;
    $("#disSPRTaxBaseAverage").text($.setComma(setSPRTaxBaseAverage)); // XXXX
// console.log("(37_3) 합계 setWorkDate20130101After:" + setTaxStandard20130101 + " :: " + setWorkDate20130101After + " == " + setTaxBaseAvg20130101);

//    alert(setTaxBaseAvg20121231 + " :: " + setTaxBaseAvg20130101 + " :: " + setSPRTaxBaseAverage);

    // (38) 환산과세표준
    var setSPRReturnTaxStandard = 0;
    //// (38_2) 2013.01.01 이후 : (37_2) * 5
//    if (setRtsvSttDInt >= 20130101) {
      setSPRReturnTaxStandard = setTaxBaseAvg20130101 * 5;
      //console.log("(38_2) 2013.01.01 이후 setSPRReturnTaxStandard:" + setSPRReturnTaxStandard + " == " + setTaxBaseAvg20130101 + " * " + 5);
//    }
    // (38_3) 합계 : (38_2)
    var setSPRReturnTaxStandardTotal = 0;
    setSPRReturnTaxStandardTotal = setSPRReturnTaxStandard;
    // TO DO Display

    // (39)환산산출세액
    var setSPRReturnTax = 0;
    //// (39_2) 2013.01.01 이후 -> 소수점 버림
//    if (setRtsvSttDInt >= 20130101) {
      // 과세표준계산 테이블
      setSPRReturnTax = $.fn.getSPRTaxAmountAverage201601(setSPRReturnTaxStandard);
      setSPRReturnTax = Math.floor(setSPRReturnTax);
 //console.log("(39_2) 2013.01.01 이후 setSPRReturnTax:" + setSPRReturnTax + " == " + setSPRReturnTaxStandard);

 //console.log('=> ', setSPRReturnTaxStandard, ' / ', $.fn.getSPRTaxAmountAverage202301(setSPRReturnTaxStandard));

//    }
    //// (39_3) 합계 : (39_2)
    var setSPRReturnTaxTotal = 0;
    setSPRReturnTaxTotal = setSPRReturnTax;
    // TO DO Display

    // (40)연평균산출세액
    //// (40_1) 2012.12.31 이전 -> 소수점 버림
    var setSPRTaxAvg20121231 = 0;
//    if (setRtsvSttDInt <= 20121231) {
      // 과세표준계산 테이블
      setSPRTaxAvg20121231 = $.fn.getSPRTaxAmountAverage201601(setTaxBaseAvg20121231);
//    }
    //// (40_2) 2013.01.01 이후 : (39_2) / 5  -> 소수점 버림
    var setSPRTaxAvg20130101 = 0;
//    if (setRtsvSttDInt >= 20130101) {
      setSPRTaxAvg20130101 = setSPRReturnTax / 5;
      setSPRTaxAvg20130101 = Math.floor(setSPRTaxAvg20130101);
// console.log(">>>>>>>>>>>:" + setSPRTaxAvg20130101 + " == " + setSPRReturnTax);
//    }
// console.log("(40_2) 2013.01.01 이후  setSPRTaxAmount20130101:" + setSPRTaxAvg20130101 + " == " + setSPRReturnTax);

    //// (40_3) 합계 : (40_1) + (41_2)
    var setSPRTaxAmountAverage = 0;
    setSPRTaxAmountAverage = setSPRTaxAvg20121231 + setSPRTaxAvg20130101;
    $("#disSPRTaxAmountAverage").text($.setComma(setSPRTaxAmountAverage));

    // (41) 산출세액
    //// (41_1) 2012.12.31 이전 : (40_1) * 각근속연수
    var setSPRTaxAmount20121231 = 0;
//    if (setRtsvSttDInt <= 20121231) {
      setSPRTaxAmount20121231 = setSPRTaxAvg20121231 * setWorkDate20121231Before;
// console.log("(41_1) 2012.12.31 이전 setSPRTaxAmount20121231:" + setSPRTaxAmount20121231 + " == " + setSPRTaxAvg20121231 + " :: " + setWorkDate20121231Before);
//    }
    //// (41_2) 2013.01.01 이후 : (40_2) * 각근속연수
    var setSPRTaxAmount20130101 = 0;
//    if (setRtsvSttDInt >= 20130101) {
      setSPRTaxAmount20130101 = setSPRTaxAvg20130101 * setWorkDate20130101After;
//    }
// console.log("(41_2) 2013.01.01 이후  setSPRTaxAmount20130101:" + setSPRTaxAmount20130101 + " == " + setSPRTaxAvg20130101 + " :: " + setWorkDate20130101After);
    //// (41_3) 합계 : (41_1) + (41_2)
    var setSPRTaxAmount2015 = 0;
    setSPRTaxAmount2015 = setSPRTaxAmount20121231 + setSPRTaxAmount20130101;


// console.log("(41_3) 합계 setSPRTaxAmount2015:" + setSPRTaxAmount2015 + " == " + setSPRTaxAmount20121231 + " :: " + setSPRTaxAmount20130101);
    // 2015.12.31 이전 산출세액 표기
    var setRtrmTaxYYYY = setRtsvEndD.substr(0, 4);
    $("#disRtIfTx15").text($.setComma($.fn.getSpecialTaxAmount(setRtrmTaxYYYY, setSPRTaxAmount2015, 0)));
// console.log("#disRtIfTx15:" + ($.fn.getSpecialTaxAmount(setRtrmTaxYYYY, setSPRTaxAmount2015, 0)));

//    $("#disSPRTaxAmount").text($.setComma(setSPRTaxAmount2015));



    // (45)특례 적용 산출세액 -> 소수점 버림
    var setSpecialTaxAmount = 0;

    // 2016.01.01 이후 산출세액
    var setSPRTaxAmount2016 = 0;



    // 2016년 개정 계산처리 : 2016년도 이후 퇴직
    if (setRtsvTax2016 === true)
    {


      // (31)정산퇴직소득 : 퇴직소득
      var setCalcRtrmIncome = setSPRIncome;
// console.log("(31)정산퇴직소득 setCalcRtrmIncome:" + setCalcRtrmIncome);
      // (32)근속연수공제 : (29)
      var setWorkYearDedu = setSPRDeduYear;
// console.log("(32)근속연수공제 setWorkYearDedu:" + setWorkYearDedu);

      // (33)환산급여 : ((31) - (32)) / 정산근속연수 * 12  -> 소수점버림 OOO
      var setReturnRtrmPay = ( setCalcRtrmIncome - setWorkYearDedu ) / setRtsvYear * 12;
      setReturnRtrmPay = Math.floor(setReturnRtrmPay);
// console.log("(33)환산급여 setReturnRtrmPay:" + setReturnRtrmPay);

      // (34)환산급여별공제 -> 소수점 첫째자리 올림
      // (30) 환산급여별공제 - OOO
      var setReturnRtrmDedu = 0;
      setReturnRtrmDedu = $.fn.getReturnRtrmDedu201601(setReturnRtrmPay);
      setReturnRtrmDedu = Math.ceil(setReturnRtrmDedu);
// console.log("(34)환산급여별공제 setReturnRtrmDedu:" + setReturnRtrmDedu);

      // (35)퇴직소득과세표준 : (33) - (34) #주의# (30)퇴직소득과세표준 2015년 이전 존재
      var setSPRTaxBase2016 = 0;
      setSPRTaxBase2016 = setReturnRtrmPay - setReturnRtrmDedu;
// console.log("(35)퇴직소득과세표준 setSPRTaxBase2016:" + setSPRTaxBase2016);

      // (42)환산산출세액 #주의# (39)환산산출세액 2015년 이전 존재
      var setSPRReturnTax2016 = 0;
      setSPRReturnTax2016 = (setRtsvEndDInt>=20230101) ? $.fn.getSpecialTaxAmount202301(setSPRTaxBase2016) : $.fn.getSPRTaxAmountAverage201601(setSPRTaxBase2016);
// console.log("(42)환산산출세액 setSPRReturnTax2016:" + setSPRReturnTax2016);
      $("#disRtIfTx16").text($.setComma(setSPRReturnTax2016));

      // (43)산출세액 : (42) / 12 * 정산근속연수 -> 소수점 버림 #주의# (41) 산출세액 2015년 이전 존재
      var setSPRTaxAmount2016 = 0;
      setSPRTaxAmount2016 = setSPRReturnTax2016 / 12 * setRtsvYear;
      setSPRTaxAmount2016 = Math.floor(setSPRTaxAmount2016);
// console.log("(43)산출세액 setSPRTaxAmount2016:" + setSPRTaxAmount2016);
//      alert(setRtrmTaxYYYY + " :: " + setSPRTaxAmount2016);

      //$("#disRtIfTx16").text($.setComma($.fn.getSpecialTaxAmount(setRtrmTaxYYYY, 0, setSPRTaxAmount2016)));
// console.log("#disRtIfTx16:" + ($.fn.getSpecialTaxAmount(setRtrmTaxYYYY, 0, setSPRTaxAmount2016)));


      // 202003 세액공제
      var setTaxDedu = Number($.fn.commaDel($('#frmTaxDedu').val()));
// console.log("세액공제 :" + setTaxDedu);
      setSPRTaxAmount2016 = setSPRTaxAmount2016-setTaxDedu;
// console.log("(43)산출세액-세액공제 :" + setSPRTaxAmount2016);




      // (44)퇴직일이 속하는 과세연도 : 퇴직연도
      $("#disRtIfRtYY").text(setRtrmTaxYYYY);
      // (45)특례 적용 산출세액 -> 소수점 버림
      setSpecialTaxAmount = 0;
      setSpecialTaxAmount = $.fn.getSpecialTaxAmount(setRtrmTaxYYYY, setSPRTaxAmount2015, setSPRTaxAmount2016);

// console.log("(45)특례 적용 산출세액 setSpecialTaxAmount:" + setRtrmTaxYYYY + " :: " + setSPRTaxAmount2015 + " :: "  + setSPRTaxAmount2016 + " == " + setSPRTaxAmount2016);

    }
    else
    {
      // 2016-05-13 2016년 개정 이전 퇴직자를 계산하는 경우가 발생하여 개정 전 계산법 적용
      setSpecialTaxAmount = 0;
      setSpecialTaxAmount = $.setComma$("#disRtIfTx15").text();
    }

    var setSPRTaxAmount = 0;
    // 특례 적용 산출세액 표기
    setSPRTaxAmount = setSpecialTaxAmount;
//    $("#frmSPRIncomeTax").val($.setComma(setSPRTaxAmount));

    // (46)기납부(또는 기과세이연) 세액 : 입력받은 해당 금액
    var setPostponeTax = 0;
    setPostponeTax = Number($.fn.commaDel($("#frmPostponeTax").val()));
    // (47)신고대상세액 : (45) - (46)
    //var setDeclareTax = 0;
    //setDeclareTax = setSpecialTaxAmount - setPostponeTax;
//console.log(setDeclareTax + " :: " + setSpecialTaxAmount + " :: " + setPostponeTax);
    // (48)신고대상세액(47) 동일값
    //$("#frmSPRIncomeTax").val($.setComma(setDeclareTax));

    // (38)계좌입금금액 - 과세이연계좌
    var setPpDpAmount = 0;
    setPpDpAmount += Number($.fn.commaDel($("#frmPpDpAmount0").val()));
    setPpDpAmount += Number($.fn.commaDel($("#frmPpDpAmount1").val()));
    // (50)퇴직급여(17)과세대상퇴직급여

    // (51)이연 퇴직소득세 : (48) * (49) / (50) -> 소수점 첫째자리 반올림
    var setRtIfDpIc = setDeclareTax * setPpDpAmount / setSPRIncome;
    setRtIfDpIc = Number(setRtIfDpIc.toFixed(0));
    $("#disRtIfDpIc").text($.setComma(setRtIfDpIc));
    // (54)차감원천징수세액 소득세 : (52)소득세 - (53)소득세 -> 일단위 버림
    //// (52)신고대상세액(47)
    //// (53)이연퇴직소득세(51)

    // (42), (43), (44) 지방소득세 : 각 소득세의 10% -> 소수점 버림
    // (42) 신고대상세액(36)
    var setDeclareTaxArea = 0;
    setDeclareTaxArea = Math.floor(setDeclareTax * 0.10);

    // (53)이연퇴직소득세(51)
    var setRtIfMnTxArea = 0;
    setRtIfMnTxArea = Math.floor(setRtIfMnTx * 0.10);

    // (43_2) 이연지방소득세
    var setRtIfDpAI = 0;
    setRtIfDpAI = Math.floor(setRtIfDpIc * 0.10);
    $("#disRtIfDpAI").text($.setComma(setRtIfDpAI));

    // (44)차감원천징수세액 소득세
    var setRtIfMnTx = 0;
    setRtIfMnTx = (setDeclareTax + setDeclareTaxArea) - (setRtIfDpIc + setRtIfDpAI);
    //console.log('('+setDeclareTax+' + '+setDeclareTaxArea+') - ('+setRtIfDpIc+' + '+setRtIfDpAI+')');
    //setRtIfMnTx = Math.floor( setRtIfMnTx * 0.1 ) * 10;// 10원단위로 절사
    setRtIfMnTx = Math.floor(setRtIfMnTx);// 원단위로 절사  2020-08-11 유기원
    console.log('44)'+setRtIfMnTx);
    $("#disRtIfMnTx").text($.setComma(setRtIfMnTx));


    // display
    // 과세대상퇴직급여
    var setRtIfRtPm = 0;
    setRtIfRtPm = setSPRIncome;
    $("#disRtIfRtPm").text($.setComma(setRtIfRtPm));


    // 지방소득세 = (42)신고대상세액 * 10%
    var setSPRAreaTax = parseInt(setDeclareTax * 0.1);
    $("#frmSPRAreaTax").val($.setComma(setSPRAreaTax));

    // 지급방법.사원.입금계좌 정보 구함
    $.fn.getEmployeePayBankInfo(isSelected);

    // 실수령액 = 과세대상 퇴직급여 - 차감원천징수세액
    $.fn.setSPRRealTotal();

    return;
  };

  // 실수령액 = 퇴직소득 - 공제총액
  $.fn.setSPRRealTotal = function(){
    // 과세대상 퇴직급여
    var setRtIfRtPm = Number($.fn.commaDel($("#disRtIfRtPm").text()));
    // 산출세액(퇴직소득세)
    // var setSPRTaxAmount = Number($.fn.commaDel($("#disSPRTaxAmount").text()));
    var setSPRTaxAmount = Number($.fn.commaDel($("#frmSPRIncomeTax").val()));  // 2016-02-12
    // 지방소득세
    var setSPRAreaTax = Number($.fn.commaDel($("#frmSPRAreaTax").val())); // 2016-02-12
    // 이연 퇴직소득세
    var setRtIfDpIc = Number($.fn.commaDel($("#disRtIfDpIc").text()));
    // 이연 지방소득세
    var setRtIfDpAI = Number($.fn.commaDel($("#disRtIfDpAI").text()));
    // 농어촌특별세
    var setRtIfTxFF = Number($.fn.commaDel($("#frmRtIfTxFF").val()));
    // 기타공제
    var setSPRDeduEtc = Number($.fn.commaDel($("#frmSPRDeduEtc").val()));

    if(setRtIfRtPm < 1 && setSPRTaxAmount < 1){
      return;
    }

    // 차감원천징수세액 = 퇴직소득세 + 지방소득세 + 농어촌특별세 + 기타공제 - (이연 퇴직소득세 + 이연 지방소득세)
    // 변경 차감원천징수세액 = 일단위 버림(퇴직소득세액 - 이연 퇴직소득세) + 일단위 버림(지방소득세 - 이연지방소득세) + 농어촌특별세 + 기타공제
    var setRtIfMnTx = 0;
//    setRtIfMnTxB = setSPRTaxAmount + setSPRAreaTax + setRtIfTxFF + setSPRDeduEtc - ( setRtIfDpIc + setRtIfDpAI);
    //setRtIfMnTx = (Math.floor((setSPRTaxAmount - setRtIfDpIc) * 0.1 ) * 10) + (Math.floor((setSPRAreaTax - setRtIfDpAI) * 0.1 ) * 10) + setRtIfTxFF + setSPRDeduEtc;// 10원단위로 절사
    setRtIfMnTx = Math.floor(setSPRTaxAmount - setRtIfDpIc) + Math.floor(setSPRAreaTax - setRtIfDpAI) + setRtIfTxFF + setSPRDeduEtc;// 원단위로 절사  2020-08-11 유기원
// console.log("setRtIfMnTxB : " + setRtIfMnTxB);
// console.log("setRtIfMnTx : " + setRtIfMnTx);

//    setRtIfMnTx = Math.floor( setRtIfMnTx * 0.1 ) * 10;
    $("#disRtIfMnTx").text($.setComma(setRtIfMnTx));

    // 실수령액 = 퇴직소득 - 공제총액
    var setSPRRealTotal = setRtIfRtPm - setRtIfMnTx;
    $("#disSPRRealTotal").text($.setComma(setSPRRealTotal));

    return;
  };

  // 지급방법.사원.입금계좌 정보 기입
  $.fn.setEmployeePayBankInfo = function(setEmployeeBankInfo){
    $("#frmRtsvWays").val($.trim(setEmployeeBankInfo));
    return;
  }

  // 폼, 정보 초기화
  $.fn.frmRetireInit = function(setMode){
    if(setMode == "Init"){
      $('#table1_retireData ul').removeClass("sell_bg");
      $('#table1_retireData ul > li').removeClass("c_white");
    }
    // 폼 초기화
    $("form")[0].reset();

    // 퇴직자 선택정보, 이름, 직위, 근속년수, 근속일수
    $("#disRtsvName, #disRtsvPstn").text("○○");
    $("#disRtsvYear, #disRtsvDays").text(0);
    $('#frmRtsvDayo').val(0).trigger('keyup'); // 제외일수 2022-02-23 유기원

    // 퇴직구분 선택상자
    $("#selRtsvType").val("").msDropDown();

    // 급여내역 3개월 산정일수
    $.each($("span.frmDays"), function(key, state){
      $(this).text(0);
    });
    // 총산정일수, 총급여금액
    $("#disRtpsDayT, #disRtpsPayT").text(0);

    // 기타과세 3개월 금액 부분
    $.each($("span.disGiveInco"), function(key, state){
      $(this).text(0);
    });

    // 퇴직금 계산 정보 초기화
    $.fn.frmRetireCalcInit();
    return;
  };

  // 퇴직금 계산 정보 초기화
  $.fn.frmRetireCalcInit = function(){
    $.each($("span.SPResult"), function(key, state){
      $(this).text(0);
    });
    $('#frmSPR1MOrdinary').val(0);
    $("#frmSPRIncome").val(0);
    $("#frmSPRIncomeCmp").val(0);
    $("#frmSPRIncomeTax").val(0);
    $("#frmSPRAreaTax").val(0);
    $("#frmRtIfTxFF, #frmSPRDeduEtc").val(0);
    $("#frmRtsvWays, #frmRtsvPayD").val("");

    return;
  };


//-->
</script>
<section>

  <!-- main_container -->
  <div id="main_container">

    <!-- 타이틀 이미지 -->
    <div class="sub_titimg">
      <ul>
        <li class="tit_img p_r7"><img src="../_commonImg/retire/resign_tit_img02.gif" width="70" height="68" ></li>
        <li class="p_t10"><img src="../_commonImg/retire/resign_tit_02.gif"  width="201" height="25"  alt="퇴직급여 입력 & 관리" title="퇴직급여 입력 & 관리"></li>
        <li  class="p_t5">퇴직사원에 대한 퇴직급여 정보를 입력, 저장, 관리하는 메뉴입니다. 선택사원의 퇴직금 내역이 자동으로 계산됩니다.</li>
      </ul>
      <!--<span class="calculator anchor" onclick="$.layerCreateCommon('manualView','F02');"><img src='https://img.payzon.co.kr/_commonImg/icon_zoom.png'  width='27' height='27' alt='매뉴얼' title='매뉴얼'></span> <span class="calculator anchor" onclick="$.fn.CallCalc();"><img src='https://img.payzon.co.kr/_commonImg/icon_calculator.gif'  width='22' height='26' alt='계산기' title='계산기'></span>-->
    </div>
    <!-- 타이틀 이미지// -->

    <hr>

    <!-- 퇴직급여 입력 &  관리 -->
    <div class="main_titimg">

      <!-- 사원 리스트-->
      <div class="e_total" style="overflow:visible">

        <!-- 사원 리스트 테이블 상단 메뉴  -->
        <div class="dil_search_box" style="width:100%">
          <ul class="p_t5 bold w_70 c bold">* 지급년도</ul>
          <ul  class="p_t1" >
            <select name="selRtsvYyyy" id="selRtsvYyyy">
              <option value="">선택</option>
	<option value="2025" >2025 년</option>
	<option value="2024" SELECTED>2024 년</option>
	<option value="2023" >2023 년</option>
	<option value="2022" >2022 년</option>
	<option value="2021" >2021 년</option>
	<option value="2020" >2020 년</option>
	<option value="2019" >2019 년</option>
	<option value="2018" >2018 년</option>
	<option value="2017" >2017 년</option>
	<option value="2016" >2016 년</option>
	<option value="2015" >2015 년</option>
	<option value="2014" >2014 년</option>
	<option value="2013" >2013 년</option>
	<option value="2012" >2012 년</option>
	<option value="2011" >2011 년</option>
	<option value="2010" >2010 년</option>
	<option value="2009" >2009 년</option>
	<option value="2008" >2008 년</option>
	<option value="2007" >2007 년</option>
	<option value="2006" >2006 년</option>
	<option value="2005" >2005 년</option>
	<option value="2004" >2004 년</option>
	<option value="2003" >2003 년</option>
	<option value="2002" >2002 년</option>
	<option value="2001" >2001 년</option>
	<option value="2000" >2000 년</option>
            </select>
          </ul>
          <ul class="right w_85 align_r">
            <input name="btnEmployeeAdd" id="btnEmployeeAdd" type="image" value="퇴직사원 불러오기" src="../_commonImg/retire/btn_new_pluse.png" width="74px" height="23px" alt="퇴직사원 불러오기" title="퇴직사원 불러오기">
          </ul>
        </div>
        <!-- 사원 리스트 테이블 상단 메뉴//  -->

        <!-- 사원 리스트 항목 -->
        <div id="table1">
          <p class="caption"></p>
          <ul>
            <li class="w_100 tit bold"><a href="#" class="c_linkblue">지급일</u></a></li>
            <li class="w_100 tit bold"><a href="#" class="c_linkblue">구분</u></a></li>
            <li class="w_100 tit bold"><a href="#" class="c_linkblue">성명</u></a></li>
            <li  class="w_100 tit bold">직위</li>
            <li  class="w_100 tit bold">부서</li>
            <li  class="w_200 tit bold">산정기간</li>
            <li  class="w_120 tit bold">근속일수</li>
            <li  class="w_150 tit bold">실지급액</li>
            <li  class="w_170 tit bold">지급방법</li>
          </ul>
        </div>
        <!-- 사원 리스트 항목// -->

        <!-- 사원 리스트 데이터 -->

        <div style="height:100px;">
          <div id="table1_retireData" style="cursor:pointer;">
            <ul onclick="$.fn.setEmployeeAddRecodeClick(this);" id="ulRtsvIndxNo186449" type="I">
              <li class="w_100 c" id="liPayDay186449">2024-07-31</li>
              <li class="w_100 c">중간정산</li><!-- 2014-11-06 수정 -->
              <li class="w_100 c">박치흥</li>
              <li class="w_100 c">부장</li>
              <li class="w_100 c">기획전략팀</li>
              <li class="w_200 c" id="liWorkPeriod186449">2006-05-01 ~ 2024-07-14</li>
              <li class="w_120 con_r " id="liWorkingDay186449">6,650&nbsp;&nbsp;</li>
              <li class="w_150 con_r bold" id="liPayAmount186449">78,514,804&nbsp;&nbsp;</li>
              <li class="w_170  c" id="liPayWay186449">기업은행 120-86-50680</li>
              <span class="clsEmplIndx disHide">1221221</span>
            </ul>
            <ul onclick="$.fn.setEmployeeAddRecodeClick(this);" id="ulRtsvIndxNo186450" type="I">
              <li class="w_100 c" id="liPayDay186450">2020-07-31</li>
              <li class="w_100 c">중간정산</li><!-- 2014-11-06 수정 -->
              <li class="w_100 c">이수잔</li>
              <li class="w_100 c">대리</li>
              <li class="w_100 c">디자인팀</li>
              <li class="w_200 c" id="liWorkPeriod186450">2004-10-12 ~ 2020-07-14</li>
              <li class="w_120 con_r " id="liWorkingDay186450">5,755&nbsp;&nbsp;</li>
              <li class="w_150 con_r bold" id="liPayAmount186450">47,578,310&nbsp;&nbsp;</li>
              <li class="w_170  c" id="liPayWay186450">기업은행 1234-123-123456</li>
              <span class="clsEmplIndx disHide">1221224</span>
            </ul>
            <ul onclick="$.fn.setEmployeeAddRecodeClick(this);" id="ulRtsvIndxNo186451" type="E">
              <li class="w_100 c" id="liPayDay186451">2024-07-31</li>
              <li class="w_100 c">퇴직정산</li><!-- 2014-11-06 수정 -->
              <li class="w_100 c">이수잔</li>
              <li class="w_100 c">대리</li>
              <li class="w_100 c">디자인팀</li>
              <li class="w_200 c" id="liWorkPeriod186451">2020-07-15 ~ 2024-07-14</li>
              <li class="w_120 con_r " id="liWorkingDay186451">1,461&nbsp;&nbsp;</li>
              <li class="w_150 con_r bold" id="liPayAmount186451">14,702,202&nbsp;&nbsp;</li>
              <li class="w_170  c" id="liPayWay186451">기업은행 1234-123-123456</li>
              <span class="clsEmplIndx disHide">1221224</span>
            </ul>
          </div>
        </div>
        <!-- 사원 리스트 데이터// -->

      </div>
      <!-- 사원 리스트// -->

      <!-- 사원 리스트 테이블 하단 메뉴 -->
      <div class="dil_search_box p_t10" style="width:99.5%">
        <ul class="p_l10 right align_r">
          <input name="btnRetireEmployeeDeleteAll" id="btnRetireEmployeeDeleteAll" type="image" value="전체삭제" src="../_commonImg/btn_delete_all.png"  width="69px" height="23px" alt="전체삭제" title="전체삭제" >
          <input name="btnRetireEmployeeDeleteSelect" id="btnRetireEmployeeDeleteSelect" type="image" value="선택삭제" src="../_commonImg/btn_delete_select.png"  width="69px" height="23px" alt="선택삭제" title="선택삭제" >
        </ul>
      </div>
      <!-- 사원 리스트 테이블 하단 메뉴// -->

<form name="frmRetire" id="frmRetire">
<input type="hidden" name="frmMode" id="frmMode" value="">
      <!-- 퇴직정보 -->
      <!-- <div class="retire_set_box" style="background-color:#606079; height:80px;">
        <ul class="name">
          <span class="c_yellow" name="disRtsvName" id="disRtsvName">○○</span> <span name="disRtsvPstn" id="disRtsvPstn">○○</span> 퇴직계산
        </ul>
        <ul class="p_l10 c_white bold p_t10">
          구분&nbsp;&nbsp;
          <span style="display:inline-block; vertical-align:middle; margin-top:-6px">
            <select name="selRtsvType" id="selRtsvType" style="width:80px;">
              <option value="">선택</option>
              <option value="퇴직정산">퇴직정산</option>
              <option value="중간정산">중간정산</option>
            </select>
          </span>
          <span class="p_l20" >입사일&nbsp;&nbsp;<input name="frmRtsvSttD" id="frmRtsvSttD" type="text" value="" class="text frmCalendar" style="width:80px;" maxlength="10" autocomplete="off"> ~ <a title="마지막 근무일의 다음 날짜">퇴직일</a>&nbsp;&nbsp;<input name="frmRtsvEndD" id="frmRtsvEndD" type="text" value="" class="text frmCalendar" style="width:80px;" maxlength="10" title="마지막 근무일의 다음 날짜" autocomplete="off"></span>
        </ul>
        <ul class="p_l10" style='padding-top:8px;'><span name="btnRetireInfoOk" id="btnRetireInfoOk" class="anchor"><img src='/_commonImg/btn_retire_open.png' alt=" 급여내역 불러오기"></span></ul>
        <ul class="c_white bold p_t10" style="padding-left:121px;">
          <span  class="p_l20" >근속년수 </span>&nbsp;&nbsp;<span class="box"><span name="disRtsvYear" id="disRtsvYear" class="c_black bold">0</span><span class="c_black">년</span></span>
          <span  class="p_l20" >근속일수&nbsp;&nbsp;</span><span class="box"><span name="disRtsvDays" id="disRtsvDays" class="c_black bold">0</span><span class="c_black">일</span></span>
          <span  class="p_l20" title="재직일수 중 제외기간 있는 경우 입력합니다.">제외일수&nbsp;&nbsp;</span><span class="box"><input name="frmRtsvDayo" id="frmRtsvDayo" class="c_black bold" style="width: 10px; text-align: right; border: none; background-color: yellow;" value="0" maxlength="9"><span class="c_black">일</span></span>
          <span  class="p_l20" ><button id="btnDayCalc" type="button">제외일수 적용</button></span>
        </ul>
      </div> -->
      <!-- 퇴직정보// -->


      <!-- 퇴직정보 -->
      <div class="retire_set_box" style="background-color:#606079;">
        <ul class="name">
          <span class="c_yellow" name="disRtsvName" id="disRtsvName">○○</span> <span name="disRtsvPstn" id="disRtsvPstn">○○</span> 퇴직계산
        </ul>
        <ul class="p_l10 c_white bold p_t10">
          구분&nbsp;&nbsp;
          <span style="display:inline-block; vertical-align:middle; margin-top:-3px">
            <select name="selRtsvType" id="selRtsvType" style="width:80px;">
              <option value="">선택</option>
              <option value="퇴직정산">퇴직정산</option>
              <option value="중간정산">중간정산</option>
            </select>
          </span>
          <span class="p_l10" >입사일&nbsp;&nbsp;<input name="frmRtsvSttD" id="frmRtsvSttD" type="text" value="" class="text frmCalendar" style="width:70px;" maxlength="10" autocomplete="off"> ~ <a title="마지막 근무일의 다음 날짜">퇴직일</a>&nbsp;&nbsp;<input name="frmRtsvEndD" id="frmRtsvEndD" type="text" value="" class="text frmCalendar" style="width:70px;" maxlength="10" title="마지막 근무일의 다음 날짜" autocomplete="off"></span>
          <span  class="p_l20" >근속년수&nbsp;&nbsp;</span><span class="box" style="width:80px;"><span name="disRtsvYear" id="disRtsvYear" class="c_black bold">0</span><span class="c_black">년</span></span>
          <span  class="p_l10" >근속일수&nbsp;&nbsp;</span><span class="box" style="width:80px;"><span name="disRtsvDays" id="disRtsvDays" class="c_black bold">0</span><span class="c_black">일</span></span>
          <span  class="p_l10" title="재직일수 중 제외기간 있는 경우 입력합니다.">제외일수&nbsp;&nbsp;</span><span class="box" style="width:80px;"><input name="frmRtsvDayo" id="frmRtsvDayo" class="c_black bold" style="width: 10px; text-align: right; border: none; background-color: yellow;" value="0" maxlength="9"><span class="c_black">일</span></span>
          <span  class="p_l7" ><button id="btnDayCalc" type="button" class="smallBtn"><i>±</i> 근속일수재계산</button>
        </ul>
        <!-- <ul class="p_l10" style='padding-top:8px;'><span name="btnRetireInfoOk" id="btnRetireInfoOk" class="anchor"><img src='/_commonImg/btn_retire_open.png' alt=" 급여내역 불러오기"></span></ul> -->
      </div>
      <!-- 퇴직정보// -->




      <!-- 급여내역 & 위로금.. 정보 -->
      <div class="retire_left">

        <!-- 급여내역 정보 -->
        <div class="height_45">
          <li class="f_left"><img src="../_commonImg/retire/retire_tit01.gif" width="65" height="19"  alt="급여내역" title="급여내역" vspace="10"></li>
          <li class="f_left p_t15">&nbsp;(사유발생일 이전 최근 3개월) 지급합계 금액</span>
          <li class="f_right p_t5"><a name="btnRetireInfoOk" id="btnRetireInfoOk" class="anchor"><img src='../_commonImg/retire/btn_retire_open.png' alt=" 급여내역 불러오기"></a></li>
        </div>
        <div id="table1">
          <ul style='border-top:2px solid #9f9f9f;'>
            <li class="w_261  c p_t10 retire_bg bold">산정기간</li>
            <li class="w_135  c p_t10 retire_bg bold">산정일수</li>
            <li class="w_151  c p_t10 retire_bg bold">급여총액</li>
          </ul>
          <ul>
            <li class="w_261  con3"><input name="frmRtsvSttD1" id="frmRtsvSttD1" type="text" value="" class="text c frmCalendar clsGRtsvSttD"  style="width:100px;" maxlength="10"> ~ <input name="frmRtsvEndD1" id="frmRtsvEndD1" type="text" value="" class="text c frmCalendar clsGRtsvEndD" style="width:100px;" maxlength="10"></li>
            <li class="w_135  con3 b_yellow"><span name="disRtpsDays1" id="disRtpsDays1" class="frmDays">0</span></li>
            <li class="w_151  con3 align_r"><input name="frmRtpsPays1" id="frmRtpsPays1" type="text" value="" class="text align_r frmGives" maxlength="10" style='width:90%'></li>
          </ul>
          <ul>
            <li class="w_261  con3"><input name="frmRtsvSttD2" id="frmRtsvSttD2" type="text" value="" class="text c frmCalendar clsGRtsvSttD"  style="width:100px;" maxlength="10"> ~ <input name="frmRtsvEndD2" id="frmRtsvEndD2" type="text" value="" class="text c frmCalendar clsGRtsvEndD" style="width:100px;" maxlength="10"></li>
            <li class="w_135  con3 b_yellow"><span name="disRtpsDays2" id="disRtpsDays2" class="frmDays">0</span></li>
            <li class="w_151  con3 align_r"><input name="frmRtpsPays2" id="frmRtpsPays2" type="text" value="" class="text align_r frmGives" maxlength="10" style='width:90%'></li>
          </ul>
          <ul>
            <li class="w_261  con3"><input name="frmRtsvSttD3" id="frmRtsvSttD3" type="text" value="" class="text c frmCalendar clsGRtsvSttD"  style="width:100px;" maxlength="10"> ~ <input name="frmRtsvEndD3" id="frmRtsvEndD3" type="text" value="" class="text c frmCalendar clsGRtsvEndD" style="width:100px;" maxlength="10"></li>
            <li class="w_135  con3 b_yellow"><span name="disRtpsDays3" id="disRtpsDays3" class="frmDays">0</span></li>
            <li class="w_151  con3 align_r p_r7"><input name="frmRtpsPays3" id="frmRtpsPays3" type="text" value="" class="text align_r frmGives" maxlength="10" style='width:90%'></li>
          </ul>
          <ul>
            <li class="w_261  con3"><input name="frmRtsvSttD4" id="frmRtsvSttD4" type="text" value="" class="text c frmCalendar clsGRtsvSttD"  style="width:100px;" maxlength="10"> ~ <input name="frmRtsvEndD4" id="frmRtsvEndD4" type="text" value="" class="text c frmCalendar clsGRtsvEndD" style="width:100px;" maxlength="10"></li>
            <li class="w_135  con3 b_yellow"><span name="disRtpsDays4" id="disRtpsDays4" class="frmDays">0</span></li>
            <li class="w_151  con3 align_r"><input name="frmRtpsPays4" id="frmRtpsPays4" type="text" value="" class="text align_r frmGives" maxlength="10" style='width:90%'></li>
          </ul>
          <ul class="b_yellow bold">
            <li class="w_261 c p_t10">총 합계</li>
            <li class="w_135 c p_t10"><span name="disRtpsDayT" id="disRtpsDayT">0</span></li>
            <li class="w_151 align_r p_t10"><span name="disRtpsPayT" id="disRtpsPayT">0</span>&nbsp;&nbsp;&nbsp;</li>
          </ul>
		 <ul style="display:inline-block; vertical-align:middle; height:22px; padding-top:5px; color:#cc6666;font-size:11px; border-left:0px;  border-bottom:0px;">단, 중간일자 계산일 경우 해당월의 지급합계 금액에서 일수로 나눈 값을 기본으로 표시</ul>


        <ul>

        <!-- 급여내역 정보// -->

        <!-- 위로금.. 정보 -->
        <div id="table1">
          <p class="caption_retire"></p>
          <ul style='border-left:0px;'>
            <li class="w_261 c p_t10 retire_bg bold" style=' border-left:0px; '>퇴직위로금</li>
            <li class="w_287 c p_t10 retire_bg bold">해고예고수당</span></li>
          </ul>
          <ul class='b_none'  style='border-left:0px;'>
            <li class="w_261 con3"><input name="frmCompensa" id="frmCompensa" type="text" value="0" class="text align_r clsAmount frmEtcMoney" maxlength="12"></li>
            <li class="w_287 con3"><input name="frmDismissl" id="frmDismissl" type="text" value="0" class="text align_r clsAmount frmEtcMoney" maxlength="12"></li>
          </ul>
        </div></ul> </div>
        <!-- 위로금.. 정보// -->

      </div>
      <!-- 급여내역 & 위로금.. 정보// -->

      <!-- 기타 과세소득 입력 -->
      <div class="retire_right">

        <div class="height_45">
          <li class="f_left"><img src="/_commonImg/retire/retire_tit02.gif" width="99" height="19"  alt="기타 과세소" title="기타 과세소" vspace="10"></li>
          <li class="f_left p_t15">&nbsp;(사유 발생일 이전 1년간분의 금액 입력)</span>
        </div>

        <div id="table1">
          <ul style='border-top:2px solid #9f9f9f;'>
            <li class="w_102 c p_t10 retire_bg bold">지급년월</li>
            <li class="w_210 c p_t10 retire_bg bold">지급항목</li>
            <li class="w_120 c p_t10 retire_bg bold">금액</li>
            <li class="w_133 c p_t10 retire_bg bold">3개월분</li>
          </ul>
          <ul>
            <li class="w_102 con3"><input name="frmGiveDate1" id="frmGiveDate1" type="text" value="" class="text frmGiveDates" style='width:90%' maxlength='6' title="ex) 202407"></li>
            <li class="w_210 con3"><input name="frmGiveItem1" id="frmGiveItem1" type="text" value="" class="text frmGiveItems" maxlength="16"></li>
            <li class="w_120 con3"><input name="frmGiveInco1" id="frmGiveInco1" type="text" value="" class="text align_r frmGiveInco" maxlength="12" style='width:90%'></li>
            <li class="w_133 con3 p_r7 align_r b_yellow"><span name="disGiveInco3M1" id="disGiveInco3M1" class="disGiveInco">0</span></li>
          </ul>
          <ul>
            <li class="w_102 con3"><input name="frmGiveDate2" id="frmGiveDate2" type="text" value="" class="text frmGiveDates" style='width:90%' maxlength='6' title="ex) 202407"></li>
            <li class="w_210 con3"><input name="frmGiveItem2" id="frmGiveItem2" type="text" value="" class="text frmGiveItems" maxlength="16"></li>
            <li class="w_120 con3"><input name="frmGiveInco2" id="frmGiveInco2" type="text" value="" class="text align_r frmGiveInco" maxlength="12" style='width:90%'></li>
            <li class="w_133 con3 p_r7 align_r b_yellow"><span name="disGiveInco3M2" id="disGiveInco3M2" class="disGiveInco">0</span></li>
          </ul>
          <ul>
            <li class="w_102 con3"><input name="frmGiveDate3" id="frmGiveDate3" type="text" value="" class="text frmGiveDates" style='width:90%' maxlength='6' title="ex) 202407"></li>
            <li class="w_210 con3"><input name="frmGiveItem3" id="frmGiveItem3" type="text" value="" class="text frmGiveItems" maxlength="16"></li>
            <li class="w_120 con3"><input name="frmGiveInco3" id="frmGiveInco3" type="text" value="" class="text align_r frmGiveInco" maxlength="12" style='width:90%'></li>
            <li class="w_133 con3 p_r7 align_r b_yellow"><span name="disGiveInco3M3" id="disGiveInco3M3" class="disGiveInco">0</span></li>
          </ul>
          <ul>
            <li class="w_102 con3"><input name="frmGiveDate4" id="frmGiveDate4" type="text" value="" class="text frmGiveDates" style='width:90%' maxlength='6' title="ex) 202407"></li>
            <li class="w_210 con3"><input name="frmGiveItem4" id="frmGiveItem4" type="text" value="" class="text frmGiveItems" maxlength="16"></li>
            <li class="w_120 con3"><input name="frmGiveInco4" id="frmGiveInco4" type="text" value="" class="text align_r frmGiveInco" maxlength="12" style='width:90%'></li>
            <li class="w_133 con3 p_r7 align_r b_yellow"><span name="disGiveInco3M4" id="disGiveInco3M4" class="disGiveInco">0</span></li>
          </ul>
          <ul>
            <li class="w_102 con3"><input name="frmGiveDate5" id="frmGiveDate5" type="text" value="" class="text frmGiveDates" style='width:90%' maxlength='6' title="ex) 202407"></li>
            <li class="w_210 con3"><input name="frmGiveItem5" id="frmGiveItem5" type="text" value="" class="text frmGiveItems" maxlength="16"></li>
            <li class="w_120 con3"><input name="frmGiveInco5" id="frmGiveInco5" type="text" value="" class="text align_r frmGiveInco" maxlength="12" style='width:90%'></li>
            <li class="w_133 con3 p_r7 align_r b_yellow"><span name="disGiveInco3M5" id="disGiveInco3M5" class="disGiveInco">0</span></li>
          </ul>
        <!--  <ul>
            <li class="w_102 con3"><input name="frmGiveDate6" id="frmGiveDate6" type="text" value="" class="text frmGiveDates" style='width:90%' maxlength='6' title="ex) 202407"></li>
            <li class="w_210 con3"><input name="frmGiveItem6" id="frmGiveItem6" type="text" value="" class="text frmGiveItems" maxlength="16"></li>
            <li class="w_120 con3"><input name="frmGiveInco6" id="frmGiveInco6" type="text" value="" class="text align_r frmGiveInco" maxlength="12" style='width:90%'></li>
            <li class="w_132 con3 p_r7 align_r b_yellow"><span name="disGiveInco3M6" id="disGiveInco3M6" class="disGiveInco">0</span></li>
          </ul>
          <ul>
            <li class="w_102 con3"><input name="frmGiveDate7" id="frmGiveDate7" type="text" value="" class="text frmGiveDates" style='width:90%' maxlength='6' title="ex) 202407"></li>
            <li class="w_210 con3"><input name="frmGiveItem7" id="frmGiveItem7" type="text" value="" class="text frmGiveItems" maxlength="16"></li>
            <li class="w_120 con3"><input name="frmGiveInco7" id="frmGiveInco7" type="text" value="" class="text align_r frmGiveInco" maxlength="12" style='width:90%'></li>
            <li class="w_132 con3 p_r7 align_r b_yellow"><span name="disGiveInco3M7" id="disGiveInco3M7" class="disGiveInco">0</span></li>
          </ul>
          <ul>
            <li class="w_102 con3"><input name="frmGiveDate8" id="frmGiveDate8" type="text" value="" class="text frmGiveDates" style='width:90%' maxlength='6' title="ex) 202407"></li>
            <li class="w_210 con3"><input name="frmGiveItem8" id="frmGiveItem8" type="text" value="" class="text frmGiveItems" maxlength="16"></li>
            <li class="w_120 con3"><input name="frmGiveInco8" id="frmGiveInco8" type="text" value="" class="text align_r frmGiveInco" maxlength="12" style='width:90%'></li>
            <li class="w_132 con3 p_r7 align_r b_yellow"><span name="disGiveInco3M8" id="disGiveInco3M8" class="disGiveInco">0</span></li>
          </ul>-->
          <!-- 기타 과세소득 입력// -->
          <ul style="display:inline-block; vertical-align:middle; height:23px; padding-top:5px; border-left:0px;  border-bottom:0px;"></ul>
          <!-- 비과세 퇴직급여 입력 -->
          <ul>
            <div id="table1">
              <p class="caption_retire"></p>
              <ul style="border-left:0px;" >
                <li class="c p_t10 retire_bg bold" style="width:33%;">비과세 퇴직급여</li>
                <li class="c p_t10 retire_bg bold"  style="width:33% ">기납부(또는 기과세이연) 세액</li>
                <li class="c p_t10 retire_bg bold"  style=" width:33.4% ">세액공제</li>
              </ul>
              <ul class="b_none" style="border-left:0px;">
                <li class="con3" style="width:33%; "><input name="frmRtrmTaxFree" id="frmRtrmTaxFree" type="text" value="0" class="text align_r clsAmount frmEtcMoney" maxlength="12"></li>
                <li class="con3" style="width:33%; "><input name="frmPostponeTax" id="frmPostponeTax" type="text" value="0" class="text align_r clsAmount frmEtcMoney" maxlength="12"></li>
                <li class="con3" style="width:33.4%;"><input name="frmTaxDedu" id="frmTaxDedu" type="text" value="0" class="text align_r clsAmount frmEtcMoney" maxlength="12"></li>
              </ul>
            </div>
          </ul>
        </div>
      </div>
      <!-- 비과세 퇴직급여 입력// -->

      <!-- 과세이연계좌 -->
      <div  style="display:inline-block; vertical-align:middle; height:150px; padding-left:20px; padding-top:10px; width:100%;">
        <ul>
          <li class="f_left"><img src="../_commonImg/retire_tit04.gif" width="90" height="19"  alt="과세이연계좌" title="과세이연계좌" vspace="10"></li>
          <li class="f_left p_t15">&nbsp; (해당 사항이 없는 경우 입력하지 않습니다.)</span>
        </ul>
        <div id="table1">
        <ul style='border-top:2px solid #9f9f9f;'>
          <li class="c p_t10 retire_bg bold" style='width:20%;'>퇴직연금사업자명</li>
          <li class="c p_t10 retire_bg bold" style='width:20%;'>사업자등록번호</li>
          <li class="c p_t10 retire_bg bold" style='width:19.5%;'>계좌번호</li>
          <li class="c p_t10 retire_bg bold" style='width:19.3%;'>입금(이체)일</li>
          <li class="c p_t10 retire_bg bold" style='width:19%;'>계좌입금금액</li>
        </ul>
        <ul><!-- Pp : Postpone, Dp : deposit -->
          <li class="con3"  style='width:20%;'><input name="frmPpCmpnName0" id="frmPpCmpnName0" type="text" value="" class="text clsGPp0" maxlength="20">&nbsp;&nbsp;&nbsp;</li>
          <li class="con3" style='width:20%;'><input name="frmPpCmpnUniq0" id="frmPpCmpnUniq0" type="text" value="" class="text clsGPp0" maxlength="20">&nbsp;&nbsp;&nbsp;</li>
          <li class="con3" style='width:19.5%;'><input name="frmPpCmpnBkNb0" id="frmPpCmpnBkNb0" type="text" value="" class="text clsGPp0" maxlength="20">&nbsp;&nbsp;&nbsp;</li>
          <li class="con3" style='width:19.3%;'><input name="frmPpDpDate0" id="frmPpDpDate0" type="text" value="" class="text c frmCalendar clsGPp0" maxlength="10">&nbsp;&nbsp;&nbsp;</li>
          <li class="con3" style='width:19%;'><input name="frmPpDpAmount0" id="frmPpDpAmount0" type="text" value="0" class="text align_r clsAmount frmEtcMoney clsGPp0" maxlength="12">&nbsp;&nbsp;&nbsp;</li>
        </ul>
        <ul>
          <li class="con3"  style='width:20%;'><input name="frmPpCmpnName1" id="frmPpCmpnName1" type="text" value="" class="text clsGPp1" maxlength="20">&nbsp;&nbsp;&nbsp;</li>
          <li class="con3" style='width:20%;'><input name="frmPpCmpnUniq1" id="frmPpCmpnUniq1" type="text" value="" class="text clsGPp1" maxlength="20">&nbsp;&nbsp;&nbsp;</li>
          <li class="con3" style='width:19.5%;'><input name="frmPpCmpnBkNb1" id="frmPpCmpnBkNb1" type="text" value="" class="text clsGPp1" maxlength="20">&nbsp;&nbsp;&nbsp;</li>
          <li class="con3" style='width:19.3%;'><input name="frmPpDpDate1" id="frmPpDpDate1" type="text" value="" class="text c frmCalendar clsGPp1" maxlength="10">&nbsp;&nbsp;&nbsp;</li>
          <li class="con3" style='width:19%;'><input name="frmPpDpAmount1" id="frmPpDpAmount1" type="text" value="0" class="text align_r clsAmount frmEtcMoney clsGPp1" maxlength="12">&nbsp;&nbsp;&nbsp;</li>
        </ul>
        <ul style="display:inline-block; vertical-align:middle; height:22px; padding-top:5px; color:#cc6666;font-size:11px; border-left:0px;  border-bottom:0px;">* 「소득세법」 제146조제2항에 따라 퇴직급여액을 연금계좌에 입금(이체)하여 퇴직소득세 징수를 하지 아니한 경우에 작성합니다.(거주자인 경우만 작성합니다)</ul>
      </div>
    </div>
 <!-- 과세이연계좌// -->

      <div style="display:inline-block; vertical-align:middle; height:70px; padding-top:50px; width:100%;">
        <p class="c" ><a href="#퇴직금 계산하기" onclick="$.fn.getSeverancePay();"><img src="../_commonImg/btn_retire.gif"   alt="퇴직금 계산하기" title="퇴직금 계산하기"></a></p>
      </div>

</form>

      <!-- 퇴직금 계산 -->
      <div class="e_total">

        <!-- 퇴직금 항목 정보 -->
        <div id="table1">
          <p class="caption_retire_green"></p>
<!-- ############################## 종전(~2015년) START -->
<!--

          <ul>
            <li class="w_170 c p_t10 retire_bg bold">3개월 총계</li>
            <li class="w_210  p_t10 con_r b_yellow "><span name="disSPR3MTotal_" id="disSPR3MTotal_" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
            <li class="w_170 c p_t10 retire_bg bold">평균임금</li>
            <li class="w_210  p_t10 con_r b_yellow "><span name="disSPR1MAverage_" id="disSPR1MAverage_" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
            <li class="w_180 c p_t10  retire_bg bold">퇴직소득</li>
            <li class="w_203  p_t10 con_r b_yellow"><span name="disSPRIncome_" id="disSPRIncome_" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
          </ul>
          <ul class="none height_05"></ul>
          <ul>
            <li class="w_170 c p_t10 retire_bg bold">소득공제</li>
            <li class="w_210  p_t10 con_r b_yellow "><span name="disSPRDeduction" id="disSPRDeduction" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
            <li class="w_170 c p_t10 retire_bg bold">근속년수별공제</li>
            <li class="w_210  p_t10 con_r b_yellow "><span name="disSPRDeduYear" id="disSPRDeduYear" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
            <li class="w_180 c p_t10  retire_bg bold">퇴직소득공제합계</li>
            <li class="w_203  p_t10 con_r b_yellow "><span name="disSPRIncomDeduTotal" id="disSPRIncomDeduTotal" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
          </ul>
          <ul class="none height_05"></ul>
          <ul>
            <li class="w_140 c p_t10 retire_bg bold">과세표준</li>
            <li class="w_143 c p_t10 retire_bg bold">연평균과세표준</li>
            <li class="w_143 c p_t10 retire_bg bold">평균산출세액</li>
            <li class="w_143 c p_t10 retire_bg bold">산출세액</li>

            <li class="w_143 c p_t10 retire_bg bold">퇴직소득세</li>
            <li class="w_143 c p_t10 retire_bg bold">지방소득세</li>
            <li class="w_143 c p_t10 retire_bg bold">기타공제</li>
            <li class="w_143 c p_t10 retire_bg bold">공제총액</li>
          </ul>
          <ul>
            <li class="w_140  p_t10 con_r b_yellow "><span name="disSPRTaxBase" id="disSPRTaxBase" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
            <li class="w_143  p_t10 con_r b_yellow "><span name="disSPRTaxBaseAverage" id="disSPRTaxBaseAverage" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
            <li class="w_143  p_t10 con_r b_yellow "><span name="disSPRTaxAmountAverage" id="disSPRTaxAmountAverage" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
            <li class="w_143  p_t10 con_r b_yellow "><span name="disSPRTaxAmount" id="disSPRTaxAmount" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>

            <li class="w_143  p_t10 con_r b_yellow ">-</li>
            <!-- <span name="disSPRIncomeTax" id="disSPRIncomeTax" class="SPResult">0</span> - ->
            <li class="w_143  p_t10 con_r b_yellow ">-</li>
            <!-- <span name="disSPRAreaTax" id="disSPRAreaTax" class="SPResult">0</span> - ->
            <li class="w_143  p_t10 con_r b_yellow ">-</li>
            <li class="w_143  p_t10 con_r b_yellow "><span name="disSPRDeduTotal" id="disSPRDeduTotal" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
          </ul>

          <ul><hr /><hr /><hr /></ul>

 -->
<!-- ############################## 종전(~2015년) END -->
          <ul>
            <li class="c p_t10 retire_bg bold" style='width:16%;'>3개월 총계</li>
            <li class="c p_t10 retire_bg bold" style='width:16%;'>1일 평균임금</li>
            <li class="c p_t10 retire_bg bold" style='width:16.4%;'>1일 통상임금</li>
            <li class="c p_t10  retire_bg bold" style='width:17%;'><span class='f_right'>퇴직소득 <A href="#퇴직소득 재계산"><img name="" id="" src='../_commonImg/btn_recalculation.png' width='50' height='16' alt='재계산' title='재계산' border='0' align='absmiddle' hspace='10' style="cursor:pointer;" onclick="$.fn.getSeveranceRePay();"></a> </span></li>
            <li class="c p_t10 retire_bg bold" style='width:17%;'>퇴직일이 속하는 과세연도</li>
            <!-- <li class="c p_t10 retire_bg bold" style='width:17%;'>2015.12.31 이전 산출세액</li> -->
            <li class="c p_t10  retire_bg bold" style='width:17%;'>산출세액</li><!-- 2016.01.01 이후  -->
          </ul>
          <ul>
            <li class="p_t10 con_r b_yellow" style='width:16%;'><span name="disSPR3MTotal" id="disSPR3MTotal" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
            <li class="p_t10 con_r b_yellow" style='width:16%;'><span name="disSPR1DAverage" id="disSPR1DAverage" class="SPResult">0</span><span name="disSPR1MAverage" id="disSPR1MAverage" class="SPResult" style="display:none">0</span>&nbsp;&nbsp;&nbsp;</li>
            <li class="p_t10 con_r b_yellow" style='width:16.4%;'><input type="text" name="frmSPR1MOrdinary" id="frmSPR1MOrdinary" value="0" maxlength="12" class="text align_r clsAmount frmEtcMoney"></li>
            <li class="p_t10 con_r b_yellow" style='width:17%;'><input name="frmSPRIncome" id="frmSPRIncome" type="text" value="0" class="text align_r clsAmount frmEtcMoney" maxlength="12"><span name="disSPRIncome" id="disSPRIncome" class="SPResult">0</span></li>
            <li class="disHide"><input name="frmSPRIncomeCmp" id="frmSPRIncomeCmp" type="text" value="0" maxlength="12" class="align_r"></li>
            <li class="p_t10 con_c b_yellow " style='width:17%;'><span name="disRtIfRtYY" id="disRtIfRtYY" class="SPResult"></span>&nbsp;&nbsp;&nbsp;</li>
            <!-- <li class="p_t10 con_r b_yellow " style='width:17%;'><span name="disRtIfTx15" id="disRtIfTx15" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li> -->
            <li class="p_t10 con_r b_yellow " style='width:17%;'><span name="disRtIfTx15" id="disRtIfTx15" class="SPResult" style="display:none">0</span><span name="disRtIfTx16" id="disRtIfTx16" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
          </ul>
         <ul>
            <li class="c p_t10 retire_bg bold" style='width:16%;'>퇴직소득세</li>
            <li class="c p_t10 retire_bg bold" style='width:16%;'>지방소득세</li>
            <li class="c p_t10  retire_bg bold" style='width:16.4%;'>이연 퇴직소득세</li>
            <li class="c p_t10 retire_bg bold" style='width:17%;'>이연 지방소득세</li>
            <li class="c p_t10 retire_bg bold" style='width:17%;'>농어촌특별세</li>
            <li class="c p_t10  retire_bg bold" style='width:17%;'>기타공제</li>
          </ul>
          <ul>
            <li class="p_t10 con_r b_yellow " style='width:16%;'><input name="frmSPRIncomeTax" id="frmSPRIncomeTax" type="text" value="0" class="text align_r clsAmount" maxlength="12">&nbsp;&nbsp;&nbsp;</li>
            <li class="p_t10 con_r b_yellow " style='width:16%;'><input name="frmSPRAreaTax" id="frmSPRAreaTax" type="text" value="0" class="text align_r clsAmount" maxlength="12">&nbsp;&nbsp;&nbsp;</li>
            <li class="p_t10 con_r b_yellow" style='width:16.4%;'><span name="disRtIfDpIc" id="disRtIfDpIc" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
            <li class="p_t10 con_r b_yellow " style='width:17%;'><span name="disRtIfDpAI" id="disRtIfDpAI" class="SPResult">0</span>&nbsp;&nbsp;&nbsp;</li>
            <li class="p_t10 con_r  " style='width:17%;'><input name="frmRtIfTxFF" id="frmRtIfTxFF" type="text" value="0" class="text align_r clsAmount frmEtcMoney SPResult" maxlength="12"></li>
            <li class="p_t10 con_r  " style='width:17%;'><input name="frmSPRDeduEtc" id="frmSPRDeduEtc" type="text" value="0" class="text align_r clsAmount SPResult" maxlength="12">&nbsp;&nbsp;&nbsp;</li>
          </ul>
          <!--펼침  <p class=" height_30 p_t10 f_right"><a href="#">  공제내역 접기&nbsp;&nbsp; <img src="/_commonImg/icon_deduct_m.gif" align="absmiddle"></a></p>
            <p class=" height_30 p_t10 f_right"><a href="#">  공제내역 자세히보기&nbsp;&nbsp; <img src="/_commonImg/icon_deduct_p.gif" align="absmiddle"></a></p>-->
        </div>
        <!-- 퇴직금 항목 정보// -->
        <p style="color: #cc6666; font-size:11px; padding-top:5px; clear:both">* 통상임금 입력 시 통상임금이 우선 적용되어 퇴직금이 계산됩니다.</p>


        <hr class="hr_0"></hr>

        <!-- 지급 정보 -->
        <div id="table1">
          <ul>
            <li class="c c_white bold b_black " style='width:20%'>과세대상 퇴직급여</li>
            <li class="c c_white bold b_black" style='width:20%'>차감원천징수세액</li>
            <li class="c c_white bold b_black" style='width:20%'>실수령액</li>
            <li class="c c_white bold b_black" style='width:24%'>지급방법</li>
            <li class="c c_white bold b_black" style='width:15.5%'>지급일</li>
          </ul>
          <ul>
            <li class="b_yellow bold con_r cell " style='width:20%'><span name="disRtIfRtPm" id="disRtIfRtPm" class="c_red font16 SPResult">0</span> 원 &nbsp;&nbsp;&nbsp;</li>
            <li class="b_yellow  con_r  cell" style='width:20%'><span name="disRtIfMnTx" id="disRtIfMnTx" class="c_red font16 SPResult">0</span> 원 &nbsp;&nbsp;&nbsp;</li>
            <li class="b_yellow   con_r cell" style='width:20%'><span name="disSPRRealTotal" id="disSPRRealTotal" class="c_red font16 SPResult">0</span> 원 &nbsp;&nbsp;&nbsp;</li>
            <li class=" c cell" style='width:24%'><input name="frmRtsvWays" id="frmRtsvWays" type="text" value="" class="text" maxlength="26"></li>
            <li class=" c cell" style='width:15.4%'><input name="frmRtsvPayD" id="frmRtsvPayD" type="text" value="" class="text frmCalendar c" maxlength="10"></li>
          </ul>
        </div>
        <!-- 지급 정보// -->

        <hr class="hr_0"></hr>

        <!-- 하단버튼(저장/취소) -->
        <div>
          <p class="c p_t20">
            <input name="btnSaveOk" id="btnSaveOk" type="image" value="저장하기" src="../_commonImg/btn_img_save_s.png"  alt="저장하기"  title="저장하기">
            <!--펼침  <input type="image" value="수정하기" src="/_commonImg/btn_img_modify_s.png"  width="80px" height="80px" alt="수정하기"  title="수정하기">-->
            <input name="btnSaveCancel" id="btnSaveCancel" type="image" value="취소하기" src="../_commonImg/btn_img_cancle_s.png"   hspace="15" alt="취소하기" title="취소하기">
          </p>
        </div>
        <!-- 하단버튼(저장/취소)// -->

      </div>
      <!-- 퇴직금 계산// -->

      <hr class="hr_30"></hr>

    </div>

  </div>
  <!-- main_container// -->

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

