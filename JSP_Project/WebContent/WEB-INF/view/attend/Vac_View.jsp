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
<title>休暇照会</title>
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

		<tr>
			<td>
					<table width=100% border=1 style='border-collapse:collapse'>
						<tr>
							<td>
								<input type=text placeholder='キーワードを入力してください'> 
								<input type=submit value=検索> 
								<input type=submit value=全体表示>*多重選択
							</td>
							
							<td>
								<select style='float: right'>
									<!-- 요소가 많거나, css에선 ;무조건 -->
									<option>状態別</option>
									<option>在職</option>
									<option>退職</option>
								</select>
							</td>
						</tr>
					</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100% border=1 style='border-collapse:collapse'>
					<tr align=center>					
						<td>区分</td>
						<td>社員番号</td>
						<td>氏名</td>
						<td>部署</td>
						<td>職位</td>
						<td>休暇項目</td>
						<td>全体</td>
						<td>使用</td>
						<td>残余</td>
						<td>管理</td>
					</tr>
					<c:forEach var='vac' items='${vac_list}'>
					<tr align=center>
						<td>${vac.emp_type }</td>
						<td>${vac.emp_no }</td>
						<td>${vac.name_kor }</td>
						<td>${vac.dept }</td>
						<td>${vac.job }</td>
						<td>${vac.vac_name }</td>
						<td>${vac.has_vac_days }</td>
						<td>${vac.vac_used }</td>
						<td>${vac.has_vac_days - vac.vac_used }</td>
						<form action="vacView.do" name='' method='post'>
							<td><input type=hidden name='emp_b' value='${vac.emp_no }'><input type='submit' value=管理></td>
						</form>
					</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
	</table>
		<table width=100% border=1 style='border-collapse: collapse'>
			<tr align=center>
				<td>番号</td>
				<td>入力日付</td>
				<td>休暇項目</td>
				<td>勤怠項目</td>
				<td>期間</td>
				<td>日数</td>
				<td>摘要</td>
			</tr>
			<c:forEach var='day' items='${day_list }' varStatus='s'>
				<tr align=center>
					<td>${s.index+1 }</td>
					<td>${day.atth_inserted }</td>
					<td>${day.vac_name }</td>
					<td>${day.atth_name }</td>
					<td>${day.atth_start }~${day.atth_end }</td>
					<td>${day.atth_days }</td>
					<td>${day.atth_note }</td>
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