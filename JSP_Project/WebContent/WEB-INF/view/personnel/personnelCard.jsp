<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type='text/css' href="purple.css">
<title>人事記録カード</title>
</head>
<body>

<table width='100%' border='0'>
	<tr height='100'>
		<td align='left'>
			<%@ include file="/../../../Site_header.jsp" %>
		</td>
	</tr>
	<tr>
		<td align='left'>
			<%@ include file="/../../../Site_menu.jsp" %>
		</td>
	</tr>
	<tr >
		
		<td align='center'>
		<br>
		<div align=left><h2>&nbsp;&nbsp;&nbsp;&nbsp;人事記録カード</h2></div>
		<br/>
			<form action='personCard.do' method='post'>
				
				<table width=50% border=1>
					<tr>
						<td>選択</td><td>区分</td><td>社員番号</td><td>氏名</td><td>部署</td><td>職位</td><td>状態</td>
					</tr>
					<c:forEach var='emp' items="${emp_list}">
						<tr>
							<td><input type='checkbox' name="emp_no" value='${emp.emp_no}'></td>
							<td>${emp.emp_type}</td><td align=center>${emp.emp_no}</td><td>${emp.name_kor}</td><td>${emp.dept}</td><td>${emp.job}</td><td>${emp.state}</td>
						</tr>
					</c:forEach>
					
					
				</table>
				<br>
				<input type='submit' value='選択'>
			
			</form>
		<br/>
		
		<table width=50% border=1>
		<tr>
			<td>
				<table width=100% border=1>
					<tr>
						<td style="height: 90px" width=50% rowspan=3 align=center><h2><b>人事記録カード</b></h2></td>
						<td width=25%>社員番号</td><td>${personnel.emp.emp_no}</td>
					</tr>
					<tr>
						<td>入社日</td><td>${personnel.emp.hired_date}</td>
					</tr>
					<tr>
						<td>退社日</td><td>${personnel.rtr.retired_date}</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td style="height: 180px">
				<table width=100% height=100% border=1>
					<tr>
						<td width=15%>氏名(韓国語)</td><td width=25%>${personnel.emp.name_kor}</td><td width=25%>氏名(英語)</td><td width=25%>${personnel.emp.name_eng}</td>
					</tr>
					<tr>
						<td>住民番号</td><td>${personnel.emp.id_number}</td><td>社員区分</td><td>${personnel.emp.emp_type}</td>
					</tr>
					<tr>
						<td>住所</td><td colspan=3>(${personnel.emp.post_code}) - ${personnel.emp.addr}</td>
					</tr>
					<tr>
						<td>携帯電話</td><td>${personnel.emp.phone}</td><td>連絡先</td><td>${personnel.emp.home_number}</td>
					</tr>
					<tr>
						<td>メール</td><td colspan=3>${personnel.emp.email}</td>
					</tr>
				</table>
				</td>
			</tr>
		<tr>
			<td style= "height: 220px" colspan=4>
				<table width=100% height=100% border=1>
				<tr>
					<td width=17% rowspan=2>国民年金</td><td width=20%>記号番号</td><td colspan=3>${personnel.ins.pension_num}</td>
				</tr>
				<tr>
					<td width=20%>取得日</td><td>${personnel.ins.pension_start}</td><td width=20%>喪失日</td><td>${personnel.ins.pension_end}</td>
				</tr>
				<tr>
					<td rowspan=2>健康保険</td><td>記号番号</td><td colspan=3>${personnel.ins.heal_num}</td>
				</tr>
				<tr>
					<td>取得日</td><td>${personnel.ins.heal_start}</td><td>喪失日</td><td>${personnel.ins.heal_end}</td>
				</tr>
				<tr>
					<td rowspan=2>雇用保険</td><td>記号番号</td><td colspan=3>${personnel.ins.hire_num}</td>
				</tr>
				<tr>
					<td>取得日</td><td>${personnel.ins.hire_start}</td><td>喪失日</td><td>${personnel.ins.hire_end}</td>
				</tr>
				<tr>
					<td rowspan=2>労災保険</td><td>記号番号</td><td colspan=3>${personnel.ins.indus_num}</td>
				</tr>
				<tr>
					<td>取得日</td><td>${personnel.ins.indus_start}</td><td>喪失日</td><td>${personnel.ins.indus_end}</td>
				</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td width=17% style= "height: 75px" colspan=4>
				<table width=100% height=100% border=1>
					<tr>
						<td width=17% style="height: 25px" rowspan=3>学歴</td><td>学校名</td><td>入学年月</td><td>卒業年月</td><td>専攻</td><td>履修</td>
					</tr>
					<tr>
						<td style="height: 25px">${personnel.edu[0].school_name}</td><td>${personnel.edu[0].school_start}</td><td>${personnel.edu[0].school_end}</td><td>${personnel.edu[0].school_major}</td><td>${personnel.edu[0].school_state}</td>
					</tr>
					<tr>
						<td style="height: 25px">${personnel.edu[1].school_name}</td><td>${personnel.edu[1].school_start}</td><td>${personnel.edu[1].school_end}</td><td>${personnel.edu[1].school_major}</td><td>${personnel.edu[1].school_state}</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan=4>
				<table width=100% height=100% border=1>
					<tr>
						<td width=17% style="height: 50px" rowspan=3>兵役</td><td>兵役区分</td><td>${personnel.mil.mil}</td><td>未畢事由</td><td>${personnel.mil.mil_no_reason}</td>
					</tr>
					<tr>
						<td width=17% style="height: 25px">軍別</td><td>最終階級</td><td>兵科</td><td>服務期間</td>
					</tr>
					<tr>
						<td style="height: 25px">${personnel.mil.mil_type}</td><td>${personnel.mil.mil_rank}</td><td>${personnel.mil.mil_job}</td><td>${personnel.mil.mil}</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan=4>
				<table width=100% height=100% border=1>
					<tr>
						<td width=17% style="height: 50px" rowspan=3>経歴</td><td>会社名</td><td>入社日</td><td>退社日</td><td>最終職位</td><td>担当業務</td>
					</tr>
					<tr>
						<td style="height: 25px">${personnel.car[0].firm}</td><td>${personnel.car[0].firm_start}</td><td>${personnel.car[0].firm_end}</td><td>${personnel.car[0].firm_job}</td><td>${personnel.car[0].firm_task}</td>
					</tr>
					<tr>
						<td style="height: 25px">${personnel.car[1].firm}</td><td>${personnel.car[1].firm_start}</td><td>${personnel.car[1].firm_end}</td><td>${personnel.car[1].firm_job}</td><td>${personnel.car[1].firm_task}</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan=4>
				<table width=100% height=100% border=1>
					<tr>
						<td width=17% style="height: 50px" rowspan=3>資格・免許</td><td>種類</td><td>取得日</td><td>発行機関</td><td>備考</td>
					</tr>
					<tr>
						<td style="height: 25px">${personnel.lcs[0].lsc_name}</td><td>${personnel.lcs[0].lsc_date}</td><td>${personnel.lcs[0].lsc_dep}</td><td>${personnel.lcs[0].lsc_note}</td>
					</tr>
					<tr>
						<td style="height: 25px">${personnel.lcs[1].lsc_name}</td><td>${personnel.lcs[1].lsc_date}</td><td>${personnel.lcs[1].lsc_dep}</td><td>${personnel.lcs[1].lsc_note}</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan=4>
				<table width=100% height=100% border=1>
					<tr>
						<td width=17% style="height: 50px" rowspan=3>語学能力</td><td>外国語名</td><td width=15%>テスト</td><td>点数</td><td>取得日</td><td>読解</td><td>作文</td><td>会話</td>
					</tr>
					<tr>
						<td style="height: 25px">${personnel.lang[0].lang_name}</td><td>${personnel.lang[0].lang_test}</td><td>${personnel.lang[0].lang_score}</td><td>${personnel.lang[0].lang_date}</td><td>${personnel.lang[0].lang_read}</td><td>${personnel.lang[0].lang_listen}</td><td>${personnel.lang[0].lang_speak}</td>
					</tr>
					<tr>
						<td style="height: 25px">${personnel.lang[1].lang_name}</td><td>${personnel.lang[1].lang_test}</td><td>${personnel.lang[1].lang_score}</td><td>${personnel.lang[1].lang_date}</td><td>${personnel.lang[1].lang_read}</td><td>${personnel.lang[1].lang_listen}</td><td>${personnel.lang[1].lang_speak}</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan=4>
				<table width=100% height=100% border=1>
					<tr>
						<td width=17% style="height: 25px" rowspan=3>退職事項</td><td>退職区分</td><td>退職日</td><td>退職事由</td><td>退職金</td><td>退職後連絡先</td>
					</tr>
					<tr>
						<td style="height: 25px">${personnel.rtr.retire_type}</td><td>${personnel.rtr.retired_date}</td><td>${personnel.rtr.retire_reason}</td><td>${personnel.rtr.retire_cost}</td><td>${personnel.rtr.retire_phone}</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td width=100% align=center><h2>(株)JSPプロジェクト</h2></td>
		</tr>		
		</table>
		
		<br/><br/>
		<input type='button' value='印刷'> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type='button' value='エクセル ダウンロード'>
				
	</td></tr>
</table>
<br/><br/><br/><br/>
<tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
	
</body>
</html>