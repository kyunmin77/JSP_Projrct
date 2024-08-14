<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page info="Include 테스트"%>
<%@ page buffer="none"%>
<%@ page autoFlush="true"%>
<%@ page isThreadSafe="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type='text/css' href="purple.css">
<title>給与台帳</title>

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
	<h2>給与台帳</h2>
	<br>
	<div>
		<select name="sal_year">

			<option value="2024">2024年</option>

		</select>
		<form action="payroll.do" method="post">

			<select name="sal_month">
				<option value="1" ${picked_month == '1' ? 'selected' : ''}>1
					月</option>
				<option value="2" ${picked_month == '2' ? 'selected' : ''}>2
					月</option>
				<option value="3" ${picked_month == '3' ? 'selected' : ''}>3
					月</option>
				<option value="4" ${picked_month == '4' ? 'selected' : ''}>4
					月</option>
				<option value="5" ${picked_month == '5' ? 'selected' : ''}>5
					月</option>
				<option value="6" ${picked_month == '6' ? 'selected' : ''}>6
					月</option>
				<option value="7" ${picked_month == '7' ? 'selected' : ''}>7
					月</option>
				<option value="8" ${picked_month == '8' ? 'selected' : ''}>8
					月</option>
				<option value="9" ${picked_month == '9' ? 'selected' : ''}>9
					月</option>
				<option value="10" ${picked_month == '10' ? 'selected' : ''}>10
					月</option>
				<option value="11" ${picked_month == '11' ? 'selected' : ''}>11
					月</option>
				<option value="12" ${picked_month == '12' ? 'selected' : ''}>12
					月</option>
			</select> <input type="submit" name="sal_button" value="照会">
		</form>
	</div>

	<table width=100% border="1">

		<tr>
			<th>社員番号</th>
			<th style="width:60px">氏名</th>
			<th style="width:80px">帰属年月</th>
			<th>基本給</th>
			<th>食費</th>
			<th>保育手当</th>
			<th>職責手当</th>
			<th>車両維持費</th>
			<th>勤続手当</th>
			<th>当直手当</th>
			<th>賞与金</th>
			<th>休日手当</th>
			<th>国民年金</th>
			<th>健康保険</th>
			<th>長期養育保険</th>
			<th>雇用保険</th>
			<th>所得税</th>
			<th>住民税</th>
			<th>互助会費</th>
			<th>支給総額</th>
			<th>控除総額</th>
			<th>手取り額</th>
		</tr>


		<c:forEach var="salary" items="${employeesalaries}">
			<tr>
				<td>${salary.emp_no}</td>
				<td>${salary.name_kor}</td>
				<td>${salary.sal_year}年${salary.sal_month}月</td>
				<td>${salary.sal_normal}</td>
				<td>${salary.sal_meal}</td>
				<td>${salary.sal_childcare}</td>
				<td>${salary.sal_job}</td>
				<td>${salary.sal_car}</td>
				<td>${salary.sal_long}</td>
				<td>${salary.sal_duty}</td>
				<td>${salary.sal_reward}</td>
				<td>${salary.sal_vac}</td>
				<td>${salary.ded_pen}</td>
				<td>${salary.ded_heal}</td>
				<td>${salary.ded_long_care}</td>
				<td>${salary.ded_hire}</td>
				<td>${salary.ded_income_tax}</td>
				<td>${salary.ded_local_tax}</td>
				<td>${salary.ded_funeral}</td>
				<td>${salary.sal_sum}</td>
				<td>${salary.ded_sum}</td>
				<td>${salary.sal_real}</td>
			</tr>
		</c:forEach>

	</table>
	<br><br><br><br>
	<tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
</body>
</html>
