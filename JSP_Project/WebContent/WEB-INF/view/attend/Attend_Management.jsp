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
<title>勤怠管理</title>

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
				<h2>&nbsp;&nbsp;&nbsp;勤怠管理</h2>
				<br>
	<div  style='display:flex;'>
	<div style="width: 50%; float: left;">
		<tr>
			<td>
			
				<table border=1 style='border-collapse: collapse'>
					<tr>
						<td><input type=search placeholder='キーワードを入力してください'> <input
							type=submit value=検索> <input type=submit value=全体表示>
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
				<table width=100% border=1 style='border-collapse: collapse'>
					<tr align=center>
						<td>勤怠記録</td>
						<td>区分</td>
						<td>社員番号</td>
						<td>氏名</td>
						<td>部署</td>
						<td>職位</td>
					</tr>
					
					<c:forEach var='emp' items='${emp_list}'>
						<tr align=center>
							<form action="attend.do" method="post">
								<td><input type=hidden name='emp_b' value='${emp.emp_no}'>
									<input type="submit" name='atd_button' value='管理'></td>
							</form>
							<td>${emp.emp_type}</td>
							<td>${emp.emp_no}</td>
							<td>${emp.name_kor}</td>
							<td>${emp.dept}</td>
							<td>${emp.job}</td>

						</tr>
					</c:forEach>
				</table>
				<form action="attend.do" method="post">
			</td>
		</tr>
	</div>
	<br>
	<div align=center style=" width: 49%; float: right;">
	<br><br>
		<table >
			<tr>
				<td>社員名<select name="emp_no">
				<c:forEach var='emp' items='${emp_list}'>
					<option value="${emp.emp_no}">${emp.name_kor}</option>
				</c:forEach></td></select>
			</tr>
			<tr>
				<td>入力日付<input type="date" name="atth_inserted"></td>
			</tr>
			<tr>
				<td>勤怠日付<select name="atth_name">
						<option selected>選択</option>
						<option value="有給">有給</option>
						<option value="半休">半休</option>
						<option value="遅刻">遅刻</option>
						<option value="早退">早退</option>
						<option value="外勤">外勤</option>
						<option value="休日勤労">休日勤労</option>
						<option value="延長勤労">延長勤労</option>
						<option value="褒賞休暇">褒賞休暇</option>
						<option value="夜間勤務">夜間勤務</option>
						<option value="請願休暇">請願休暇</option>
				</select></td>
			</tr>
			<tr>
				<td>期間<input type="date" name="atth_start"
					value='${atd_picked.atth_start }'><input type="date"
					name="atth_end" value='${atd_picked.atth_end }'></td>
			</tr>
			<tr>
				<td>勤怠日数<input type="text" name="atth_days"
					value='${atd_picked.atth_days }'>&nbsp;&nbsp;<input type="button"
					value=休暇日数現況></td>
			</tr>
			<tr>
				<td>金額(手当)<input type="text" name="atth_cost"
					value='${atd_picked.atth_cost }'></td>
			</tr>
			<tr>
				<td>摘要<input type="text" name="atth_note"
					value='${atd_picked.atth_note }'></td>
			</tr>
			<tr>
				<td align="center"><input type="submit" name="atd_button"
					value="保存"> <%-- <input type="hidden" value="${emp.emp_no }"> --%>
				</td>
			</tr>
		</table>
	</div>
	</div>
	</form>

<br>
	<div>
		<tr>
			<%-- <td>성명:${emp_list[0].name_kor} <input type=text name='name_kor' id='emp' value='당신은 사랑받기 위해 태어난 사람' readonly></td>
        	<td>부서:${dept}</td>
       		<td>직위:${job}</td> --%>
		</tr>
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
	</div>

	<table width=100% border=1 style='border-collapse: collapse'>
		<tr align=center>
			<td>番号</td>
			<td>入力</td>
			<td>日付</td>
			<td>勤怠項目</td>
			<td>勤怠機関</td>
			<td>勤怠日数</td>
			<td>金額摘要</td>
		</tr>
		<c:forEach var='atd' items='${atd_list}' varStatus='s'>
			<tr align=center>
				<td>${s.index+1}</td>
				<td>${atd.atth_inserted}</td>
				<td>${atd.atth_name}</td>
				<td>${atd.atth_start}~${atd.atth_end}</td>
				<td>${atd.atth_days}</td>
				<td>${atd.atth_cost}</td>
				<td>${atd.atth_note}</td>
				<%-- <td><form action='attend.do' method='post'>
					<input type="hidden" name="atd_name_picked" value="${atd.emp_no }">
					<input type="submit" name="atd_button" value="선택">
					</form>
					
					/
					<td>수정/삭제</td>
					
					<form action='' method='post'>
					<input type="submit" value="삭제">
					<input type="hidden" name="del_atd_name" value="${atd.emp_no }">
					</form></td> --%>
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