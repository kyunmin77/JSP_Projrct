<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="Include 테스트" %>
<%@ page buffer="none" %>
<%@ page autoFlush="true" %>
<%@ page isThreadSafe="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
		<title>급여관리</title>
		
		<script>
	        function successJoin() {
	            alert('사용자 정보가 저장되었습니다.');
	    </script>
		
	</head>
	<body>
		<table width='100%' border='0'>
			<tr height='100'>
				<td align='left'>
					<%@ include file="Site_header.jsp" %>
				</td>
			</tr>
			<tr>
				<td align='left'>
					<%@ include file="Site_menu.jsp" %>
				</td>
			</tr>
			<tr >
				<td align='center'>
					<form action="vac.do" method='post'>
					<h3>휴가항목 테스트</h3>
					<table width='700' border='1'>
					<tr>
						<td>휴가항목:</td><td><input type='text' name='vac_name' value='${vacation_items.vac_name }'></td>
					</tr>
					<tr>
						<td>
						적용기간:</td><td colspan='3'>
						<input type="date" name="vac_start" value='${vacation_items.vac_start }'> ~
						<input type="date" name="vac_end" value='${vacation_items.vac_end }'></td>
					</tr>
					
					<tr>
						<td>사용여부:</td>
							<td>
								<form action method="get">
							        <input type="radio" name="vac_used" value="사용"> 사용<br>
							        <input type="radio" name="vac_used" value="사용안함"> 사용안함<br>
								</form>
							</td>
						</tr>
					</table>
					
					<br/>
					<br/>
					<input type='submit' value='저장'>
					</form>
					
				</td>
			</tr>
			
		</table>
	</body>
</html>