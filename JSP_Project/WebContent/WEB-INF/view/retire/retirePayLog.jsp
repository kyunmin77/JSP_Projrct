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
<link rel="stylesheet" type='text/css' href="purple.css">
<title>退職給与明細書</title>
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
<br>
				<h2>退職給与明細書</h2>
<br>
				<div style="width: 30%; float: left;">
					
					 
					
					<table width="80%" border="1">
					
						<tr>
						<form action="${pageContext.request.contextPath}/retirePayLog.do" method="post">
							<td colspan="4">*支給年度<select name="ret_year">
									<option value="2024" ${ret_year == '2024' ? 'selected' : ''}selected>2024年</option>
									<option value="2023" ${ret_year == '2023' ? 'selected' : ''}>2023年</option>
									<option value="2022" ${ret_year == '2022' ? 'selected' : ''}>2022年</option>
									<option value="2021" ${ret_year == '2021' ? 'selected' : ''}>2021年</option>
									<option value="2020" ${ret_year == '2020' ? 'selected' : ''}>2020年</option>
									<option value="2019" ${ret_year == '2019' ? 'selected' : ''}>2019年</option>
									<option value="2018" ${ret_year == '2018' ? 'selected' : ''}>2018年</option>
									<option value="2017" ${ret_year == '2017' ? 'selected' : ''}>2017年</option>
									<option value="2016" ${ret_year == '2016' ? 'selected' : ''}>2016年</option>
							</select>
							<input type="submit" name="button" value="検索"/>
							</td>
						</form>
						</tr>
					
						<tr>
							<td align="center">区分</td>
							<td align="center">氏名</td>
							<td align="center">実支給額</td>
							<td align="center">作成</td>							
						</tr>
						<c:forEach var="n" items="${list}">
								<tr>
									<td align="center">${n.emp_type}</td>
									<td align="center">${n.name_kor}</td>
									<td align="center">${n.ret_realpay}</td>
									
									<td align="center">
									<form action="${pageContext.request.contextPath}/retirePayLog.do" method="post">
									<input type="hidden" name="emp_picked" value="${n.emp_no}">
									<input type="hidden" name="ret_year" value="${ret_year}">
									<input type="submit" name="button" value="作成">
									</form>
									</td>
								</tr>
						</c:forEach>
					</table>
					
				</div>

				<div style="width: 70%; float: right;">
					<div align='left'>
						
							<div align='left'></div>
							
							<table width=60% border=5 style="border-collapse: collapse;">
								<tr>
									<td style="height: 50px" colspan=6 align=center>
									<h2><b>退職給与明細書</b></h2>
									</td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>社員情報</strong></td>
								</tr>
								<tr>
									<td align="center">名前</td>
									<td align="center" colspan="2">${rpr.name_kor}</td>
									<td align="center">入社日</td>
									<td align="center" colspan="2">${rpr.hired_date}</td>
								</tr>
								<tr>
									<td align="center">部署</td>
									<td align="center" colspan="2">${rpr.dept}</td>
									<td align="center">退職日</td>
									<td align="center" colspan="2">${rpr.retired_date}</td>
								</tr>
								<tr><td align="center">職位</td>
									<td align="center" colspan="2">${rpr.job}</td>
									<td align="center">勤続日数</td>
									<td align="center" colspan="2">${rpr.days_service}日</td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>給与内訳</strong></td>
								</tr>
								<tr>
									<td align="center" rowspan=2>算定期間</td>
									<td align="center">${dayTerm.prev3_first}</td>
									<td align="center">${dayTerm.prev2_first}</td>
									<td align="center">${dayTerm.this_last}</td>
									<td align="center">${dayTerm.prev3_first}</td>
									<td align="center" rowspan=2>&nbsp;計&nbsp;</td>
								</tr>
								<tr>
									<td align="center">${dayTerm.prev3_last}&nbsp;</td>
									<td align="center">${dayTerm.prev2_last}</td>
									<td align="center">${dayTerm.prev1_last}</td>
									<td align="center">${dayTerm.this_last}</td>
								</tr>
								<tr>
									<td align="center">算定日数</td>
									<td align="center">${dayTerm.prev3_days}日</td>
									<td align="center">${dayTerm.prev2_days}日</td>
									<td align="center">${dayTerm.prev1_days}日</td>
									<td align="center">${dayTerm.this_days}日</td>
									<td align="center">${dayTerm.prev3_days+dayTerm.prev2_days+dayTerm.prev1_days+dayTerm.this_days}日</td>
								</tr>
								<tr>
									<td align="center">給与総額</td>
									<td align="center">${dayTerm.prev3_sal_sum}ウォン</td>
									<td align="center">${dayTerm.prev2_sal_sum}ウォン</td>
									<td align="center">${dayTerm.prev1_sal_sum}ウォン</td>
									<td align="center">${dayTerm.this_sal_sum}ウォン</td>
									<td align="center">計</td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>他の所得</strong></td>
								</tr>
								<tr>
									<td align="center"  colspan="2">支給項目</td>
									<td align="center"  colspan="2">１年間支給額</td>
									<td align="center"  colspan="2">３か月分</td>
								</tr>
								<tr>
									<td align="center"  colspan="2">${rpr.ret_other_name}</td>
									<td align="center"  colspan="2">${rpr.ret_other_cost}ウォン</td>
									<td align="center"  colspan="2">${rpr.ret_other_cost/4}ウォン</td>
								</tr>
								<tr>
									<td colspan="6"></td>
								</tr>
								<tr>
									<td align="center">退職慰労金</td>
									<td align="center" colspan="2">${rpr.ret_prize}ウォン</td>
									<td align="center">解雇予告手当て</td>
									<td align="center" colspan="2">${rpr.ret_notice}ウォン</td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>退職所得</strong></td>
								</tr>
								<tr>
									<td align="center" rowspan="2">１日平均賃金</td>
									<td align="center">３か月総計</td>
									<td align="center" colspan="2">給与総額計+３か月分他の所得計</td>
									<td align="center" colspan="2">${rpr.ret_3mon_sum}ウォン</td>
								</tr>
								<tr>
									<td align="center">１日平均賃金</td>
									<td align="center" colspan="2">３か月総計/算定日数</td>
									<td align="center" colspan="2">${rpr.ret_day_avg}ウォン</td>
								</tr>
								<tr>
									<td align="center"><strong>退職所得</strong></td>
									<td align="center" colspan="3">(１日平均賃金＊勤続日数/365)+慰労金+手当</td>
									<td align="center" colspan="2">${rpr.ret_pay}</td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>控除内訳</strong></td>
								</tr>
								<tr>
									<td align="center" colspan="2">退職所得税</td>
									<td align="center" colspan="2">地方所得税</td>
									<td align="center" colspan="2" style="width: 150px;">控除総額</td>
								</tr>
								<tr>
									<td align="center" colspan="2">${rpr.ret_income_tax}ウォン</td>
									<td align="center" colspan="2">${rpr.ret_local_tax}ウォン</td>
									<td align="center" colspan="2">${rpr.ret_income_tax+rpr.ret_local_tax}ウォン</td>
								</tr>
								<tr>
									<td colspan="6" bgcolor="lightgrey"><strong>手取り額</strong></td>
								</tr>
								<tr>
									<td align="center" colspan="3">退職給与-控除総額</td>
									<td align="center" colspan="3">${rpr.ret_realpay}ウォン</td>
								</tr>
								<tr>
									<td style="height: 50px" colspan=6 align=center>
									<br/>
									上記金額を当該者の退職金精算額として定めて領収する
									<br/>
									<br/>
									<h3><b>(株)JSPプロジェクト</b></h3>
									</br>
									</br>
									<input type="button" value="印刷"/>
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
	<tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
</body>
</html>