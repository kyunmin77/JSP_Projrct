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
<title>退職給与入力・管理</title>
<style>
	

/* 모달 창 스타일 */
.modal {
	display: none; /* 기본적으로 모달 창을 숨깁니다. */
	position: fixed; /* 화면에 고정 */
	z-index: 1; /* 다른 요소 위에 표시 */
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto; /* 내용이 넘칠 경우 스크롤 가능 */
	background-color: rgb(0, 0, 0); /* 검정 배경 */
	background-color: rgba(0, 0, 0, 0.4); /* 배경에 투명도 추가 */
}

/* 모달 콘텐츠 스타일 */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 화면 중앙에 위치 */
	padding: 20px;
	border: 1px solid #888;
	width: 80%; /* 모달 창 너비 */
}

/* 닫기 버튼 스타일 */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<table width='100%'>
		<tr height='100'>
			<td align='left'><%@ include file="../../../Site_header.jsp"%>
			</td>
		</tr>
		<tr>
			<td align='left'><%@ include file="../../../Site_menu.jsp"%>
			</td>
		</tr>
		<tr>
			<td><br>
				<h2>退職給与支給 社員選択</h2><br>

				<form action="${pageContext.request.contextPath}/retirePay.do"
					method="get">
					<input type="text" placeholder="社員検索"> <input type="submit"
						value="検索"> <input type="submit" value="全体表示"> <span
						style="float: right;"> <select>
							<option>部署別</option>
							<option>社長室</option>
							<option>開発チーム</option>
							<option>コンテンツチーム</option>
							<option>業務支援チーム</option>
							<option>デザインチーム</option>
							<option>管理チーム</option>
							<option>企画戦略チーム</option>
					</select>
					</span>
					
				</form>
				<form action="${pageContext.request.contextPath}/retirePayment.do"
					method="get">
					<table border="1" width="100%">
						<tr>
							<td align="center"></td>
							<td align="center">区分</td>
							<td align="center">社員番号</td>
							<td align="center">氏名</td>
							<td align="center">部署</td>
							<td align="center">職位</td>
							<td align="center">状態</td>
						</tr>
						<c:forEach var="n" items="${list}">
							<tr>
								<td align="center">
									<input type="radio" name="emp_no" value="${n.emp_no}"></td>
								<td align="center">${n.emp_type}</td>
								<td align="center">${n.emp_no}</td>
								<td align="center">${n.name_kor}</td>
								<td align="center">${n.dept}</td>
								<td align="center">${n.job}</td>
								<td align="center">${n.state}</td>
							</tr>
						</c:forEach>
						<tr>
							<td align="center" colspan="7">
								<input type="submit" value="退職給付の計算"/>
								<input type="reset" value="選択取り消し" />
							</td>
						</tr>
					</table>
				</form>

			</td>
		</tr>
	</table>
	<br><br><br><br>
	<tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
</body>
</html>