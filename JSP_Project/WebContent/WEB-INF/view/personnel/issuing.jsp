<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="Include 테스트" %>
<%@ page buffer="none" %>
<%@ page autoFlush="true" %>
<%@ page isThreadSafe="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type='text/css' href="purple.css">
		<title>諸 証明書発給</title>
		
		<script>
	        function successJoin() {
	            alert('証明書台帳に保存されました');
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
					<!--  --><br>
					
					<h2>&nbsp;&nbsp;&nbsp;諸 証明書発給</h2>
					
					<div style="width: 30%; float: left;">
						<br/><br/><br/>
						<table width=80% border=1>
							<tr>
								<td>区分</td><td style="width:60px">氏名</td><td style="width:90px">部署</td><td>職位</td><td>状態</td><td>選択</td>
							</tr>
							<c:forEach var='emp' items="${emp_list}">
							<form action='issuing.do' method='post'>
							<tr>
								<td>${emp.emp_type}</td><td>${emp.name_kor}</td><td>${emp.dept}</td><td>${emp.job}</td><td>${emp.state}</td>
								<td>
								<input type=hidden name='emp_no' value='${emp.emp_no}'>
								<input type=hidden name='isu_led' value='${isu}'>
								<input type=submit value='選択'>
								</td>
							</tr>
							</form>
							</c:forEach>
						</table>
					</div>
					
					<div style="width: 70%; float: right;">
						<div align='left'>
						<br/>
						
						<form action='issuing.do' method='post'>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type='radio' name='isu_led' value='在職' checked>在職証明書&nbsp;&nbsp;
								<input type='radio' name='isu_led' value='経歴'>経歴証明書&nbsp;&nbsp;
								<input type='radio' name='isu_led' value='退職'>退職証明書&nbsp;&nbsp;
								<input type='submit' value='選択'>
						</form>
						<form action='saveIssuing.do' method='post' onSubmit='successJoin()'>
							<div align='left'>
			
							</div>
							<br/>
							<table width=60% border=1>
								<tr>
									<td style="height:50px" colspan=5 align=center><h2><b>在職証明書</b></h2></td>
								</tr>
								<tr>
									<td style="height:80px" rowspan=2>人的事項</td><td>氏名</td><td>${emp_pick.name_kor}</td><td>住民番号</td><td>${emp_pick.id_number}</td>
								</tr>
								<tr>
									<td>住所</td><td colspan=3>${emp_pick.addr}</td>
								</tr>
								<tr>
									<td style="height:150px" rowspan=3>在職事項</td><td>会社名</td><td>${cpn.cp_name}</td><td>事業者番号</td><td>${cpn.bs_num}</td>
								</tr>
								<tr>
									<td>部署</td><td>${emp_pick.dept}</td><td>職位</td><td>${emp_pick.job}</td>
								</tr>
								<tr>
									<td>入社日</td><td>${emp_pick.hired_date}</td><td>勤続年数</td><td>-</td>
								</tr>
								<tr>
									<td style="height:80px" colspan=2 align=center>発給用途</td><td colspan=3>
									<select name="isu_pur">
										<option value="">選択</option>
										<option value="ビザ申請用">ビザ申請用</option>
										<option value="銀行提出用">銀行提出用</option>
										<option value="官公庁提出用">官公庁提出用</option>
										<option value="学校提出用">学校提出用</option>
										<option value="兵務庁提出用">兵務庁提出用</option>
										<option value="関連課題の提出用">関連課題の提出用</option>
									</select>
									</td>
								</tr>
								<tr>
									<td style="height:300px" align='center' colspan=5> 
										<textarea name="note" cols='80' rows='15'>上記の者は在職証明書の発行日現在、上記のように当社に在職していることを証明します。
										</textarea>
										<br/><br/>					
										発給日: <input type='text' name='isu_date' value="${today}" readonly>
									</td>
								</tr>
								<tr>
									<td style="height:40px" colspan=2>発給部署</td>
									<td>
									<select name="dept">
										<option value="">選択</option>
										<option value="社長室">社長室</option>
										<option value="開発チーム">開発チーム</option>
										<option value="コンテンツチーム">コンテンツチーム</option>
										<option value="業務支援チーム">業務支援チーム</option>
										<option value="デザインチーム">デザインチーム</option>
										<option value="管理チーム">管理チーム</option>
										<option value="企画戦略チーム">企画戦略チーム</option>
									</select>
									</td>
										<td>連絡先</td><td>[全国]3939-4649</td>
									</tr>
									<tr>
										<td style="height:50px" colspan=5 align=center><h3><b>(株)JSPプロジェクト</b></h3></td>
									</tr>
							
							</table>
							
							<br/><br/>
							
							<input type=hidden name="emp_isu" value='${emp_pick.emp_no}'>
							<input type=hidden name="isu_led" value='${isu}'>
							<input type='submit' value='発給'> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type='button' value='印刷'>
							
						</form>
						
					</div>
					</div>
					
					<!--  -->
				</td>
			</tr>
			
		</table>
		 <br/><br/><br/><br/>
		 <tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
	</body>
</html>



