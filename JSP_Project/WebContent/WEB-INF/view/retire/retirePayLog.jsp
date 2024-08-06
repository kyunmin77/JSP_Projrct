<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="Include 테스트"%>
<%@ page buffer="none"%>
<%@ page autoFlush="true"%>
<%@ page isThreadSafe="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>退職給与明細書</title>
<script>
	function successJoin() {
		alert('증명서대장에 저장되었습니다.');
	}
</script>
</head>
<body>
	<table width='100%' border='0'>
		<tr height='100'>
			<td align='left'><%@ include file="/../../../Site_header.jsp"%>
			</td>
		</tr>
		<tr>
			<td align='left'><%@ include file="/../../../Site_menu.jsp"%>
			</td>
		</tr>
		<tr>
			<td align='left'>
				<!--  -->

				<h2>退職給与明細書</h2>

				<div style="width: 30%; float: left;">
					<br /> <br /> <br />
					<form action="${pageContext.request.contextPath}/retirePayLog.do" method="post">
					<table width="80%" border="1">

						<tr>
							<td colspan="3">*지급연도<select name="ret_year">
									<option value="2024" selected>2024年</option>
									<option value="2023">2023年</option>
									<option value="2022">2022年</option>
									<option value="2021">2021年</option>
									<option value="2020">2020年</option>
									<option value="2019">2019年</option>
									<option value="2018">2018年</option>
									<option value="2017">2017年</option>
									<option value="2016">2016年</option>
							</select>
							<input type="submit" name="button" value="검색"/>
							</td>
						</tr>
						<tr>
							<td align="center">구분</td>
							<td align="center">성명</td>
							<td align="center">실지급액</td>
						</tr>
						<c:forEach var="n" items="${list}">
								<tr>
									<td align="center">${n.emp_type}</td>
									<td align="center">${n.name_kor}</td>
									<td align="center">${n.ret_realpay}</td>
								</tr>
						</c:forEach>
					</table>
					</form>
				</div>

				<div style="width: 70%; float: right;">
					<div align='left'>
						<br />

							<div align='left'></div>
							<br />
							<table width=60% border=5 style="border-collapse: collapse;">
								<tr>
									<td style="height: 50px" colspan=6 align=center>
									<h2><b>퇴직급여명세서</b></h2>
									</td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>사원정보</strong></td>
								</tr>
								<tr>
									<td align="center">名前</td>
									<td align="center" colspan="2">성명데이터</td>
									<td align="center">入社日</td>
									<td align="center" colspan="2">입사일데이터</td>
								</tr>
								<tr>
									<td align="center">部署</td>
									<td align="center" colspan="2">部署데이터</td>
									<td align="center">退職日</td>
									<td align="center" colspan="2">退職日데이터</td>
								</tr>
								<tr><td align="center">職位</td>
									<td align="center" colspan="2">職位데이터</td>
									<td align="center">근속일수</td>
									<td align="center" colspan="2">근속일수데이터</td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>급여내역</strong></td>
								</tr>
								<tr>
									<td align="center" rowspan=2>산정기간</td>
									<td align="center">3달전</td>
									<td align="center">2달전</td>
									<td align="center">1달전</td>
									<td align="center">퇴직당월</td>
									<td align="center" rowspan=2>&nbsp;계&nbsp;</td>
								</tr>
								<tr>
									<td align="center">3달전</td>
									<td align="center">2달전</td>
									<td align="center">1달전</td>
									<td align="center">퇴직당월</td>
								</tr>
								<tr>
									<td align="center">산정일수</td>
									<td align="center">3달전</td>
									<td align="center">2달전</td>
									<td align="center">1달전</td>
									<td align="center">퇴직당월</td>
									<td align="center">계</td>
								</tr>
								<tr>
									<td align="center">급여총액</td>
									<td align="center">3달전</td>
									<td align="center">2달전</td>
									<td align="center">1달전</td>
									<td align="center">퇴직당월</td>
									<td align="center">계</td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>기타소득</strong></td>
								</tr>
								<tr>
									<td align="center"  colspan="2">지급항목</td>
									<td align="center"  colspan="2">1년간 지급액</td>
									<td align="center"  colspan="2">3개월분</td>
								</tr>
								<tr>
									<td align="center"  colspan="2">지급항목ㄷㅇㅌ</td>
									<td align="center"  colspan="2">1년간 지급액ㄷㅇㅌ</td>
									<td align="center"  colspan="2">3개월분ㄷㅇㅌ</td>
								</tr>
								<tr>
									<td colspan="6"></td>
								</tr>
								<tr>
									<td align="center">퇴직위로금</td>
									<td align="center" colspan="2"></td>
									<td align="center">해고예고수당</td>
									<td align="center" colspan="2"></td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>퇴직소득</strong></td>
								</tr>
								<tr>
									<td align="center" rowspan="2">1일 평균임금</td>
									<td align="center">3개월 총계</td>
									<td align="center" colspan="2">급여총액 계 + 3개월분 기타소득 계</td>
									<td align="center" colspan="2">ㄷㅇㅌ</td>
								</tr>
								<tr>
									<td align="center">1일 평균임금</td>
									<td align="center" colspan="2">3개월 총계/산정일수</td>
									<td align="center" colspan="2">ㄷㅇㅌ</td>
								</tr>
								<tr>
									<td align="center"><strong>퇴직소득</strong></td>
									<td align="center" colspan="3">(1일 평균임금*30일*근속일수/365)+위로금+수당</td>
									<td align="center" colspan="2">ㄷㅇㅌ</td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>공제내역</strong></td>
								</tr>
								<tr>
									<td align="center">퇴직소득세</td>
									<td align="center">지방소득세</td>
									<td align="center" colspan="2">기타공제</td>
									<td align="center" colspan="2">공제총액</td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>실수령액</strong></td>
								</tr>
								<tr>
									<td align="center" colspan="3">퇴직급여-공제총액</td>
									<td align="center" colspan="3">ㄷㅇㅌ</td>
								</tr>
								<tr>
									<td style="height: 50px" colspan=6 align=center>
									<br/>
									위 금액을 해당자의 퇴직금 정산액으로 정히 영수함.<br/>
									<br/>
									<h3><b>(株)JSPプロジェクト</b></h3>
									</br>
									</br>
									<input type="button" value="인쇄"/>
									</br>
									</br>
									</td>
								</tr>
							</table>
					</div>
				</div>
			</td>
		</tr>

	</table>
	<br />
	<br />
	<br />
	<br />
</body>
</html>