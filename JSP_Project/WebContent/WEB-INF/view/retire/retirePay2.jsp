<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="Include 테스트"%>
<%@ page buffer="none"%>
<%@ page autoFlush="true"%>
<%@ page isThreadSafe="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>退職給与入力・管理</title>
<style>
/* 모달 창 스타일 */
.modal {
	display: none; /* 기본적으로 모달 창을 숨깁니다. */
	position: fixed; /* 화면에 고정 */
	z-index: 1; /* 다른 요소 위에 표시 */
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto; /* 내용이 넘칠 경우 스크롤 가능 */
	background-color: rgb(0, 0, 0); /* 검정 배경 */
	background-color: rgba(0, 0, 0, 0.4); /* 배경에 투명도 추가 */
}

/* 모달 콘텐츠 스타일 */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 화면 중앙에 위치 */
	padding: 20px;
	border: 1px solid #888;
	width: 80%; /* 모달 창 너비 */
}

/* 닫기 버튼 스타일 */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<table width='100%'>
		<tr height='100'>
			<td align='left'><%@ include file="../../../Site_header.jsp"%>
			</td>
		</tr>
		<tr>
			<td align='left'><%@ include file="../../../Site_menu.jsp"%>
			</td>
		</tr>
		<tr>
			<td>
				<form action="" method="get">
					<table width='100%'>
						<tr>
							<td><h2>退職給与入力・管理</h2></td>
						</tr>
						<tr>
							<td>*지급년도<select name="">
									<option value="2024" selected>2024年</option>
									<option value="2023">2023年</option>
									<option value="2022">2022年</option>
									<option value="2021">2021年</option>
									<option value="2020">2020年</option>
									<option value="2019">2019年</option>
									<option value="2018">2018年</option>
									<option value="2017">2017年</option>
									<option value="2016">2016年</option>
									<option value="2015">2015年</option>
									<option value="2014">2014年</option>
									<option value="2013">2013年</option>
									<option value="2012">2012年</option>
									<option value="2011">2011年</option>
									<option value="2010">2010年</option>
									<option value="2009">2009年</option>
									<option value="2008">2008年</option>
									<option value="2007">2007年</option>
									<option value="2006">2006年</option>
									<option value="2005">2005年</option>
									<option value="2004">2004年</option>
									<option value="2003">2003年</option>
									<option value="2002">2002年</option>
									<option value="2001">2001年</option>
									<option value="2000">2000年</option>
							</select>
							<span style="float: right;">
								<input type="button" value="新規追加" onclick="showModal()">
							</span>
							</td>
						</tr>
						<tr>
							<td>
								<table border="1" width="100%" id="retirePaymentTable">
									<tr>
										<td align="center">지급일</td>
										<td align="center">구분</td>
										<td align="center">성명</td>
										<td align="center">직위</td>
										<td align="center">부서</td>
										<td align="center">산정기간</td>
										<td align="center">근속일수</td>
										<td align="center">실지급액</td>
										<td align="center">지급방법</td>
									</tr>
									<c:forEach var="n" items="${retire_payment_list}">
										<tr>
											<td align="center"><!-- 지급일 -->
												<c:if test="${empty n.tax_defer_date}">0000-00-00</c:if>
												<c:if test="${!empty n.tax_defer_date}">${n.tax_defer_date}</c:if>
											</td>
<!--여기 모델 만들 때 주의 -->					<td align="center"><!-- 구분 정규직/비정규직-->
												<c:if test="${empty n.ret_emp_type}"></c:if>
												<c:if test="${!empty n.ret_emp_type}">${n.ret_calc_type}</c:if>
											</td>
											<td align="center">${n.name_kor}</td><!-- 성명 -->
											<td align="center">${n.job}</td><!-- 직위 -->
											<td align="center">${n.dept}</td><!-- 부서 -->
<!--여기 모델 만들 때 주의 --><!-- 산정기간 -->		<td align="center">${n.hired_date} ~ ${n.retired_date}</td><!-- 산정기간 -->
											<td align="center">${n.days_service}</td><!-- 근속일수 -->
											<td align="center">${n.ret_realpay}</td><!-- 실지급액 -->
											<td align="center">${n.tax_defer_account}</td><!-- 지급방법 -->
										</tr>
									</c:forEach>
									
									<tr>
										<td colspan="9">
										 여기에 추가
										</td>
									</tr>
									
									
									
									
										<tr>
											<td colspan="9">
												ooo oo 퇴직계산 >>&nbsp;&nbsp;&nbsp;구분 <select>
																		<option value="중간정산">중간정산</option>
																		<option value="퇴직정산">퇴직정산</option>
																	</select>
																&nbsp;&nbsp;&nbsp;입사일 <input type="text" readonly> ~ 퇴직일 <input type="text" readonly>
																&nbsp;&nbsp;&nbsp;근속년수 <input type="text" readonly>																&nbsp;&nbsp;&nbsp;
																&nbsp;&nbsp;&nbsp;근속일수 <input type="text" readonly>
											</td>
										</tr>
										
										<tr>
											<td colspan="5">
												<table border="1" width ="100%">
													<tr>
														<td colspan="3">
															<h3>급여내역</h3>사유발생일 이전 최근 3개월 지급합계 금액
														</td>
													</tr>
													<tr>
														<td align="center" bgcolor="skyblue">산정기간</td>
														<td align="center" bgcolor="skyblue">산정일수</td>
														<td align="center" bgcolor="skyblue">급여총액</td>
													</tr>
													<tr>
														<td align="center"><input type="text" style="width: 100px;" readonly>~<input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
													</tr>
													<tr>
														<td align="center"><input type="text" style="width: 100px;" readonly>~<input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
													</tr>
													<tr>
														<td align="center"><input type="text" style="width: 100px;" readonly>~<input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
													</tr>
													<tr>
														<td align="center"><input type="text" style="width: 100px;" readonly>~<input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
													</tr>
													<tr>
														<td align="center" bgcolor="skyblue">총 합계</td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
													</tr>
													<tr>
														<td align="center" colspan="1" bgcolor="skyblue">퇴직위로금</td>
														<td align="center" colspan="2" bgcolor="skyblue">해고예고수당</td>
													</tr>
													<tr>
														<td align="center" colspan="1"><input type="text" style="width: 100px;"></td>
														<td align="center" colspan="2"><input type="text" style="width: 100px;"></td>
													</tr>
												</table>
											</td>
											<td colspan="4">								
													<table border="1" width ="100%">
													<tr>
														<td colspan="4">
															<h3>기타과세소득</h3>사유발생일 이전 1년간 분의 금액 입력
														</td>
													</tr>
													<tr>
														<td align="center" bgcolor="skyblue">지급년월</td>
														<td align="center" bgcolor="skyblue">지급항목</td>
														<td align="center" bgcolor="skyblue">금액</td>
														<td align="center" bgcolor="skyblue">3개월분</td>
													</tr>
													<tr>
														<td align="center"><input type="text" style="width: 100px;" readonly>~<input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
													</tr>
													<tr>
														<td align="center"><input type="text" style="width: 100px;" readonly>~<input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
													</tr>
													<tr>
														<td align="center"><input type="text" style="width: 100px;" readonly>~<input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
													</tr>
													<tr>
														<td align="center"><input type="text" style="width: 100px;" readonly>~<input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
													</tr>
													<tr>
														<td align="center"><input type="text" style="width: 100px;" readonly>~<input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
													</tr>
													<tr>
														<td align="center" colspan="1" bgcolor="skyblue">비과세퇴직급여</td>
														<td align="center" colspan="1" bgcolor="skyblue">기납부 세액</td>
														<td align="center" colspan="2" bgcolor="skyblue">세액공제</td>
													</tr>
													<tr>
														<td align="center" colspan="1"><input type="text" style="width: 100px;"></td>
														<td align="center" colspan="1"><input type="text" style="width: 100px;"></td>
														<td align="center" colspan="2"><input type="text" style="width: 100px;"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td align="center" colspan="9"">
												<input type="button" value="퇴직금계산하기"/>
											</td>
										</tr>
										<tr>
											<td colspan="9">
												<table border="1" width="100%">
													<tr>
														<td align="center" bgcolor="skyblue">3개월 총계</td>
														<td align="center" bgcolor="skyblue">1일 평균 임금</td>
														<td align="center" bgcolor="skyblue">퇴직소득</td>
														<td align="center" bgcolor="skyblue">퇴직일이 속하는 과세연도</td>
														<td align="center" bgcolor="skyblue">산출세액</td>
														<td align="center" bgcolor="skyblue">지방소득세</td>
													</tr>
													<tr>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
														<td align="center"><input type="text" style="width: 100px;" readonly></td>
													</tr>
													<tr>
														<td align="center" bgcolor="grey">과세대상 퇴직급여</td>
														<td align="center" bgcolor="grey">차감원천징수세액</td>
														<td align="center" bgcolor="grey">실수령액</td>
														<td align="center" bgcolor="grey">지급방법</td>
														<td align="center" colspan="2" bgcolor="grey">지급일</td>
													</tr>
													<tr>
														<td align="center" bgcolor="grey"><input type="text" style="width: 100px;" readonly>원</td>
														<td align="center" bgcolor="grey"><input type="text" style="width: 100px;" readonly>원</td>
														<td align="center" bgcolor="grey"><input type="text" style="width: 100px;" readonly>원</td>
														<td align="center" bgcolor="grey"><input type="text" style="width: 100px;"></td>
														<td align="center" colspan="2" bgcolor="grey"><input type="date"></td>
													</tr>
													<tr>
														<td align="center">
															<input type="submit" value="저장">
															<input type="reset" value="취소">
														</td>
													</tr>
												</table>
											</td>
										</tr>
								</table>
							</td>
						</tr>
	
					</table>
				</form>
			</td>
		</tr>

	</table>

	<!-- 모달 창 -->
	<div id="myModal" class="modal">
		<div class="modal-content">
			<span class="close" onclick="closeModal()">&times;</span>
			<h2>퇴직급여지급 사원선택</h2>
			<div>
				<form action="${pageContext.request.contextPath}/retirePay.do"
					method="get">
					<input type="text" placeholder="社員検索"> <input type="submit"
						value="検索"> <input type="submit" value="전체보기"> <span
						style="float: right;"> <select>
							<option>부서별</option>
							<option>사장실</option>
							<option>개발팀</option>
							<option>콘텐츠팀</option>
							<option>업무지원팀</option>
							<option>디자인팀</option>
							<option>관리팀</option>
							<option>기획전략팀</option>
					</select>
					</span>
					<table border="1" width="100%">
						<tr>
							<td align="center"><input type="checkbox"></td>
							<td align="center">구분</td>
							<td align="center">사원번호</td>
							<td align="center">성명</td>
							<td align="center">부서</td>
							<td align="center">직위</td>
							<td align="center">상태</td>
						</tr>
						<c:forEach var="n" items="${list}">
							<tr class="btn-open-modal" data-state="${n.state}"
								data-emp_no="${n.emp_no}" data-name="${n.name_kor}"
								data-dept="${n.dept}" data-job="${n.job}"
								data-state="${n.state}" data-emp_type="${n.emp_type}">


								<td align="center"><input type="checkbox"></td>
								<td align="center">${n.emp_type}</td>
								<td align="center">${n.emp_no}</td>
								<td align="center">${n.name_kor}</td>
								<td align="center">${n.dept}</td>
								<td align="center">${n.job}</td>
								<td align="center">${n.state}</td>
							</tr>
						</c:forEach>
						<tr>
							<td align="center" colspan="7"><input type="submit"
								value="사원선택" /> <input type="submit" value="선택취소" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

	<script>
		// 모달 창을 표시하는 함수
		function showModal() {
			document.getElementById('myModal').style.display = 'block';
		}

		// 모달 창을 닫는 함수
		function closeModal() {
			document.getElementById('myModal').style.display = 'none';
		}

		// 모달 창 외부를 클릭하면 모달 창을 닫는 기능
		window.onclick = function(event) {
			if (event.target == document.getElementById('myModal')) {
				document.getElementById('myModal').style.display = 'none';
			}
		}
	</script>
</body>
</html>