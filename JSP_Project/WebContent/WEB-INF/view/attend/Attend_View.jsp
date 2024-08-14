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
<title>勤怠照会</title>
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
		<h2>&nbsp;&nbsp;&nbsp;勤怠照会</h2>
	<br>

	<table width=100% border=1>
		<!--  <td><input type=button onclick="location.href='~~~.jsp'"></td>-->
		<tr>
			<td>入力日付</td>
			<td>区分</td>
			<td>氏名</td>
			<td>部署</td>
			<td>職位</td>
			<td>勤怠項目</td>
			<td>勤怠日数</td>
			<td>勤怠期間</td>
			<td>金額</td>
			<td>摘要</td>
		</tr>
		<c:forEach var='atdv' items='${atdv_list}'>
			<tr>	
				<td>${atdv.atth_inserted }</td>
				<td>${atdv.emp_type }</td>
				<td>${atdv.name_kor }</td>
				<td>${atdv.dept }</td>
				<td>${atdv.job }</td>
				<td>${atdv.atth_name }</td>
				<td>${atdv.atth_start }~${atdv.atth_end }</td>
				<td>${atdv.atth_days }</td>
				<td>${atdv.atth_cost }</td>
				<td>${atdv.atth_note }</td>
			</tr>
		</c:forEach>
	</table>
<br><br><br><br><br><br>
		<tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
</body>
</html>