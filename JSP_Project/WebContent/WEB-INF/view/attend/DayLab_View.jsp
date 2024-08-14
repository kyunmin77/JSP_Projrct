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
<link rel="stylesheet" type='text/css' href="purple.css">
<title>日雇い勤怠照会</title>
</head>
<body>
	<table width='100%'>
		<tr height='100'>
			<td align='left'><%@ include file="/../../../Site_header.jsp"%>
			</td>
		</tr>
		<tr>
			<td align='left'><%@ include file="/../../../Site_menu.jsp"%>
			</td>
		</tr>
	</table>
<br>
		<h2>&nbsp;&nbsp;&nbsp;日雇い勤怠照会</h2>
	<br>
		<table border=1 width=100%>
			<tr align=center>
				<td>入力日付</td>
				<td>社員番号</td>
				<td>氏名</td>
				<td>部署</td>
				<td>現場・プロジェクト</td>
				<td>日当</td>
				<td>支給率</td>
				<td>所得税</td>
				<td>地方所得税</td>
				<td>実支給額</td>
			</tr>
			<c:forEach var='day' items='${day_list }' begin='0' end='30'>
				<tr>
					<td>${day.datth_date }</td>
					<td>${day.emp_no }</td>
					<td>${day.name_kor }</td>
					<td>${day.dept }</td>
					<td>${day.datth_name }</td>
					<td>${day.datth_pay }</td>
					<td>${day.datth_payrate }</td>
					<td>${day.datth_income_tax }</td>
					<td>${day.datth_local_tax }</td>
					<td>${day.datth_realpayment }</td>
				</tr>
			</c:forEach>

			<tr>	
		</table>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
</body>
</html>