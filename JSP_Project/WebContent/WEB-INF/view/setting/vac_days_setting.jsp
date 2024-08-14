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

<title>休暇日数 管理</title>

</head>
<body>
	<table width='100%'>
			<td>
				<form action="vac_days" method="get">
					<table width='100%'>
						<tr>
							<td>
							 <input type="text" placeholder="検索語を入力してください。" name="searchWord">
								<input type="submit" name="button" value="検索"> 
								<input type="submit" name="button" value="全体表示"> 
								<span style ="float:right;"> 
									<select>
									<option value="状態">状態別</option>
									<option value="在職" selected>在職</option>
									<option value="退職">退職</option>
									</select> 
								</span>
							</td>
						</tr>
						</form>
						<tr>
							<td>
								<table width='100%' border="1">
									<tr align="center">
										<td><strong>区分</strong></td>
										<td><strong>社員番号</strong></td>
										<td><strong>名前</strong></td>
										<td><strong>部署</strong></td>
										<td><strong>職位</strong></td>
										<td><strong>入社日</strong></td>
										<td><strong>休暇日数</strong></td>
									</tr>

									<c:forEach var="vac_days" items="${list_vac_days}">
										<form action="vacDays.do" method=post>
										<tr>
											<td>${vac_days.emp_type}</td>
											<td>${vac_days.emp_no}</td>
											<td>${vac_days.name_kor}</td>
											<td>${vac_days.dept}</td>
											<td>${vac_days.job}</td>
											<td>${vac_days.hired_date}</td>
											<td>${vac_days.has_vac_days}</td>
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
	
	</div>
	</td>
	</tr>
</body>
</html>