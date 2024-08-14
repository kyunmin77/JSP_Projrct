<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page info="Include 테스트"%>
<%@ page buffer="none"%>
<%@ page autoFlush="true"%>
<%@ page isThreadSafe="true"%>
<html>
<head>
<link rel="stylesheet" type='text/css' href="purple.css">
<title>4大保険及び控除項目</title>
<script>
	
</script>

</head>
<body>
	<table width='100%' border=''>
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
	<%-- 사원 정보와 급여 정보를 표시할 테이블 --%>
	<h2>4大保険及び控除項目</h2><br>
	<select name="sal_year">

		<option value="2024">2024年</option>

	</select>
	<form action="fourInsurance.do" method="post">

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
		</select> <input type="submit" name="sal_button" value="照会"><br>
	</form>
	<table width='100%' border='1'>
		<tr>
			<td align="center" colspan="6">社員情報</td>
			<td align="center" colspan="3">国民年金</td>
			<td align="center" colspan="3">健康保険</td>
			<td align="center" colspan="3">長期養育保険</td>
			<td align="center" colspan="3">雇用保険</td>
			<td align="center" colspan="3">4代保険合計</td>
		</tr>
		<tr>
			<th>雇用タープ</th>
			<th>氏名</th>
			<th>帰属年月</th>
			<th>入社日</th>
			<th>部署</th>
			<th>職位</th>
			<th>事業主</th>
			<th>勤労者</th>
			<th>合計</th>
			<th>事業主</th>
			<th>勤労者</th>
			<th>合計</th>
			<th>事業主</th>
			<th>勤労者</th>
			<th>合計</th>
			<th>事業主</th>
			<th>勤労者</th>
			<th>合計</th>
			<th>事業主</th>
			<th>勤労者</th>
			<th>合計</th>

			<c:forEach var="employee" items="${sal_list}">
				<tr>
					<td>${employee.emp_type}</td>
					<td>${employee.name_kor}</td>
					<td>${employee.sal_year}年${employee.sal_month}月</td>
					<td>${employee.hired_date}</td>
					<td>${employee.dept}</td>
					<td>${employee.job}</td>
					<td><fmt:formatNumber value="${employee.ded_pen / 2}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber value="${employee.ded_pen / 2}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber value="${employee.ded_pen}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber value="${employee.ded_heal / 2}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber value="${employee.ded_heal / 2}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber value="${employee.ded_heal}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber value="${employee.ded_long_care / 2}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber value="${employee.ded_long_care / 2}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber value="${employee.ded_long_care}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber value="${employee.ded_hire / 2}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber value="${employee.ded_hire / 2}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber value="${employee.ded_hire}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber
							value="${(employee.ded_pen + employee.ded_heal + employee.ded_long_care + employee.ded_hire)/ 2}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber
							value="${(employee.ded_pen + employee.ded_heal + employee.ded_long_care + employee.ded_hire)/ 2}"
							type="number" maxFractionDigits="0" /></td>
					<td><fmt:formatNumber
							value="${employee.ded_pen + employee.ded_heal + employee.ded_long_care + employee.ded_hire}"
							type="number" maxFractionDigits="0" /></td>
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
