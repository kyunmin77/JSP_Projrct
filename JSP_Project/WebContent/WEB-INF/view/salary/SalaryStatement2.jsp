<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="Include 테스트"%>
<%@ page buffer="none"%>
<%@ page autoFlush="true"%>
<%@ page isThreadSafe="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type='text/css' href="purple.css">
<title>給与明細書</title>

<script>
	function successJoin() {
		alert('証明書台帳に保存されました');
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
<br>
				<h2>&nbsp;&nbsp;&nbsp;給与明細書</h2>

				<div style="width: 30%; float: left;">
					<br />

					<div>
						<select name="sal_year">

							<option value="2024">2024年</option>

						</select>
						<form action="statement.do" method="post">

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

					<table width=80% border=1>
						<tr>
							<td>区分</td>
							<td>氏名（韓国語）</td>
							<td>手取り額</td>
							<td>選択</td>
						</tr>
						<c:forEach var='emp' items="${employeesalaries}">
							<form action='statement.do' method='post'>
								<tr>
									<td>${emp.emp_type}</td>
									<td>${emp.name_kor}</td>
									<td><fmt:formatNumber value="${emp.sal_real}"
											type="number" maxFractionDigits="0" /></td>
									<td><input type=hidden name='emp_no' value='${emp.emp_no}'>
										<input type=submit value='選択'></td>
								</tr>
							</form>
						</c:forEach>
					</table>
				</div>

				<div style="width: 70%; float: right;">
					<div align='left'>
						<br />

							<form action='statement.do' method='post' onSubmit='successJoin()'>
							<div align='left'></div>
							<br />
							<table width=60% border=1>
								<tr>
									<td style="height: 50px" colspan=5 align=center><h2>
											2024年${sal.sal_month}<b>給与明細書</b>
										</h2></td>
								</tr>
								<tr>
									<td style="height: 80px" rowspan=2 align="center">人事事項</td>
									<td align=center>氏名（韓国語）</td>
									<td align=center>${sal.name_kor}</td>
									<td align=center>社員番号</td>
									<td align=center>${sal.emp_no}</td>
								</tr>
								<tr>
									<td align=center>部署</td>
									<td align=center>${sal.dept}</td>
									<td align=center>職位</td>
									<td align=center>${sal.job}</td>
								</tr>
								<tr>
									<td colspan=5 align=center>給与内訳</td>
								</tr>
								<tr>
									<td style="height: 150px" rowspan=11 align="center">支給項目</td>
									<td align="center">項目名</td>
									<td colspan=2 align=center>金額</td>
									<td colspan=2 align=center>算出方法</td>
								</tr>
								<tr>
									<td align="center">基本給</td>
									<td colspan=2 align=center><fmt:formatNumber value="${sal.sal_normal}"
											type="number" maxFractionDigits="0" /></td>
									<td colspan=2 align=center></td>
								</tr>
								<tr>
									<td align="center">食費</td>
									<td colspan=2 align=center><fmt:formatNumber value="${sal.sal_meal}"
											type="number" maxFractionDigits="0" /></td>
									<td colspan=2 align=center></td>
								</tr>
								<tr>
									<td align="center">保育手当</td>
									<td colspan=2 align=center><fmt:formatNumber value="${sal.sal_childcare}"
											type="number" maxFractionDigits="0" /></td>
									<td colspan=2 align=center></td>
								</tr>
								<tr>
									<td align="center">職責手当</td>
									<td colspan=2 align=center><fmt:formatNumber value="${sal.sal_job}"
											type="number" maxFractionDigits="0" /></td>
									<td colspan=2 align=center></td>
								</tr>
								<tr>
									<td align="center">車両維持費</td>
									<td colspan=2 align=center><fmt:formatNumber value="${sal.sal_car}"
											type="number" maxFractionDigits="0" /></td>
									<td colspan=2 align=center></td>
								</tr>
								<tr>
									<td align="center">勤続手当</td>
									<td colspan=2 align=center><fmt:formatNumber value="${sal.sal_long}"
											type="number" maxFractionDigits="0" /></td>
									<td colspan=2 align=center></td>
								</tr>
								<tr>
									<td align="center">当直手当</td>
									<td colspan=2 align=center><fmt:formatNumber value="${sal.sal_duty}"
											type="number" maxFractionDigits="0" /></td>
									<td colspan=2 align=center></td>
								</tr>
								<tr>
									<td align="center">賞与金</td>
									<td colspan=2 align=center><fmt:formatNumber value="${sal.sal_reward}"
											type="number" maxFractionDigits="0" /></td>
									<td colspan=2 align=center></td>
								</tr>
								<tr>
									<td align="center">休日手当</td>
									<td colspan=2 align=center><fmt:formatNumber value="${sal.sal_vac}"
											type="number" maxFractionDigits="0" /></td>
									<td colspan=2 align=center></td>
								</tr>
								<tr>
									<td colspan=3 align=center>支給総額</td>
									<td colspan=3 align=center><fmt:formatNumber value="${sal.sal_sum}"
											type="number" maxFractionDigits="0" /></td>
								</tr>

								<tr>
									<td style="height: 150px" rowspan=9 align="center">控除項目</td>
									<td align="center">項目名</td>
									<td align="center">金額</td>
									<td colspan=2 align=center>算出方法</td>
								</tr>
								<tr>
									<td align="center">国民年金</td>
									<td colspan=2 align="center"><fmt:formatNumber value="${sal.ded_pen}"
											type="number" maxFractionDigits="0" /></td>
									<td align=center></td>
								</tr>
								<tr>
									<td align="center">健康保険</td>
									<td colspan=2 align="center"><fmt:formatNumber value="${sal.ded_heal}"
											type="number" maxFractionDigits="0" /></td>
									<td align=center></td>
								</tr>
								<tr>
									<td align="center">長期療養保険</td>
									<td colspan=2 align="center"><fmt:formatNumber value="${sal.ded_long_care}"
											type="number" maxFractionDigits="0" /></td>
									<td align=center></td>
								</tr>
								<tr>
									<td align="center">雇用保険</td>
									<td colspan=2 align="center"><fmt:formatNumber value="${sal.ded_hire}"
											type="number" maxFractionDigits="0" /></td>
									<td align=center></td>
								</tr>
								<tr>
									<td align="center">所得税</td>
									<td colspan=2 align="center"><fmt:formatNumber value="${sal.ded_income_tax}"
											type="number" maxFractionDigits="0" /></td>
									<td align=center></td>
								</tr>
								<tr>
									<td align="center">地方所得税</td>
									<td colspan=2 align="center"><fmt:formatNumber value="${sal.ded_local_tax}"
											type="number" maxFractionDigits="0" /></td>
									<td align=center></td>
								</tr>
								<tr>
									<td align="center">互助会費</td>
									<td colspan=2 align="center"><fmt:formatNumber value="${sal.ded_funeral}"
											type="number" maxFractionDigits="0" /></td>
									<td align=center></td>
								</tr>
								<tr>
									<td colspan=2 align=center>控除総額</td>
									<td colspan=3 align=center><fmt:formatNumber value="${sal.ded_sum}"
											type="number" maxFractionDigits="0" /></td>
								</tr>
								<tr>
									<td colspan=5 align=center>ご尽力いただき、誠にありがとうございます。お疲れ様でした。</td>
								</tr>
								<tr>
									<td style="height: 50px" colspan=5 align=center><h3>
											<b>(株)JSPプロジェクト</b>
										</h3></td>
								</tr>

							</table>

							<br /> <br /> <input type=hidden name="emp_no"
								value="${sal.emp_no}"> <input type='submit'
								value='発給'> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
								type='button' value='プリント'>

						</form>

					</div>
				</div> <!--  -->
			</td>
		</tr>

	</table>
	<br />
	<br />
	<br />
	<br />
	<tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
</body>
</html>



