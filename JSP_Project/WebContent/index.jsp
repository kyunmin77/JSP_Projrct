<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="Include 테스트" %>
<%@ page buffer="none" %>
<%@ page autoFlush="true" %>
<%@ page isThreadSafe="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
		<title>給与管理</title>
	<style>
    body {
        font-family: Arial, sans-serif;
        color: #333;
        margin: 0;
        padding: 0;
    }
    
   /*  h2 {
        color: #6a0dad; /* 연보라색 */
        font-size: 24px;
    } */
    
    table {
        width: 100%;
        border-collapse: collapse;
    }
    
    th, td {
        padding: 8px;
        text-align: left;
       /*  border: 1px solid #ddd; */
    }
    
   /*  th {
        background-color: #f4f4f4;
    }
    
    td {
        background-color: #fafafa;
    } */
    
    button, input[type="submit"] {
        background-color: #6a0dad; /* 연보라색 */
        color: white;
        border: none;
        border-radius: 4px;
        padding: 8px 12px;
        cursor: pointer;
        font-size: 14px;
    }
    
    button:hover, input[type="submit"]:hover {
        background-color: #550a8a; /* 더 진한 연보라색 */
    }
    
    form {
        margin: 0;
    }
    
    .container {
        padding: 20px;
    }
    
    .form-group {
        margin-bottom: 15px;
    }
    
    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }
    
    .form-group input, .form-group select {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    
    .form-group input[type="radio"] {
        width: auto;
        margin-right: 5px;
    }
    
    .button-group {
        display: flex;
        gap: 10px;
    }
    
    .button-group form {
        margin: 0;
    }
    
    .header, .footer {
       /*  background-color: #6a0dad; /* 연보라색 */ */
        color: white;
        padding: 10px 0;
        text-align: center;
    }
    
    .footer {
        margin-top: 20px;
    }
    
</style>
	</head>
	<body>
		<table width='100%'>
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
			<tr>
				<td>
					<br>
					
					<!-- 메인화면 부분 -->
					<div style="width: 70%; float: left;" align=left>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<h2>正会員：　${company.cp_name }様、いらっしゃいませ。</h2>
					</div>
					<div style="width: 30%; float: right;" align=right>

						<table>
							<tr>	
								<td><h3>TODAY</h3></td>
							</tr>
							<tr>	
								<td><h3>${date}</h3></td>
							</tr>
						</table>
					</div>
					<br><br><br><br/>
					<!-- 배너 넣는곳 -->
					<div width=70% align=center>
					
						<div class="banner-content">
       						 <img src="./images/banner.png" width="100%" height="300" alt="Company banner"/>
 
    					</div>
					
					</div>
					<!-- 베너 끝 -->
					
					<br><br><br><br><br><br>
					<div style="display :flex; justify-content: space-evenly;">
					<div align=center style="width: 49%;">
						<form action="company.do" method='get'>
							<h3>会員基本情報</h3>
							<table width= 70% border="1">
								<tr>
									<td>商号</td><td>${company.cp_name }</td><td>代表者</td><td>${company.ceo_name }</td>
								</tr>
								<tr>
									<td>事業者番号</td><td colspan=3>${company.bs_regnum }</td>
								</tr>
								<tr>
									<td>電話番号</td><td>${company.bs_phone }</td><td>	ファックス番号</td><td>${company.bs_fax }</td>
								</tr>
								<tr>
									<td>担当者</td><td>${emp.name_kor }</td><td>メール</td><td>${emp.email }</td>
								</tr>
								<tr>
									<td>主取引銀行</td><td colspan=3>${emp.bank }</td>			
								</tr>
							</table>
							<br><br>
							
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
<!-- 							<input type='submit' value='修正'> -->
						</form>
					</div>
					
					<div align=center style="width: 49%;">
						<form action="empSet.do" method='get'>
						<h3>社員現況</h3>
							<table width= 70%  border="1">
								<tr>
									<td>社員番号</td><td>氏名</td><td>部署</td><td>状態</td>
								</tr>
								<c:forEach var="empl" items="${emp_list}">
								<tr>
									<td>${empl.emp_no }</td><td>${empl.name_kor }</td><td>${empl.dept }</td><td>${empl.state }</td>
								</tr>
								
								</c:forEach>
							</table>
							<br><br>
							
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
						<!-- 	<input type='submit' value='社員管理'> -->
						</form>
					</div>
					</div>
				</td>
			</tr>
			
			<tr>
				<td align='left'>
				<br><br><br><br>
					<%@ include file="Site_footer.jsp" %>
				</td>
			</tr>

			
		</table>
	</body>
</html>