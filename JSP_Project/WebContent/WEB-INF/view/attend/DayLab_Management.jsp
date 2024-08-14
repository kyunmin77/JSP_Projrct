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
<title>日雇い管理</title>
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
		<h2>&nbsp;&nbsp;&nbsp;日雇い管理</h2>
	<br>
		<div style="width: 50%; float: left;">
			<tr>
				<td>
					<table border=1 style='border-collapse: collapse'>
						<tr>
							<td>
								<input type=search placeholder='キーワードを入力してください'> 
								<input type=submit value=検索> <input type=submit value=全体表示>*多重選択
							</td>

							<td><select style='float: right'>
									<!-- 요소가 많거나, css에선 ;무조건 -->
									<option>状態別</option>
									<option>在職</option>
									<option>退職</option>
							</select></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width=100% border=1 style='border-collapse:collapse'>
					<tr align=center>
						<td>勤務記録</td>
						<td>区分</td>
						<td>社員番号</td>
						<td>氏名</td>
						<td>部署</td>
					</tr>
					<c:forEach var='emp' items='${emp_list}'>
					<tr align=center>
						<form action="daylab.do" method="post">
							<td><input type=hidden name='emp_b' value='${emp.emp_no }'><input type='submit' value=管理></td>
						</form>
						<td>${emp.emp_type}</td>
						<td>${emp.emp_no}</td>
						<td>${emp.name_kor}</td>
						<td>${emp.dept}</td>
					</c:forEach>

					</tr>
					<form action="daylab.do" method="post">
					
				</table>
				</td>
			</tr>
		</div>
		<div style="width: 49%; float: right;">
			<table>
				<tr>
					<td>社員名<select name="emp_no">
					<c:forEach var='emp' items='${emp_list}'>
						<option value="${emp.emp_no}">${emp.name_kor}</option>
					</c:forEach></td></select>
				</tr>
				<tr>
					<td>勤務日付<input type="date" name="datth_date"></td>
				</tr>
				<tr>
					<td>現場・プロジェクト<select name="datth_name">
							<option selected>選択</option>
							<option value="現場1">現場1</option>
							<option value="現場2">現場2</option>
							<option value="研究所">研究所</option>
							<option value="開発プロジェクト">開発プロジェクト</option>
							<option value="第1工場">第1工場</option>
					</select></td>
				</tr>
				<tr>
					<td>日当<input type="text" name="datth_pay"></td>
				</tr>
				<tr>
					<td>支給率<input type="text" Value="0.1" name="datth_payrate"></td>
				</tr>
				<tr>
					<td>所得税<input type="text" name="datth_income_tax" ></td>
				</tr>
				<tr>
					<td>地方所得税<input type="text" name="datth_local_tax" ></td>
				</tr>
				<tr>
					<td>実支給額<input type="text" value='' name="datth_realpayment" ></td>
				</tr>
				<tr>
					<td align="center"><input type="submit" value="保存"></td>
				</tr>
			</table>
		</div>
	</form>
		
	
	<table>
		<%-- <tr >
			<td>성명:${emp_list[0].name_kor} <input type=text name='name_kor' id='emp' value='당신은 사랑받기 위해 태어난 사람' readonly></td>
        	<td>부서:${dept}</td>
       		<td>직위:${job}</td>
		</tr> --%>
		<tr>
			 <td><select>
            <option>選択</option>
            <option>2020</option>
            <option>2021</option>
            <option>2022</option>
            <option>2023</option>
            <option>2024</option>
         </select></td>
         <td><select>
            <option>全体</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
         </select></td>

		</tr>
		</table>
	
		<table width=100% border=1 style='border-collapse: collapse'>
			<tr align=center>
				<td>番号</td>
				<td>勤務日付</td>
				<td>現場・プロジェクト</td>
				<td>日当</td>
				<td>支給率</td>
			<!-- 	<td>지급액</td> -->
				<td>所得税</td>
				<td>地方所得税</td>
				<td>実支給額</td>
				<!-- <td>수정/삭제</td> -->
			</tr>
			<c:forEach var='day' items='${day_list}' varStatus='s'>
				<tr align=center>
					<td>${s.index+1}</td>
					<td>${day.datth_date}</td>
					<td>${day.datth_name}</td>
					<td>${day.datth_pay}</td>
					<td>${day.datth_payrate}</td>
<%-- 					<td>${day.datth_payment}</td> --%>
					<td>${day.datth_income_tax}</td>
					<td>${day.datth_local_tax}</td>
					<td>${day.datth_realpayment}</td>
					<!-- <td><input type="button" value="수정">/<input type="button" value="삭제"></td> -->
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