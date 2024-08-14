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
<title>社員現況・管理</title>

</head>
<body>
	
	<table width='100%'>
		<tr height='100'>
			<td align='left'><%@ include file="../../../Site_header.jsp"%></td>
		</tr>
		<tr>
			<td align='left'><%@ include file="../../../Site_menu.jsp"%></td>
		</tr>
		<tr>
			<td>
				<div align=left>
				<br>
					<h2>&nbsp;&nbsp;&nbsp;&nbsp;社員現況・管理</h2>
				</div>
				<br/>
				<form action="empSet.do" method="get">
					<table width='80%'>
						<tr>
							<td><select name="searchCategori">
									<option value="all" selected>全体</option>
									<option value="name_kor">名前</option>
									<option value="emp_no">社員番号</option>
									<option value="dept">部署</option>
							</select> <input type="text" placeholder="検索語を入力してください。" name="searchWord">
								<input type="submit" name="button" value="検索"> <input
								type="submit" name="button" value="全体表示"> <spanstyle
									="float:right;"> <select>
									<option value="all" selected>雇用形態別</option>
									<option value="正社員">正社員</option>
									<option value="契約社員">契約社員</option>
									<option value="臨時社員">臨時社員</option>
									<option value="派遣社員">派遣社員</option>
									<option value="委嘱社員">委嘱社員</option>
									<option value="日雇い社員">日雇い社員</option>
								</select> <select>
									<option value="状態別">状態別</option>
									<option value="在職" selected>在職</option>
									<option value="退職">退職</option>
								</select> <select>
									<option value="all">リスト数</option>
									<option value="10">10個ずつ</option>
									<option value="30" selected>30個ずつ</option>
									<option value="50" selected>50個ずつ</option>
									<option value="100" selected>100個ずつ</option>
								</select> </span></td>
						</tr>
						</form>
						<tr>
							<td>
								<table width='100%' border="1">
									<tr align="center">

										<td></td>
										<td><strong>区分</strong></td>
										<td><strong>入社日</strong></td>
										<td><strong>社員番号</strong></td>
										<td><strong>名前</strong></td>
										<td><strong>部署</strong></td>
										<td><strong>職位</strong></td>
										<td><strong>住民番号</strong></td>
										<td><strong>携帯</strong></td>
										<td><strong>メール</strong></td>
										<td><strong>退社日</strong></td>
										<td><strong>状態</strong></td>
									</tr>

									<c:forEach var="empset" items="${list_empset}">
										<form action="register.do" method=post>
										<tr>
											<td><input type=hidden name="emp_search"
												value="${empset.emp_no}"><input type=submit
												value="詳細"></td>
											<td>${empset.emp_type}</td>
											<td>${empset.hired_date}</td>
											<td>${empset.emp_no}</td>
											<td>${empset.name_kor}</td>
											<td>${empset.dept}</td>
											<td>${empset.job}</td>
											<td>${empset.id_number}</td>
											<td>${empset.phone}</td>
											<td>${empset.email}</td>
											<td>${empset.retired_date}</td>
											<td>${empset.state}</td>
										</tr>
										</form>
									</c:forEach>
								</table>
							</td>
						</tr>
					</table>
					
			</td>
		</tr>
	</table>
	<br><br><br><br>
	<tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
	</div>
	</td>
	</tr>
</body>
</html>