<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="ko">
  <head>
  <title>급여관리 페이존 - 퇴직관리 > 퇴직급여명세서</title>
   <meta charset="euc-kr" />
  <!--<meta http-equiv="refresh" content="7;URL=http://payzon.co.kr" />-->
  <meta name="keywords" content="payzon, 인사관리, 급여관리" />
  <meta name="description" content="급여관리 페이존 - 퇴직관리 > 퇴직급여명세서"  />

  <meta name="naver-site-verification" content="navercdc5a22c7fcc5c46acb3324a06bc9f11"/>
  <meta property="og:title" content="페이존 (급여관리 자동화)"/>
  <meta property="og:type" content="website"/>
  <!-- <meta property="og:site_name" content="페이존 (급여관리 자동화)" /> -->
  <meta property="og:url" content="http://www.payzon.co.kr/pzRetirement/retirePayslip.php?setRtsvYyyy=2017" />
  <meta property="og:description" content="급여관리 페이존 - 퇴직관리 > 퇴직급여명세서" />
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
    setChkMd5 = 'ab7b9e921176b81505dac66818b0744d';
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
<style>
body { margin:0;}
.disContentList{
  overflow:auto; -webkit-border-radius:3px; -moz-border-radius:3px; border-radius:3px;width:495px; height:660px; /*height:331px; */
}
</style>

<script type="text/javascript">
<!--
  // 회사 로고/도장 유무
  var setIsLogoImg = "true";
  var setIsStampImg = "true";

  $(function() {
    // UI
    $("select").msDropDown();
    ////UI.목록스크롤
    $(".disContentList").mCustomScrollbar({
      scrollButtons:{
        enable:true
      },
      theme:"dark"
    });

    //E.체크박스 선택/해제
    $('body').addClass('has-js');
    $('.label_check, .label_radio').click(function(){
      $.setupLabel();
    });
    $.setupLabel();

    $("#frmOrdinaryWage, .clsPrintDate").numeric({
      allowMinus   : false,
      allowThouSep : true
    });
    $("#frmOrdinaryWage, .clsPrintDate").css("ime-mode", "disabled"); //한글사용 비활성화
    $("#frmOrdinaryWage").on("keyup", function(){
      var rtnNumber = $.setComma($(this).val());
      $(this).val(rtnNumber);
      return;
    });

    // 지급연도 변경 시
    $("#selRtsvYyyy").change(function(){
      if($("#selRtsvYyyy").val()){
        location.replace("/pzRetirement/retirePayslip.php?setRtsvYyyy=" + $("#selRtsvYyyy").val());
      }
      return;
    });


    //E.F. 사원 전체 선택/제거
    $("#chkBoxGrpPayslipInfo").click(function(){
// $('input:checked'); // checked
// $('input:not(:checked)'); //unchecked
      if($(this).is(":checked") == true){
        $("input[name=grpPayslipInfoId]").attr("checked", true);
        $("input[name=grpPayslipInfoId]").parent().addClass("c_on");
      }else{
        $("input[name=grpPayslipInfoId]").attr("checked", false);
        $("input[name=grpPayslipInfoId]").parent().removeClass("c_on");
      }
      return;
    });

    //E.F. 체크 박스 선택/비선택 관계처리
    $("#tableRetireData input:checkbox").click(function(){
      var checkboxCount = $("#tableRetireData input:checkbox").length;
      var checkedCount = $("#tableRetireData input:checkbox:checked").length;
      if(checkedCount == 0) $("#chkBoxGrpPayslipInfo").attr("checked", false);
      else if(checkedCount == (checkboxCount) && $("#chkBoxGrpPayslipInfo").is(":checked") == false)
        $("#chkBoxGrpPayslipInfo").attr("checked", true);
      else if(checkedCount != checkboxCount) $("#chkBoxGrpPayslipInfo").attr("checked", false);
      return;
    });

    // E.Print
    $("#btnGetPrint").click(function(){
      // 선택된 ID 구함
      var selId = $("#tableRetireData ul[class*=sell_bg]").attr("id");
      if(selId == "" || typeof(selId) == "undefined"){
        alert("선택된 사원이 없습니다.   ");
        $("#ch1").focus();
        return false;
      }

      $.fn.layerProcCreate("PDF", "printRetirePayInfoPdf");
      return;
    });

    // E.F. Excel 다운
    $( "#btnGetExcel" ).click(function(){
      // 선택된 ID 구함
      var selId = $("#tableRetireData ul[class*=sell_bg]").attr("id");
      if(selId == "" || typeof(selId) == "undefined"){
        alert("선택된 사원이 없습니다.   ");
        $("#ch1").focus();
        return false;
      }

      var setUrl = "/pzRetirement/php/inRetirePayslipProcExcel.php";
      setUrl += "?selectedId=" + selId;
      setUrl += "&setEmplIndx=" + $("#frmEmplIndx").val();
      setUrl += "&setRtsvYyyy=" + $("#selRtsvYyyy").val();
      setUrl += "&setPrintDate=" + encodeURI($("#frmPrintYYYY").val() + "년  " + $("#frmPrintMM").val() + "월  " + $("#frmPrintDD").val() + "일");
      //setUrl += "&setOrdinaryWage=" + $("#frmOrdinaryWage").val();
      setUrl += "&setOrdinaryWage=" + $("#frmOrdinaryWage").text();
      setUrl += "&set1DAverage=" + $("#disSPR1DAverage").text(); // 평균임금 2021-12-14 유기원
      setUrl += "&setChkMd5=" + setChkMd5;
      setUrl += "&setIsUsedLogoImg=" + $("#frmIsUsedLogoImg").val();
      setUrl += "&setIsUsedStampImg=" + $("#frmIsUsedStampImg").val();
//      alert(setUrl + " :: "); return;
      $("#iFrmMulti").attr("src", setUrl);
//      location.replace(setUrl);
      return ;
    });

    //Event.검색 초기화/전체보기
    $( "#btnSrchInit" ).click(function(){
      var urlParam = "?setRtsvYyyy=" + $("#selRtsvYyyy").val();
      var url = "/pzRetirement/retirePayslip.php"
      url = (urlParam)? url + urlParam: url;
      location.replace(url);
      return ;
    });


    // 로고/도장이미지 X 버튼 클릭
    $("#btnLogoDisView, #btnStampDisView").click(function(){
      var thisId = $(this).attr("id");
      if(thisId == "btnLogoDisView"){
        // 로고 사용 유/(무) 기록
        $("#frmIsUsedLogoImg").val("false");
        $("#disLogoImgTrue").addClass("disHide");
        $("#disLogoImgFalse").removeClass("disHide");
        // 2014-11-03 로고이미지 노출 유무설정
        $.fn.setFormImgView("logo", "false");
      }else if(thisId == "btnStampDisView"){
        // 도장 사용 유/(무) 기록
        $("#frmIsUsedStampImg").val("false");
        $("#disStampImgTrue").addClass("disHide");
        $("#disStampImgFalse").removeClass("disHide");
        // 2014-11-03 도장이미지 노출 유무설정
        $.fn.setFormImgView("stamp", "false");
      }else return;
      return;
    });

    // 로고/도장 빈 이미지 클릭
    $("#btnLogoView, #btnStampView").click(function(){
      var thisId = $(this).attr("id");
      if(thisId == "btnLogoView"){
        if(setIsLogoImg == "true"){
          // 로고 사용 (유)/무 기록
          $("#frmIsUsedLogoImg").val("true");

          $("#disLogoImgTrue").removeClass("disHide");
          $("#disLogoImgFalse").addClass("disHide");
          // 2014-11-03 로고이미지 노출 유무설정
          $.fn.setFormImgView("logo", "true");
        }else if(setIsLogoImg == "false"){
          $(".disImgPosText").text("로고");
          $.fn.dialogMsg("popImgNoMsg");
        }else return;
      }else if(thisId == "btnStampView"){
        if(setIsStampImg == "true"){
          // 도장 사용 (유)/무 기록
          $("#frmIsUsedStampImg").val("true");

          $("#disStampImgTrue").removeClass("disHide");
          $("#disStampImgFalse").addClass("disHide");
          // 2014-11-03 도장이미지 노출 유무설정
          $.fn.setFormImgView("stamp", "true");
        }else if(setIsLogoImg == "false"){
          $(".disImgPosText").text("도장");
          $.fn.dialogMsg("popImgNoMsg");
        }else return;

      }else return;
      return;
    });

    // 사용자 정보입력 이동
    $("#btnMembersInfoPage").click(function(){
      location.href = "/pzConfig/membersInfo.php";
      return;
    });

    // 정보수정 다음에 하기: 닫기
    $("#btnImgInfoClose").click(function(){
      $.fn.dialogClose('popImgNoMsg');
      return;
    });


    // SMS 일괄 발송
    $("#btnEnBlocSMSSend").click(function(){
      alert("btnEnBlocSMSSend: 문자 일괄발송");
      return;
    });

    // Mail 일괄 발송
    $("#btnEnBlocMailSend").click(function(){
//      alert("btnEnBlocMailSend: 메일 일괄발송");
      // 선택된 ID 구함
      var arrPaymSaveIndx = "";
      $("#tableRetireData ul input:checkbox:checked").each(function(){
        arrPaymSaveIndx += $(this).attr("id").replace("grpPayslipInfoId", "") + "|";
      });

      var selIdCount = $("#tableRetireData ul[class*=sell_bg]").length;
      if(selIdCount == 0){
      }else{
        var selId = $("#tableRetireData ul[class*=sell_bg]").attr("id");
        selId = selId.replace("ulRetireIndx", "") + "|";
        arrPaymSaveIndx += selId;
      }
      if (arrPaymSaveIndx == ""){
        alert("선택된 퇴직급여명세서가 없습니다.   ");  return;
      }

      $("#frmSelectedId").val(arrPaymSaveIndx);
      $.fn.layerProcCreate("Email", "EmailPayslipAll");
      return;
    });


    // 2014-12-16 추가
    // 사원목록 마우스오버: 색상변경
    $("#tableRetireData ul").hover(
      function(){  // over
        $("#tableRetireData ul").removeClass("cssOverColorSet");
        if($(this).hasClass("sell_bg") !== true) $(this).addClass("cssOverColorSet");
      },
      function(){  // out
        $("#tableRetireData ul").removeClass("cssOverColorSet");
      }
    );

    // 2016-06-24 명세서 대표자명 노출 유무 설정
    $("#chkCmpnCeoV").click(function(){
      var setCmpnCeoV = 1;
      if($(this).is(":checked") === true) {
        setCmpnCeoV = 1;
        $("#disCmpnCeoA").show();
      }
      else {
        setCmpnCeoV = 0;
        $("#disCmpnCeoA").hide();
      }

      $.ajax({
        type : "POST",
        url : "/pzConfig/php/inCmpnCeoViewSetProcAjax.php",
        dataType : "json",
        // 서버로 전송할 데이터
        data : {
          "setCmpnCeoV": setCmpnCeoV,
          "setChkMd5": setChkMd5
        },
        success:function(rtnAVal){
          if (rtnAVal['rtnFlag'] == '1'){
          }else{
            alert("오류 메시지(MSG[" + rtnAVal['rtnFlag'] + "])\n" + rtnAVal['rtnVal']);
          }
        },
        error:function(request, error){
          alert("통신오류가 발생하였습니다. 재시도 해주세요." + error);
        }
      });
    });

  });
  /* End Function */
  /* End Function */

  // 퇴직급여 목록.사원선택
  $.fn.setRetireListSelected = function(obj, emplIndx){
    // 2014-12-16 추가: 요청사항
    $(obj).removeClass("cssOverColorSet");
    // 퇴직급여 폼 초기화
//    $.fn.frmRetireInit("Init");
    $('#tableRetireData ul').each(function(){
      if($(this).hasClass("sell_bg") == true){
        $(this).toggleClass('sell_bg');
        $(this).find("li").toggleClass("c_white");
      }
    });
    $(obj).toggleClass('sell_bg');
//    alert("aa: " + $(obj).find("span").length);
    $(obj).find("li").toggleClass("c_white");
//    alert($(obj).attr("id") + " :: " + emplIndx);

    $.fn.getRetirePayInfoSelected($(obj).attr("id"), emplIndx);

    return;
  };


  // 퇴직급여 정보 검색 후 퇴직급여명세서에 설정함.
  $.fn.setRetirePayInfoSelected = function(result){
    var jsonRetirePayData = eval("(" + result + ")");

    $(".disRetireInfo").text("");
//    $(".clsPrintDate").val("");
    //$("#frmOrdinaryWage").val("");

    $.each(jsonRetirePayData.employeeWorkingInfo, function(key, value){
      var obj = value;
      $("#disEmplName").text(obj.setEmplName);
      $("#disEmplNameSign").text(obj.setEmplName);
      $("#disEmplPstn").text(obj.setPstnName);
      $("#disEmplDprt").text(obj.setDprtName);
      $("#disEmplJnDt").text(obj.setEmplJnDt);
      $("#disEmplQtDt").text(obj.setEmplQtDt);
      $("#disEmplWkDy").text($.setComma(obj.setEmplWkDy)+"일");
//      $("#frmMode").val(obj.setMode);
    });


    // 이미 입력된 퇴직정보가 있으면(지난 급여내역 저장(2))
    let dayT = 0;
    if(typeof(jsonRetirePayData.getRtrmPaysInfo) != "undefined"){
      $.each(jsonRetirePayData.getRtrmPaysInfo, function(key, value){
        var obj = value;
        var targetNum = key + 1;
        $("#disRtsvSttD" + targetNum).text(obj.setRtpsSttD);
        $("#disRtsvEndD" + targetNum).text(obj.setRtpsEndD);
        $("#disRtpsDays" + targetNum).text(obj.setRtpsDays);
        $("#disRtpsPays" + targetNum).text($.setComma(Number(obj.setRtpsPays)));

        $("#disRtpsDayT").text(obj.setRtpsDayT);
        $("#disRtpsPayT").text($.setComma(Number(obj.setRtpsPayT)));

        // 1일 평균임금 2021-12-14 유기원
        dayT = obj.setRtpsDayT;
        // console.log(obj.setRtpsPayT,obj.setRtpsDayT, obj.setRtifTtl3);
        // set1DAverage = parseInt(obj.setRtpsPayT/obj.setRtpsDayT);
        // console.log(set1DAverage);
        // $("#disSPR1DAverage").text($.setComma(Number(set1DAverage)));
      });
    }

    // 이미 입력된 퇴직정보가 있으면(추가지급(3))
    if(typeof(jsonRetirePayData.getRtrmGiveInfo) != "undefined"){
      $.each(jsonRetirePayData.getRtrmGiveInfo, function(key, value){
        var obj = value;
        if(obj.setRtgvType == "퇴직위로금") $("#disCompensa").text($.setComma(Number(obj.setRtgvAmnt)));
        else if(obj.setRtgvType == "해고예고수당") $("#disDismissl").text($.setComma(Number(obj.setRtgvAmnt)));
      });
    }

    // 이미 입력된 퇴직정보가 있으면(기타 과세소득(4))
    if(typeof(jsonRetirePayData.getRtrmInCmInfo) != "undefined"){
      $.each(jsonRetirePayData.getRtrmInCmInfo, function(key, value){
        var obj = value;
        var targetNum = key + 1;
//console.log(key + " :: " + obj.setRticIndx + " :: " + obj.setRticItem + " :: " + obj.setRticAmnt + " :: " + obj.setRticAm3M);

        $("#disGiveItem" + targetNum).text(obj.setRticItem);
        $("#disGiveInco" + targetNum).text($.setComma(Number(obj.setRticAmnt)));
        $("#disGiveInco3M" + targetNum).text($.setComma(Number(obj.setRticAm3M)));

      });
    }

    // 이미 입력된 퇴직정보가 있으면(퇴직금 계산 정보(5))
    if(typeof(jsonRetirePayData.getRtrmInfoInfo) != "undefined"){

      $.each(jsonRetirePayData.getRtrmInfoInfo, function(key, value){
        var obj = value;
//        alert(key + " :: " + obj.setRtifTtl3 + " :: " + obj.setRtifAver + " :: " + obj.setRtifInco );

        $("#disSPR3MTotal").text($.setComma(Number(obj.setRtifTtl3)));
        $("#disSPR1MAverage").text($.setComma(Number(obj.setRtifAver))); // 1개월 평균임금
        $("#disSPRIncome").text($.setComma(Number(obj.setRtifInco)));
        $("#disSPRDeduction").text($.setComma(Number(obj.setRtifDedu)));
        $("#disSPRDeduYear").text($.setComma(Number(obj.setRtifDedL)));
        $("#disSPRIncomDeduTotal").text($.setComma(Number(obj.setRtifDedR)));

        $("#disSPRTaxBase").text($.setComma(Number(obj.setRtifTxBs)));
        $("#disSPRTaxBaseAverage").text($.setComma(Number(obj.setRtifTxYA)));
        $("#disSPRTaxAmountAverage").text($.setComma(Number(obj.setRtifTxAA)));
        $("#disSPRTaxAmount").text($.setComma(Number(obj.setRtifTxAm)));
        $("#disSPRIncomeTax").text($.setComma(Number(obj.setRtifRtic)));
        $("#disSPRAreaTax").text($.setComma(Number(obj.setRtifAric)));
        $("#disSPRDeduEtc").text($.setComma(Number(obj.setRtifDedE)));

        if (obj.setRtifRtYY != "") {
          $("#disSPRDeduTotal").text($.setComma(Number(obj.setRtifMnTx)));  // 2016-03-22 2016
        }
        else {
          $("#disSPRDeduTotal").text($.setComma(Number(obj.setRtifDedT)))
        }

        $("#disSPRRealTotal").text($.setComma(Number(obj.setRtifRTAm)));
        $("#frmRtsvWays").val(obj.setRtifWays);
        $("#disRtsvPayD").val(obj.setRtifDate);
        //$("#frmOrdinaryWage").val($.setComma(Number(obj.setRtifOrdi))); // 통상임금
        $("#frmOrdinaryWage").text($.setComma(Number(obj.setRtifOrdi))); // 통상임금


        // 1일 평균임금 2021-12-14 유기원
        //console.log(obj.setRtpsPayT,obj.setRtpsDayT, obj.setRtifTtl3);
        set1DAverage = parseInt(obj.setRtifTtl3/dayT);
        $("#disSPR1DAverage").text($.setComma(Number(set1DAverage)));

      });
    }


    return;
  };

  // C.F. 검색어 체크
  $.fn.frmSrchCheck = function(){
    var setListItemCount = $("#tableRetireData UL").length;
    if(setListItemCount < 11){
//      alert("검색하기에는 목록의 사원 수가 적습니다.   \n사원 수: [" + setListItemCount + "]");
//      return false;
    }
    if($("#srchKwrd").val() == "검색어 입력" || $.trim($("#srchKwrd").val()).length < 2){
      alert("검색어를 확인해 주세요.");
      $("#srchKwrd").select();
      return false;
    }
    return;
  }

  // SMS 발송
  $.fn.smsPayslip = function(pRetireSaveNo){

    // 2019-10-02 jjlee SMS 종료 => 알림톡으로 대체
    /*
    var setTlSt = "-1";
    if (setTlSt != "Y") {
      $.fn.commonMsg('sms-end');
      return false;
    }
    */

    if ($.isNumeric(pRetireSaveNo) === true && pRetireSaveNo > 0){
      $('#frmSelectedId').val( pRetireSaveNo );
      $.fn.layerProcCreate("SMS", "SMSPayslip_kakao");
    }else{
      alert("알림톡 발송 데이터가 없습니다.   ");
    }
    return;
  };

  // 이메일 발송
  $.fn.emailPayslip = function(pPaymSaveNo){
    if ($.isNumeric(pPaymSaveNo) === true && pPaymSaveNo > 0){
      $('#frmSelectedId').val( pPaymSaveNo );
      $.fn.layerProcCreate("Email", "EmailPayslip");
    }else{
      alert("발송 데이터가 없습니다.   ");
    }
    return;
  };

  // 2019-11-08 웹명세서 내 이메일 보내기 버튼
  $.fn.emailPayslipSend = function(){
    // 선택된 ID 구함
    var selId = $("#tableRetireData ul[class*=sell_bg]").attr("id");
    if(selId == "" || typeof(selId) == "undefined"){
      alert("선택된 사원이 없습니다.   ");
      $("#ch1").focus();
      return false;
    }
    var pPaymSaveNo = selId.replace("ulRetireIndx", "");
    $.fn.emailPayslip(pPaymSaveNo);
  };

  // 서브 레이어 창
  $.fn.dialogMsg = function(divId){
    if($("#" + divId).length > 0){
      var setWidth = 430, setHeight = 258;
      if(divId == "pop_common"){
        setWidth = 430; setHeight = 258;
      }else if(divId == "popImgNoMsg"){
        setWidth = 450; setHeight = 258;
      }
      $("#" + divId).dialog({
        width: setWidth,
        height: setHeight,
        modal: true
      });
    }
    return;
  }
  $.fn.dialogClose = function(divId){
    if($("#" + divId).length > 0){
      $("#" + divId).dialog('close');
    }
    return;
  }


  // 로고, 도장 노출 유무 설정
  $.fn.setFormImgView = function(setImgType, setViewFlag){
    var setCtIsPstn = "0503";  // 퇴직급여명세서
//    alert(setCtIsPstn + " :: " + setImgType + " :: " + setViewFlag);
    $.ajax({
      type : "POST",
      url : "/pzPersonnel/php/inCertificateSetImgViewProc.php",
      dataType : "json",
      // 서버로 전송할 데이터
      data : {
        "setCtIsPstn": setCtIsPstn,
        "setImgType": setImgType,
        "setViewFlag": setViewFlag,
        "setChkMd5": setChkMd5
      },
      success:function(rtnArrValue){
        if (rtnArrValue['rtnFlag'] == '1'){
//          alert('이미지설정: ' + rtnArrValue['rtnFlag']);
        }else{
          alert("오류 메시지(:MSG[" + rtnArrValue['rtnFlag'] + "] :: " + rtnArrValue['rtnValue'] + ":)");
        }
      },
      error:function(request, error){
        alert("통신오류가 발생하였습니다. 재시도 해주세요." + error);
      }
    });

    return;
  };
//-->
</script>

<section>

  <!-- main_container -->
  <div id="main_container">

    <!-- 타이틀 이미지 -->
    <div class='sub_titimg'>
      <ul>
        <li class='tit_img p_r7'><img src='../_commonImg/retire/payslip_tit_img.gif' width='72' height='68' ></li>
        <li class='p_t10'><img src='../_commonImg/retire/retirepayslip_tit_01.gif'  width='201' height='25'  alt='퇴직급여명세서' title='퇴직급여명세서'></li>
        <li  class='p_t5'>퇴직사원을 선택하면 퇴직급여명세서가 자동으로 작성됩니다. 퇴직급여명세서는 이메일로 전송이 가능합니다.</li>
      </ul>
     <!-- <span class="calculator anchor" onclick="$.layerCreateCommon('manualView','F03');"><img src='https://img.payzon.co.kr/_commonImg/icon_zoom.png'  width='27' height='27' alt='매뉴얼' title='매뉴얼'></span> <span class="calculator anchor" onclick="$.fn.CallCalc();"><img src='https://img.payzon.co.kr/_commonImg/icon_calculator.gif'  width='22' height='26' alt='계산기' title='계산기'></span>-->
    </div>
    <!-- 타이틀 이미지// -->

    <hr>

    <!-- 급여 입력 -->
    <div class='main_titimg'>

      <div class='e_total' style="overflow: visible;">

        <div class='border_paysearch' STYLE='width:180px;'>
          <ul class='p_t5 bold w_85 c c_white bold '>* 지급연도</ul>
          <ul class='p_t1 '>
            <select name="selRtsvYyyy" id="selRtsvYyyy" >
              <option value="">선택</option>
	<option value="2024" >2024 년</option>
	<option value="2023" >2023 년</option>
	<option value="2022" >2022 년</option>
	<option value="2021" >2021 년</option>
	<option value="2020" >2020 년</option>
	<option value="2019" >2019 년</option>
	<option value="2018" >2018 년</option>
	<option value="2017" SELECTED>2017 년</option>
	<option value="2016" >2016 년</option>
            </select>
          </ul>
        </div>
        <div class='border_paysearch_2' STYLE='height:27px; width:930px'></div>

      </div>

      <hr class='hr_0'></hr>

      <!-- 급여 리스트-->
      <div class='cert_list'>
        <div class='dil_search_box' style='width:480px;'>
<form name="frmSrchEmployee" id="frmSrchEmployee" onSubmit="return $.fn.frmSrchCheck();">
<input type="hidden" name="setRtsvYyyy" id="setRtsvYyyy" value="2017">
<input type="hidden" name="frmSelectedId" id="frmSelectedId" value="">
<input type="hidden" name="frmEmplIndx" id="frmEmplIndx" value="">
          <ul ><input name="srchKwrd" id="srchKwrd" type='text' value="검색어 입력" class='border w_150 height_22 p_l5'></ul><ul class='p_t1'><input type='image' value='사원검색' src='../_commonImg/retire/btn_s_search.png'  width='23px' height='23px' alt='검색어 입력' title='검색어 입력' class='p_l5 '></ul>
          <ul  class='p_t1'><img name="btnSrchInit" id="btnSrchInit" value='전체보기' src='../_commonImg/retire/btn_list_all01.png'  width='74px' height='23px' alt='전체보기' title='전체보기' class='p_l5' style="cursor:pointer;"></ul>
</form>
      <ul style='float:right;'>
      <!-- <span name="btnEnBlocSMSSend" id="btnEnBlocSMSSend" class="anchor"><img src='https://img.payzon.co.kr/_commonImg/btn_sms_send.png'  width='95px' height='23px' alt='sms 발송' title='sms 발송' ></span> --><span class='p_l5'><span name="btnEnBlocMailSend" id="btnEnBlocMailSend" class="anchor"><img src='https://img.payzon.co.kr/_commonImg/btn_email_send.png'  width='109px' height='23px' alt='email발송' title='email 발송' ></span></span>
      </ul>
        </div>

        <ul>
          <div class='cert_w_list'>
            <div id='table_dil'  style='width:481px;'>
              <p class='caption'></p>
              <ul>
                <li  class='w_24 tit'><label class="label_check" for="chkBoxGrpPayslipInfo"><input id="chkBoxGrpPayslipInfo" type="checkbox"></label></li>
                <li class='w_92 tit'>구분</li>
                <li class='w_88 tit'>성명</li>
                <li class='w_100 tit'>실지급액</li>
                <li class='w_85 tit'>알림톡</li>
                <li class='w_85 tit'>E-mail</li>
<!--
                <li class='w_100 tit'>구분</li><!-- <a href='#' class='c_linkblue'><u>구분</u></a> -- >
                <li class='w_100 tit'>성명</li><!-- <a href='#' class='c_linkblue'><u>성명</u></a> -- >
                <li class='w_151 tit'>실지급액</li>
 <!--               <li class='w_85 tit'>SMS</li>-- >
                <li class='w_100 tit'>E-mail</li>
-->
              </ul>
            </div>

            <div id="disContentList" class="disContentList"><!-- cert_w_list_scroll -->
              <div id="tableRetireData" style="cursor:pointer; width:481px;">
                <ul onclick="$.fn.setRetireListSelected(this, '1221518');" id="ulRetireIndx186466">
                  <li class='w_24 c'><label class="label_check" for="grpPayslipInfoId186466"><input type="checkbox" name="grpPayslipInfoId" id="grpPayslipInfoId186466" value=""></label></li>
                  <li class='w_92 c'>정규직</li>
                  <li class='w_88 c'>김동진</li>
                  <li  class='w_100 align_r bold'>36,609,291&nbsp;&nbsp;&nbsp;</li>
                  <li  class='w_85 c '>

                  <span name="btnSMSSend186466" id="btnSMSSend186466" class="anchor" onclick="$.fn.smsPayslip(186466);"><img src='https://img.payzon.co.kr/_commonImg/btn_s_sms.png'  width='47px' height='19px' alt='sms 발송' title='sms 발송' ></span>  </li>
              </li>
              <li class='w_85 c'><span class="table1 anchor" onclick="$.fn.emailPayslip(186466);"><img src='https://img.payzon.co.kr/_commonImg/btn_s_email.png'  width='59px' height='19px' alt='이메일 발송' title='이메일 발송' /></span></li>
            </ul>

              </div>
            </div>
          </div>

          <hr class='hr_5'></hr>


        </ul>

      </div>

      <!-- 급여입력 -->
      <div class='cert_set'>

        <ul class='top-25 c form'>

        <!-- absolute / relative -->
<input type="hidden" name="frmIsUsedLogoImg" id="frmIsUsedLogoImg" value="false">
<input type="hidden" name="frmIsUsedStampImg" id="frmIsUsedStampImg" value="false">
          <!--퇴직급여증명서-->          <!--퇴직급여증명서-->          <!--퇴직급여증명서-->
          <table border="0" cellpadding="0" cellspacing="0" id="severancePay" summary="퇴직금명세서" style='width:510px;border-collapse:inherit;'>
          <thead>
            <tr>
              <th colspan="6" class="serPayTit" style="height:62px;">
                <div style='position:relative;'>
                  <div style="position:absolute;top:-12px;left:13px;height:52px;display:table;">
                    <span style="display:table-cell; text-align:center; vertical-align:middle;">
                      <div id="disLogoImgTrue" class="disHide">
                        <img id="disLogoDefaultImg" src="/_logoRequest/1666/Thumb/166582_TL.jpg" alt="(주)예스폼_로고" title="(주)예스폼_로고" height='52px' style="width:80px;"></img>
                        <span id="btnLogoDisView" class="anchor">
                          <img src="https://img.payzon.co.kr/_commonImg/logo_close.png" style="vertical-align:top;">
                        </span>
                      </div>

                      <div id="disLogoImgFalse" class="">
                        <span id="btnLogoView" class="anchor">
                          <img id="disLogoDefaultImg" src="https://img.payzon.co.kr/_commonImg/cert_logo.gif"  alt="회사 로고를 넣어 주세요." title="회사 로고를 넣어 주세요." style="width:107px;height:52px;"></img>
                        </span>
                      </div>
                    </span>
                  </div>
                </div>퇴직급여명세서</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td colspan="6">&nbsp;</td>
            </tr>
            <!-- 사원정보 -->
            <tr>
              <th class="spSubTit01" style='width:88px;'>사원정보</th>
              <td colspan="5">&nbsp;</td>
            </tr>
        <tr>
              <td colspan="6" align='left' class="spTd01_l">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                 <tr>
          <td class="spTd01_1 b_gray" style='width:100px' >성명</td>
          <td colspan="2" class="spTd02" style='width:110px' ><span id="disEmplName" class="disRetireInfo"></span></td>
          <td class="spTd02 b_gray" style='width:100px'>입사일</td>
          <td colspan="2" class="spTd03" style='width:110px'><span id="disEmplJnDt" class="disRetireInfo"></span></td>
        </tr>
        <tr>
          <td class="spTd04_1 b_gray"  style='width:100px'>부서</td>
          <td colspan="2" class="spTd05"  style='width:110px' ><span id="disEmplDprt" class="disRetireInfo"></span></td>
          <td class="spTd05 b_gray"  style='width:100px'>퇴직일</td>
          <td colspan="2" class="spTd06"><span id="disEmplQtDt" class="disRetireInfo"></span></td>
        </tr>
        <tr>
          <td class="spTd07_1 b_gray"  style='width:100px'>직위</td>
          <td colspan="2" class="spTd08"  style='width:110px' ><span id="disEmplPstn" class="disRetireInfo"></span></td>
          <td class="spTd08 b_gray"  style='width:100px'>근속일수</td>
          <td colspan="2" class="spTd09"><span id="disEmplWkDy" class="disRetireInfo"></span></td>
        </tr>
                </table>
              </td>
            </tr>
            <tr><td colspan="6">&nbsp;</td></tr>
            <!-- 급여내역 -->
            <tr>
              <th class="spSubTit01">급여내역</th>
              <td colspan="5">&nbsp;</td>
            </tr>
        <tr>
              <td colspan="6" class="spTd01_l">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
            <td rowspan="2" class="spTd01_1 b_gray">산정기간</td>
            <td class="spTd02" style='width:85px;'><span id="disRtsvSttD1" class="disRetireInfo"></span></td>
            <td class="spTd02" style='width:85px;'><span id="disRtsvSttD2" class="disRetireInfo"></span></td>
            <td class="spTd02" style='width:85px;'><span id="disRtsvSttD3" class="disRetireInfo"></span></td>
            <td class="spTd02" style='width:85px;'><span id="disRtsvSttD4" class="disRetireInfo"></span></td>
            <td rowspan="2" class="spTd03"  style='width:90px;'>계</td>
          </tr>
          <tr>
            <td class="spTd05"><span id="disRtsvEndD1" class="disRetireInfo"></span></td>
            <td class="spTd05"><span id="disRtsvEndD2" class="disRetireInfo"></span></td>
            <td class="spTd05"><span id="disRtsvEndD3" class="disRetireInfo"></span></td>
            <td class="spTd05"><span id="disRtsvEndD4" class="disRetireInfo"></span></td>
          </tr>
          <tr>
            <td class="spTd04_1 b_gray">산정일수</td>
            <td class="spTdNum05"><span id="disRtpsDays1" class="disRetireInfo"></span></td>
            <td class="spTdNum05"><span id="disRtpsDays2" class="disRetireInfo"></span></td>
            <td class="spTdNum05"><span id="disRtpsDays3" class="disRetireInfo"></span></td>
            <td class="spTdNum05"><span id="disRtpsDays4" class="disRetireInfo"></span></td>
            <td class="spTdNum06 bold "><span id="disRtpsDayT" class="disRetireInfo"></span></td>
          </tr>
          <tr>
            <td class="spTd07_1 b_gray">급여총액</td>
            <td class="spTdNum08"><span id="disRtpsPays1" class="disRetireInfo"></span></td>
            <td class="spTdNum08"><span id="disRtpsPays2" class="disRetireInfo"></span></td>
            <td class="spTdNum08"><span id="disRtpsPays3" class="disRetireInfo"></span></td>
            <td class="spTdNum08"><span id="disRtpsPays4" class="disRetireInfo"></span></td>
            <td class="spTdNum10 bold"><span id="disRtpsPayT" class="disRetireInfo"></span></td>
          </tr>
                </table>
              </td>
            </tr>

            <tr><td colspan="6">&nbsp;</td></tr>
            <!-- 기타소득 -->
            <tr>
              <th class="spSubTit01">기타소득</th>
              <td colspan="5">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="2" class="spTd01" style='background-color:#f3f3f3;'>지급항목</td>
              <td colspan="2" class="spTd02" style='background-color:#f3f3f3;'>1년간 지급액</td>
              <td colspan="2" class="spTd03" style='background-color:#f3f3f3;'>3개월분</td>
            </tr>
            <tr>
              <td colspan="2" class="spTd04"><span id="disGiveItem1" class="disRetireInfo"></span></td>
              <td colspan="2" class="spTdNum05"><span id="disGiveInco1" class="disRetireInfo"></span></td>
              <td colspan="2" class="spTd11"><span id="disGiveInco3M1" class="disRetireInfo"></span></td>
            </tr>
            <tr>
              <td colspan="2" class="spTd04"><span id="disGiveItem2" class="disRetireInfo"></span></td>
              <td colspan="2" class="spTdNum05"><span id="disGiveInco2" class="disRetireInfo"></span></td>
              <td colspan="2" class="spTd11"><span id="disGiveInco3M2" class="disRetireInfo"></span></td>
            </tr>
            <tr>
              <td colspan="2" class="spTd04"><span id="disGiveItem3" class="disRetireInfo"></span></td>
              <td colspan="2" class="spTdNum05"><span id="disGiveInco3" class="disRetireInfo"></span></td>
              <td colspan="2" class="spTd11"><span id="disGiveInco3M3" class="disRetireInfo"></span></td>
            </tr>
            <tr>
              <td colspan="2" class="spTd07"><span id="disGiveItem4" class="disRetireInfo"></span></td>
              <td colspan="2" class="spTdNum08"><span id="disGiveInco4" class="disRetireInfo"></span></td>
              <td colspan="2" class="spTdNum10"><span id="disGiveInco3M4" class="disRetireInfo"></span></td>
            </tr>
            <tr><td colspan="6" class="shortHeight">&nbsp;</td></tr>
            <!-- 추가지급: 퇴직위로금/해고예고수당 -->
            <tr>
              <td class="spTd12" style='width:100px;'>퇴직위로금</td>
              <td colspan="2" class="spTdNum13"><span id="disCompensa" class="disRetireInfo"></span></td>
              <td class="spTd12" style='width:100px;'>해고예고수당</td>
              <td colspan="2" class="spTdNum14"><span id="disDismissl" class="disRetireInfo"></span></td>
            </tr>
            <tr><td colspan="6">&nbsp;</td></tr>
            <!-- 퇴직소득 -->
            <tr>
              <th class="spSubTit01">퇴직소득</th>
              <td colspan="5">&nbsp;</td>
            </tr>
            <tr>
              <td rowspan="2" class="spTd01" style='background-color:#f3f3f3;'>1일 평균임금</td>
              <td class="spTd02" style="width:100px;">3개월 총계</td>
              <td colspan="3" class="spTd02" style="text-align:left; padding-left:5px;">급여총액 계 &#43; 3개월분 기타소득 계</td>
              <td class="spTd15"><span id="disSPR3MTotal" class="disRetireInfo"></span></td>
            </tr>
            <tr>
              <td class="spTd05">1일 평균임금</td>
              <td colspan="3" class="spTd05" style="text-align:left; padding-left:5px;">3개월 총계 &#47; 산정일수</td>
              <td class="spTd11"><span id="disSPR1DAverage" class="disRetireInfo"></span><span id="disSPR1MAverage" class="disRetireInfo" style="display:none"></span></td>
            </tr>
            <tr>
              <td class="spTd07" style='background-color:#f3f3f3;'>1일 통상임금</td>
              <td colspan="4" class="spTd08" style="text-align:left; padding-left:5px;">1일 통상임금이 1일 평균임금보다 높을 경우 1일 통상임금으로 적용</td>
              <td class="spTdNum09" style='width:70px;'><span name="frmOrdinaryWage" id="frmOrdinaryWage"></span></td>
            </tr>
            <tr>
              <td class="spTd07" style="font-weight:bold;background-color:#f3f3f3;">퇴직소득</td>
              <td colspan="4" class="spTd08" style="text-align:left; padding-left:5px; letter-spacing: -0.3px;">(1일 평균임금 &#42; 30일 &#42; 근속일수 &#47; 365) &#43; 퇴직위로금 &#43; 해고예고수당</td>
              <td class="spTd10"><span id="disSPRIncome" class="disRetireInfo"></span></td>
            </tr>
            <tr><td colspan="6">&nbsp;</td></tr>
            <!-- 공제내역 -->
            <tr>
              <th class="spSubTit01">공제내역</th>
              <td colspan="5">&nbsp;</td>
            </tr>
            <tr>
              <td colspan="6" class="spTd01_l">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td class="spTd01_1" style='background-color:#f3f3f3;width:120px;'>퇴직소득세</td>
                  <td class="spTd02" style='background-color:#f3f3f3;width:120px;'>지방소득세</td>
                  <td class="spTd02" style='background-color:#f3f3f3;width:120px;'>기타공제</td>
                  <td class="spTd03" style='background-color:#f3f3f3;'>공제총액</td>
                </tr>
                <tr>
                  <td class="spTdNum07_1"><span id="disSPRIncomeTax" class="disRetireInfo"></span></td>
                  <td class="spTdNum08"><span id="disSPRAreaTax" class="disRetireInfo"></span></td>
                  <td class="spTdNum08"><span id="disSPRDeduEtc" class="disRetireInfo"></span></td>
                  <td class="spTdNum10"><span id="disSPRDeduTotal" class="disRetireInfo"></span></td>
                </tr>
                </table>
              </td>
            </tr>
            <tr><td colspan="6">&nbsp;</td></tr>
            <!-- 실수령액 -->
            <tr>
              <th class="spSubTit02">실수령액</th>
              <td colspan="3" class="spTd13" style="width:207px; text-align:left; padding-left:10px;">퇴직급여 - 공제총액</td>
              <td colspan="2" class="spTd16"><span id="disSPRRealTotal" class="disRetireInfo"></span></td>
            </tr>
          </tbody>

          <tfoot>
            <tr><td colspan="6">&nbsp;</td></tr>
            <tr><td colspan="6" style="text-align:left; padding-left:10px; height:50px;">위 금액을 해당자의 퇴직금 정산액으로 정히 영수함.</td></tr>
            <tr><td colspan="6"><input name="frmPrintYYYY" id="frmPrintYYYY" type="text" value="2024" maxlength="4" size="4" class="clsPrintDate">년 <input name="frmPrintMM" id="frmPrintMM" type="text" value="07" maxlength="2" size="2" class="clsPrintDate">월 <input name="frmPrintDD" id="frmPrintDD" type="text" value="16" maxlength="2" size="2" class="clsPrintDate">일</td></tr>
            <tr>
              <td colspan="6" class="spTxt01">
                <div style="position:relative;">
                  <label style="position:absolute; top:5px; left:10px;font-size:11px;"><input type="checkbox" id="chkCmpnCeoV" name="chkCmpnCeoV" value="1"  Checked /> <span style="display:inline-block; margin-top:-7px; vertical-align:middle;">대표자 표기</span></label>
                  <div style="position:absolute;top:-25px;left:330px;height:86px;display:table;"><!-- width:87px; -->
                    <span style="display:table-cell; text-align:center; vertical-align:middle;">
                      <div id="disStampImgTrue" class="disHide">
                        <img id="disStampDefaultImg" src="/_logoRequest/1666/Thumb/166583_TS.png" alt="_도장" title="_도장" height='86' style="height:50px;"></img>
                        <span id="btnStampDisView" class="anchor">
                          <img src="https://img.payzon.co.kr/_commonImg/logo_close.png" style="vertical-align:top;">
                        </span>
                      </div>

                      <div id="disStampImgFalse" class="">
                        <span id="btnStampView" class="anchor">
                          <img id="disStampDefaultImg" src="https://img.payzon.co.kr/_commonImg/cert_stamp.gif" alt="회사 도장을 넣어 주세요." title="회사 도장을 넣어 주세요." style="width:60px;height:59px;"></img>
                        </span>
                      </div>
                    </span>
                  </div>
                </div>(주)예스폼<br /><!-- 대표이사 -->&nbsp;<span id="disCmpnCeoA" class="disShow">대표이사 이응열</span>
              </td>
            </tr>
            <tr>
              <td>근로자:</td>
              <td class="spTxt02"><span id="disEmplNameSign" class="disRetireInfo"></span></td>
              <td>인</td>
              <td>사용자:</td>
              <td class="spTxt02">이응열</td>
              <td>인</td>
            </tr>
          </tfoot>
          </table>
          <!--퇴직급여증명서//-->          <!--퇴직급여증명서//-->          <!--퇴직급여증명서//-->

        </ul>

        <hr class='hr_5'></hr>

        <ul class='c'><input name="btnGetPrint" id="btnGetPrint" type='image' value='인쇄' src='../_commonImg/retire/btn_print_s.png'  alt='인쇄' title='인쇄'><span class='p_l10'><span name="btnGetExcel" id="btnGetExcel" class="anchor"><img type='image' value='엑셀 다운로드' src='../_commonImg/retire/btn_xls_down_s.png'  alt='엑셀 다운로드' title='엑셀 다운로드' class='p_l5'></span></span><!--<span class='p_l10'><input type='image' value='sms보내기' src='/_commonImg/btn_sms_s.png'  alt='sms보내기' title='sms보내기' class='p_l5'></span>--><span class='p_l10'><a href="#!" onclick="javascript:$.fn.emailPayslipSend();"><img src='../_commonImg/retire/btn_email_s.png'  alt='이메일 보내기' title='이메일 보내기' class='p_l5' border="0"></a></span></ul>

        <hr class='hr_5'></hr>

      </div>

    </div>

  </div>

  <hr class='hr_30'></hr>

</section>

<!-- 이미지 등록 안내 -->
<div id="popImgNoMsg" class="w_400 disHide">
  <ul class='p_t10 p_b10'>
    <li><img src='https://img.payzon.co.kr/_commonImg/pop_common_img.gif'  width='104px' height='84px'/></li>
    <li class='p_t10 c'><span class="disImgPosText">로고</span>가  등록되어 있지 않습니다.<Br>[사용자 정보] 메뉴에서  <span class='c_blue'><span class="disImgPosText">로고</span>를 등록</span>하실 수 있습니다.
    </li>
  </ul>
  <li class='p_t10'><input name="btnMembersInfoPage" id="btnMembersInfoPage" type='image' value='사용자정보 입력' src='https://img.payzon.co.kr/_commonImg/btn_ci_reg.png'  width='139px' height='30px' alt='사용자정보 입력' title='사용자정보 입력' class=' p_t10'><input name="btnImgInfoClose" id="btnImgInfoClose" type='image' value='다음에하기' src='https://img.payzon.co.kr/_commonImg/btn_next.png'  width='121px' height='30px' alt='다음에하기' title='다음에하기' class='p_l10 p_t10'></li>
</div>

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

