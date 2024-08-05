<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="Include 테스트"%>
<%@ page buffer="none"%>
<%@ page autoFlush="true"%>
<%@ page isThreadSafe="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>退職給与入力・管理</title>
</head>
<body>
	<table width='100%' border='0'>
		<tr height='100'>
			<td align='left'><%@ include file="../../../Site_header.jsp"%>
			</td>
		</tr>
		<tr>
			<td align='left'><%@ include file="../../../Site_menu.jsp"%>
			</td>
		</tr>
		<tr>
			<td><h2>退職給与入力・管理</h2></td>
		</tr>
		<tr>
			<td>
				<form action="${pageContext.request.contextPath}/retirePayment.do"
					method="post">
					<table width="100%">
						<tr>
							<td>
								<h3>${rpr.name_kor}&nbsp;${rpr.job}퇴직계산</h3>
							</td>
							<td>구분 <select>
									<option value="중간정산">중간정산</option>
									<option value="퇴직정산">퇴직정산</option>
							</select>
							</td>
							<td>입사일 <input type="date" value="${rpr.hired_date}" readonly> ~ 퇴직일 <input type="date" value="${rpr.retired_date}" readonly></td>
							<td>근속년수 ${rpr.years_service} 년</td>
							<td>근속일수 <fmt:formatNumber value="${rpr.days_service}"/> 일</td>
						</tr>
						<tr>
							<td colspan="3">
								<table border="1" width="100%">
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
										<td align="center">
										<input type="date" style="width: 100px;" value="${dayTerm.prev3_first}" readonly>~<input type="date" style="width: 100px;"  value="${dayTerm.prev3_last}" readonly></td>
										<td align="center"><input type="text" style="width: 100px;" value="${dayTerm.prev3_days}" readonly></td>
										<td align="center"><fmt:formatNumber value="${dayTerm.prev3_sal_sum}"/> </td>
									</tr>
									<tr>
										<td align="center"><input type="date" style="width: 100px;" value="${dayTerm.prev2_first}" readonly>~<input type="date" style="width: 100px;" value="${dayTerm.prev2_last}" readonly></td>
										<td align="center"><input type="text" style="width: 100px;" value="${dayTerm.prev2_days}" readonly></td>
										<td align="center"><fmt:formatNumber value="${dayTerm.prev2_sal_sum}"/></td>
									</tr>
									<tr>
										<td align="center"><input type="date" style="width: 100px;" value="${dayTerm.prev1_first}"  readonly>~<input type="date" style="width: 100px;"value="${dayTerm.prev1_last}"  readonly></td>
										<td align="center"><input type="text" style="width: 100px;" value="${dayTerm.prev1_days}" readonly></td>
										<td align="center"><fmt:formatNumber value="${dayTerm.prev1_sal_sum}"/></td>
									</tr>
									<tr>
										<td align="center"><input type="date" style="width: 100px;" value="${dayTerm.this_first}" readonly>~<input type="date" style="width: 100px;" value="${dayTerm.this_last}" readonly></td>
										<td align="center"><input type="text" style="width: 100px;" value="${dayTerm.this_days}" readonly></td>
										<td align="center"><fmt:formatNumber value="${dayTerm.this_sal_sum}"/></td>
									</tr>
									<tr>
										<td align="center" bgcolor="skyblue">총 합계</td>
										<td align="center"><input type="text" style="width: 100px;" value = "${dayTerm.prev3_days+dayTerm.prev2_days+dayTerm.prev1_days+dayTerm.this_days}" readonly></td>
										<td align="center"><fmt:formatNumber value="${dayTerm.prev3_sal_sum+dayTerm.prev2_sal_sum+dayTerm.prev1_sal_sum+dayTerm.this_sal_sum}"/></td>
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
							<td colspan="2">
								<table border="1" width="100%">
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
										<td align="center"><input type="date" style="width: 100px;">~<input type="date" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center"><input type="date" style="width: 100px;">~<input type="date" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center"><input type="date" style="width: 100px;">~<input type="date" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center"><input type="date" style="width: 100px;">~<input type="date" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center"><input type="date" style="width: 100px;">~<input type="date" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;"></td>
										<td align="center"><input type="text" style="width: 100px;"></td>
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
							<td align="center" colspan="5"> <input type="button" value="퇴직금 계산하기"/></td>
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
														<td align="center"><input type="text" readonly></td>
														<td align="center"><input type="text" readonly></td>
														<td align="center"><input type="text" readonly></td>
														<td align="center"><input type="text" readonly></td>
														<td align="center"><input type="text" readonly></td>
														<td align="center"><input type="text" readonly></td>
													</tr>
													<tr>
														<td align="center" bgcolor="grey">과세대상 퇴직급여</td>
														<td align="center" bgcolor="grey">차감원천징수세액</td>
														<td align="center" bgcolor="grey">실수령액</td>
														<td align="center" bgcolor="grey">지급방법</td>
														<td align="center" colspan="2" bgcolor="grey">지급일</td>
													</tr>
													<tr>
														<td align="center"><input type="text" readonly>원</td>
														<td align="center"><input type="text" readonly>원</td>
														<td align="center"><input type="text" readonly>원</td>
														<td align="center"><input type="text" ></td>
														<td align="center" colspan="2"><input type="date"></td>
													</tr>
												</table>
											</td>
										</tr>
						<tr>
							<td align="center" colspan="6"><input type="submit"
								value="저장"> <input type="reset" value="취소"></td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>