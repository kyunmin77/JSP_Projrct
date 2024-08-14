<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page info="Include 테스트"%>
<%@ page buffer="none"%>
<%@ page autoFlush="true"%>
<%@ page isThreadSafe="true"%>
<html>
<head>
<link rel="stylesheet" type='text/css' href="purple.css">
<title>給与入力・管理</title>

<script>
	function calculateTotal() {
		var sal_normal = parseInt(document.getElementsByName("sal_normal")[0].value) || 0;
		var sal_meal = parseInt(document.getElementsByName("sal_meal")[0].value) || 0;
		var sal_childcare = parseInt(document
				.getElementsByName("sal_childcare")[0].value) || 0;
		var sal_job = parseInt(document.getElementsByName("sal_job")[0].value) || 0;
		var sal_car = parseInt(document.getElementsByName("sal_car")[0].value) || 0;
		var sal_long = parseInt(document.getElementsByName("sal_long")[0].value) || 0;
		var sal_duty = parseInt(document.getElementsByName("sal_duty")[0].value) || 0;
		var sal_reward = parseInt(document.getElementsByName("sal_reward")[0].value) || 0;
		var sal_vac = parseInt(document.getElementsByName("sal_vac")[0].value) || 0;

		var ded_pen = parseInt(document.getElementsByName("ded_pen")[0].value) || 0;
		var ded_heal = parseInt(document.getElementsByName("ded_heal")[0].value) || 0;
		var ded_long_care = parseInt(document
				.getElementsByName("ded_long_care")[0].value) || 0;
		var ded_hire = parseInt(document.getElementsByName("ded_hire")[0].value) || 0;
		var ded_income_tax = parseInt(document
				.getElementsByName("ded_income_tax")[0].value) || 0;
		var ded_local_tax = parseInt(document
				.getElementsByName("ded_local_tax")[0].value) || 0;
		var ded_funeral = parseInt(document.getElementsByName("ded_funeral")[0].value) || 0;

		var sal_sum = sal_normal + sal_meal + sal_childcare + sal_job + sal_car
				+ sal_long + sal_duty + sal_reward + sal_vac;
		var ded_sum = ded_pen + ded_heal + ded_long_care + ded_hire
				+ ded_income_tax + ded_local_tax + ded_funeral;

		var sal_real = sal_sum - ded_sum;

		document.getElementsByName("sal_sum")[0].value = sal_sum;
		document.getElementsByName("ded_sum")[0].value = ded_sum;
		document.getElementsByName("sal_real")[0].value = sal_real;
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
	<br>
				<h2>&nbsp;&nbsp;&nbsp;&nbsp;給与入力・管理</h2>
				<br/>
				<div style="width: 50%; float: left;">
				<br><br>
					<table width=100% border=1>
						<tr>
							<th style="width:70px">社員番号</th>
							<th style="width:70px">氏名</th>
							<th>部署</th>
							<th style="width:40px">職位</th>
							<th>年度</th>
							<th>帰属月</th>
							<th>支給総額</th>
							<th>控除総額</th>
							<th>手取り額</th>
							<th></th>
							<!-- 
							<th>基本給</th>
							<th>食費</th>
							<th>保育手当</th>
							<th>職責手当</th>
							<th>車両維持費</th>
							<th>勤続手当</th>
							<th>当直手当</th>
							<th>賞与金</th>
							<th>休日手当</th>
							<th>選択</th> -->
						</tr>

						<!-- 조인된 표 다오 서비스 리스트 <> 사용 -->
						<c:forEach var="employee" items="${employeesalaries}">
							<%--                 	<c:forEach var="salary" items="${salaries}"> --%>
							<tr>
								<td>${employee.emp_no}</td>
								<td>${employee.name_kor}</td>
								<td>${employee.dept}</td>
								<td>${employee.job}</td>
								<td>${employee.sal_year}</td>
								<td>${employee.sal_month}</td>
								<td>${employee.sal_sum}</td>
								<td>${employee.ded_sum}</td>
								<td>${employee.sal_real}</td>
								<%-- <td>${employee.sal_normal}</td>
								<td>${employee.sal_meal}</td>
								<td>${employee.sal_childcare}</td>
								<td>${employee.sal_job}</td>
								<td>${employee.sal_car}</td>
								<td>${employee.sal_long}</td>
								<td>${employee.sal_duty}</td>
								<td>${employee.sal_reward}</td>
								<td>${employee.sal_vac}</td> --%>
								<td>
									<form action="salary.do" method="post">
										<input type=hidden name="sal_month" value="${employee.sal_month}">
										<input type=hidden name="emp_no" value="${employee.emp_no}">
										<input type=submit value="選択">
									</form>
								</td>
							</tr>
						</c:forEach>
						<%-- </c:forEach> --%>
					</table>
				</div>

				<div style="width: 50%; float: right;">

					<form action="salary.do" method="post">


						<div>
							<h3>給与詳細</h3>
							<div>
							<br>
							<select name = "sal_month" >
								<option value="">選択</option>
								<option value="1" ${sal_month == '1' ? 'selected' : ''}>1</option>
								<option value="2" ${sal_month == '2' ? 'selected' : ''}>2</option>
								<option value="3" ${sal_month == '3' ? 'selected' : ''}>3</option>
								<option value="4" ${sal_month == '4' ? 'selected' : ''}>4</option>
								<option value="5" ${sal_month == '5' ? 'selected' : ''}>5</option>
								<option value="6" ${sal_month == '6' ? 'selected' : ''}>6</option>
								<option value="7" ${sal_month == '7' ? 'selected' : ''}>7</option>
								<option value="8" ${sal_month == '8' ? 'selected' : ''}>8</option>
								<option value="9" ${sal_month == '9' ? 'selected' : ''}>9</option>
								<option value="10" ${sal_month == '10' ? 'selected' : ''}>10</option>
								<option value="11" ${sal_month == '11' ? 'selected' : ''}>11</option>
								<option value="12" ${sal_month == '12' ? 'selected' : ''}>12</option>
							</select> 月
								
							</div>
							<table width=80% border=1>

								<tr>
									<td>*基本給</td>
									<td><input type="text" name="sal_normal"
										value="${sal.sal_normal}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>*食費</td>
									<td><input type="text" name="sal_meal"
										value="${sal.sal_meal}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>保育手当</td>
									<td><input type="text" name="sal_childcare"
										value="${sal.sal_childcare}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>職責手当</td>
									<td><input type="text" name="sal_job"
										value="${sal.sal_job}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>車両維持費</td>
									<td><input type="text" name="sal_car"
										value="${sal.sal_car}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>勤続手当</td>
									<td><input type="text" name="sal_long"
										value="${sal.sal_long}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>当直手当</td>
									<td><input type="text" name="sal_duty"
										value="${sal.sal_duty}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>賞与金</td>
									<td><input type="text" name="sal_reward"
										value="${sal.sal_reward}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>休日手当</td>
									<td><input type="text" name="sal_vac"
										value="${sal.sal_vac}" oninput="calculateTotal()"></td>
								</tr>
							</table>
						</div>

						<div><br>
							<h3>控除</h3><br>
							<table width=80% border=1>
								<tr>
									<td>年金</td>
									<td><input type="text" name="ded_pen"
										value="${sal.ded_pen}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>健康保険</td>
									<td><input type="text" name="ded_heal"
										value="${sal.ded_heal}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>長期養育保険</td>
									<td><input type="text" name="ded_long_care"
										value="${sal.ded_long_care}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>雇用保険</td>
									<td><input type="text" name="ded_hire"
										value="${sal.ded_hire}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>所得税</td>
									<td><input type="text" name="ded_income_tax"
										value="${sal.ded_income_tax}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>住民税</td>
									<td><input type="text" name="ded_local_tax"
										value="${sal.ded_local_tax}" oninput="calculateTotal()"></td>
								</tr>
								<tr>
									<td>互助会費</td>
									<td><input type="text" name="ded_funeral"
										value="${sal.ded_funeral}" oninput="calculateTotal()"></td>
								</tr>
							</table>
						</div>

						<div><br>
							<h3>合計</h3><br>
							<table width=80% border=1>
								<tr>
									<td>支給総額</td>
									<td><input type="text" name="sal_sum"
										value="${sal.sal_sum}" readonly></td>
								</tr>
								<tr>
									<td>控除総額</td>
									<td><input type="text" name="ded_sum"
										value="${sal.ded_sum}" readonly></td>
								</tr>
								<tr>
									<td>手取り額</td>
									<td><input type="text" name="sal_real"
										value="${sal.sal_real}" readonly></td>
								</tr>
							</table>
						</div>
					<br><br>
						<input type="hidden" name="emp_no" value="${emp_no}">
						 <input type="submit" name="button" value="保存">
						  <input type="submit" name="button" value="修正">
						<input type="submit" name="button" value="削除">
					</form>

				</div>
				
				
				 <!-- モーダルポップアップ --> <%--     <div id="employeeModal" style="display:none;">
        <jsp:include page="사원별급여내역모달2.jsp"></jsp:include>
    </div>

    <script>
        function showEmployeeModal() {
            document.getElementById('employeeModal').style.display = 'block';
        }

        function selectEmployee(empNo, empType, nameKor, dept, job, state) {
            document.getElementsByName("emp_no")[0].value = empNo;
            document.getElementsByName("emp_type")[0].value = empType;
            document.getElementsByName("name_kor")[0].value = nameKor;
            document.getElementsByName("dept")[0].value = dept;
            document.getElementsByName("job")[0].value = job;
            document.getElementsByName("state")[0].value = state;
            document.getElementById('employeeModal').style.display = 'none';
        }
    </script> --%></td>
		</tr>

	</table>
	<br><br><br><br>
	<tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
</body>
</html>
