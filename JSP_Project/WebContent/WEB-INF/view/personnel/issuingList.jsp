<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>諸 証明書発給台帳<</title>
<link rel="stylesheet" type='text/css' href="purple.css">
<script  language="JavaScript">
		function confirm(){
			var ans = confirm("本当に発給台帳を「全削除」しますか？");
			if (ans==true){
				return true;
			}else
				alert("削除が取り消されました");
			return false;
			}
</script>

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
				<td align='left'>
				<br>
				<h2>&nbsp;&nbsp;&nbsp;諸 証明書発給台帳</h2>
				<br>
				<form action='issuingList.do' method='post'>
				
				<table width=80% border=1>
					<tr>
						<td>選択	</td><td>発給番号</td><td>発給台帳</td><td>発給用途</td>
						<td>区分</td><td>氏名</td><td>部署</td><td>職位</td><td>発給日</td><td>印刷</td>
					</tr>
					
					<c:forEach var='isu' items='${isu_set}'>
					<tr>
						<td><input type='checkbox' name='isu_num' value="${isu.isu_num}"></td><td>${isu.isu_led}</td><td>${isu.isu_num}</td><td>${isu.isu_pur}</td>
						<td>${isu.emp_type}</td><td>${isu.name_kor}</td><td>${isu.dept}</td><td>${isu.job}</td><td>${isu.isu_date}</td><td><input type='button' value='印刷'></td>
					</tr>
					</c:forEach>

					
				</table>
				<br/><br/><br/>
					<div style="display: flex; justify-content: flex-start; gap: 10px;">
						<input type='submit' value='選択削除'>
					
				</form>
				<form action='issuingList.do' onSubmit="return confirm()" method='post'>
						<input type='hidden' name='delAll' value='true'><input type='submit' value='選択削除'>
				</form>
					</div>	
				</td>
			</tr>
			
		</table> <br/><br/><br/><br/>
		<tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
	</body>
</html>