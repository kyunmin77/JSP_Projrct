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
		<link rel="stylesheet" type='text/css' href="purple.css">
		<title>ユーザ情報</title>
		
		<script>
	        function successJoin() {
	            alert('ユーザーの情報が保存されました');
	            }
	            
	    </script>
		
	</head>
	<body>
	<br>
	<br>
		<div >
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
		</div>
		<br>
			<tr>
				<td align='center'>
				<div align=left>
					<h2>&nbsp;&nbsp;&nbsp;&nbsp;ユーザー情報</h2>
				</div>
			<div style="display:flex;">
				<div style="width: 70%;" align=center>
					<br/>
					<form action="company.do" method='post' onSubmit='successJoin()'>
					<h3>会社情報</h3>
					<table width='90%' border='1'>
					<tr>
						<td>*商号</td><td><input type='text' name='cp_name' value='${company.cp_name }'></td>
						<td>*代表者職級/代表者</td>
						<td><input type='text' name='ceo_job' value='${company.ceo_job }'> / 
						<input type='text' name='ceo_name' value='${company.ceo_name }'></td>
					</tr>
					<tr>
						<td>*事業者番号</td><td><input type='text' name='bs_num' value='${company.bs_num } '></td>
						<td>法人登録番号</td><td><input type='text' name='bs_regnum' value='${company.bs_regnum }'></td>
					</tr>
					<tr>
						<td>設立日</td><td><input type='date' name='founded_date'value='${company.founded_date }'></td>
						<td>ホームページ</td><td><input type='text' name='hp' value='${company.hp }'></td>
					</tr>
					<tr>
						<td>
						*郵便番号/事業者住所</td><td colspan='3'><input type='text' name='bs_post' value='${company.bs_post }'> / 
						<input type='text' name='bs_addr' value='${company.bs_addr }'></td>
					</tr>
					<tr>
						<td>*電話番号</td><td><input type='text' name='bs_phone' value='${company.bs_phone }'></td>
						<td>ファックス番号</td><td><input type='text' name='bs_fax' value='${company.bs_fax }'></td>
					</tr>
					<tr>
						<td>業態</td><td><input type='text' name='bs_type' value='${company.bs_type }'></td>
						<td>種目</td><td><input type='text' name='cp_type' value='${company.cp_type }'></td>
					</tr>
					</table>
					<br/>
					<h3>給与支給情報</h3>
					<table width='90%' border='1'>
					<tr>
						<td>給与算定期間</td><td><input type='date' name='calc_start' value='${company.calc_start }'>
					 ~ <input type='date' name='calc_end' value='${company.calc_end }'></td>
						<td>給与支払日</td><td><input type='date' name='payday' value='${company.payday }'></td>
					</tr>
					<tr>
						<td>金融機関</td><td><input type='text' name='bs_bank' value='${company.bs_bank }'></td>
						<td>口座番号</td><td><input type='text' name='bs_account' value='${company.bs_account }'></td>
						<td>口座名義</td><td><input type='text' name='bs_acc_name' value='${company.bs_acc_name }'></td>
					</tr>
					</table>
					<br/>
				</div>
				<div style="width: 30%;">
					<br>
					<h3>担当者情報</h3>
					<table width='90%' border='1'>
					<tr>
						<td>氏名</td><td><input type='text' name='emp_no' value='${employee.name_kor }'></td>
					</tr>
					<tr>
						<td>部署</td><td><input type='text' name='dept' value='${employee.dept }'></td>
					</tr>
					<tr>
						<td>職位</td><td><input type='text' name='job' value='${employee.job }'></td>
					</tr>
					<tr>
						<td>電話番号</td><td><input type='text' name='home_number' value='${employee.home_number }'></td>
					</tr>
					<tr>
						<td>携帯電話</td><td><input type='text' name='phone' value='${employee.phone }'></td>
					</tr>
					<tr>
						<td>メール</td><td><input type='text' name='email' value='${employee.email }'></td>
					</tr>
					</table>
					
					<br/>
					<input type='submit' value='保存'>
					</form>
					
			</div>
				</td>
			</tr>
		</div>
		
		<br><br><br><br>
		<tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>
	</body>
</html>