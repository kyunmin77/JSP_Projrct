<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="Include 테스트"%>
<%@ page buffer="none"%>
<%@ page autoFlush="true"%>
<%@ page isThreadSafe="true"%>

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
					<table  width="100%">
						<tr>
							<td>
								<h3>${rpr.name_kor}&nbsp;${rpr.job}퇴직계산</h3>
							</td>
							<td>구분 <select>
									<option value="중간정산">중간정산</option>
									<option value="퇴직정산">퇴직정산</option>
							</select>
							</td>
							<td>입사일 <input type="text" value="${rpr.hired_date}" readonly> ~ 퇴직일 <input type="text" value="${rpr.retired_date}" readonly></td>
							<td>근속년수 ${rpr.years_service} 년</td>
							<td>근속일수 ${rpr.days_service} 일</td>
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
										<input type="text" style="width: 100px;" readonly>~<input type="text" style="width: 100px;" readonly></td>
										<td align="center"><input type="text" style="width: 100px;" readonly></td>
										<td align="center"><input type="text" style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center"><input type="text"
											style="width: 100px;" readonly>~<input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center"><input type="text"
											style="width: 100px;" readonly>~<input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center"><input type="text"
											style="width: 100px;" readonly>~<input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center" bgcolor="skyblue">총 합계</td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center" colspan="1" bgcolor="skyblue">퇴직위로금</td>
										<td align="center" colspan="2" bgcolor="skyblue">해고예고수당</td>
									</tr>
									<tr>
										<td align="center" colspan="1"><input type="text"
											style="width: 100px;"></td>
										<td align="center" colspan="2"><input type="text"
											style="width: 100px;"></td>
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
										<td align="center"><input type="text"
											style="width: 100px;" readonly>~<input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center"><input type="text"
											style="width: 100px;" readonly>~<input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center"><input type="text"
											style="width: 100px;" readonly>~<input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center"><input type="text"
											style="width: 100px;" readonly>~<input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center"><input type="text"
											style="width: 100px;" readonly>~<input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
										<td align="center"><input type="text"
											style="width: 100px;" readonly></td>
									</tr>
									<tr>
										<td align="center" colspan="1" bgcolor="skyblue">비과세퇴직급여</td>
										<td align="center" colspan="1" bgcolor="skyblue">기납부 세액</td>
										<td align="center" colspan="2" bgcolor="skyblue">세액공제</td>
									</tr>
									<tr>
										<td align="center" colspan="1"><input type="text"
											style="width: 100px;"></td>
										<td align="center" colspan="1"><input type="text"
											style="width: 100px;"></td>
										<td align="center" colspan="2"><input type="text"
											style="width: 100px;"></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>