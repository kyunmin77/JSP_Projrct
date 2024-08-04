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
			<td>
				<h2>퇴직급여지급 사원선택</h2>

				<form action="${pageContext.request.contextPath}/retirePayment.do"
					method="get">
					<input type="text" placeholder="社員検索"> <input type="submit"
						value="検索"> <input type="submit" value="전체보기"> <span
						style="float: right;"> <select>
							<option>부서별</option>
							<option>사장실</option>
							<option>개발팀</option>
							<option>콘텐츠팀</option>
							<option>업무지원팀</option>
							<option>디자인팀</option>
							<option>관리팀</option>
							<option>기획전략팀</option>
					</select>
					</span>
					<table border="1" width="100%">
						<tr>
							<td align="center"></td>
							<td align="center">구분</td>
							<td align="center">사원번호</td>
							<td align="center">성명</td>
							<td align="center">부서</td>
							<td align="center">직위</td>
							<td align="center">상태</td>
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
								<input type="submit" value="퇴직급여 계산하기"/>
								<input type="reset" value="선택취소" />
							</td>
						</tr>
					</table>
				</form>

			</td>
		</tr>
	</table>
</body>
</html>