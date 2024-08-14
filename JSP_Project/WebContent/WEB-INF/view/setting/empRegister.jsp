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
		<title>社員登録</title>
		
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
			<tr>
				<td align='left'>
				<br>
				<h2>&nbsp;&nbsp;&nbsp;&nbsp;社員登録</h2>
				<br/>
			<div style="width: 30%; float: left;">
			
				<form action = "personCard.do" method="post">
				<br>
					<table width=70% border='1'>
							<tr>
								<td>社員番号</td>
								<td><input type='text' name='emp_no' value="${personnel.emp.emp_no}" readonly></td>
							</tr>
							<tr>
								<td>氏名</td>
								<td><input type='text' name='name_kor' value="${personnel.emp.name_kor}" readonly></td>
							</tr>
							<tr>
								<td>部署</td>
								<td><input type='text' name='dept' value="${personnel.emp.dept}" readonly></td>
							</tr>
							<tr>
								<td>職位</td>
								<td><input type='text' name='job' value="${personnel.emp.job}" readonly></td>
							</tr>
							<tr>
								<td>入社日</td>
								<td><input type='text' name='hired_date' value="${personnel.emp.hired_date}" readonly></td>
							</tr>
					</table>
					<br/>
					<input type="submit" value="人事記録カード">	
				</form>
			
			</div>
			
			<div style="width: 70%; float: right;">
			
				<h3>基本情報</h3>
				<br>
				<form action="register.do" method="post">	
				
					<table width=90% border='1'>
						<tr>
							<td>*社員番号 </td><td><input type="text" name="emp_no" value="${New_no}"></td>
							<td>*雇用形態 </td>
							<td><select name="emp_type">
									<option value="">選択</option>
									<option value="正社員"${personnel.emp.emp_type == '正社員' ? 'selected' : ''}>正社員</option>
									<option value="契約社員"${personnel.emp.emp_type == '契約社員' ? 'selected' : ''}>契約社員</option>
									<option value="臨時社員"${personnel.emp.emp_type == '臨時社員' ? 'selected' : ''}>臨時社員</option>
									<option value="派遣社員"${personnel.emp.emp_type == '派遣社員' ? 'selected' : ''}>派遣社員</option>
									<option value="委嘱社員"${personnel.emp.emp_type == '委嘱社員' ? 'selected' : ''}>委嘱社員</option>
									<option value="日雇い社員"${personnel.emp.emp_type == '日雇い社員' ? 'selected' : ''}>日雇い社員</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>*氏名(韓国語) </td><td><input type="text" name="name_kor" value="${personnel.emp.name_kor}"></td>
							<td>氏名(英語) </td><td><input type="text" name="name_eng" value="${personnel.emp.name_eng}"></td>
						</tr>
						<tr>
							<td>*入社日 </td><td><input type="date" name="hired_date" value="${personnel.emp.hired_date}"></td>
							<td>退社日 </td><td><input type="text" name="retired_date" value="${personnel.rtr.retired_date}" readonly></td>
						</tr>
						<tr>
							<td>部署 </td>
							<td><select name="dept">
									<option value="">選択</option>
									<option value="社長室"${personnel.emp.dept == '社長室' ? 'selected' : ''}>社長室</option>
									<option value="開発チーム"${personnel.emp.dept == '開発チーム' ? 'selected' : ''}>開発チーム</option>
									<option value="コンテンツチーム"${personnel.emp.dept == 'コンテンツチーム' ? 'selected' : ''}>コンテンツチーム</option>
									<option value="業務支援チーム"${personnel.emp.dept == '業務支援チーム' ? 'selected' : ''}>業務支援チーム</option>
									<option value="デザインチーム"${personnel.emp.dept == 'デザインチーム' ? 'selected' : ''}>デザインチーム</option>
									<option value="管理チーム"${personnel.emp.dept == '管理チーム' ? 'selected' : ''}>管理チーム</option>
									<option value="企画戦略チーム"${personnel.emp.dept == '企画戦略チーム' ? 'selected' : ''}>企画戦略チーム</option>
								</select>
							</td>
							<td>職位 </td>
							<td><select name="job" value="${personnel.emp.job}">
									<option value="">選択</option>
									<option value="理事"${personnel.emp.job == '理事' ? 'selected' : ''}>理事</option>
									<option value="次長"${personnel.emp.job == '次長' ? 'selected' : ''}>次長</option>
									<option value="社長"${personnel.emp.job == '社長' ? 'selected' : ''}>社長</option>
									<option value="部長"${personnel.emp.job == '部長' ? 'selected' : ''}>部長</option>
									<option value="課長"${personnel.emp.job == '課長' ? 'selected' : ''}>課長</option>
									<option value="代理"${personnel.emp.job == '代理' ? 'selected' : ''}>代理</option>
									<option value="就任"${personnel.emp.job == '就任' ? 'selected' : ''}>就任</option>
									<option value="社員"${personnel.emp.job == '社員' ? 'selected' : ''}>社員</option>
									<option value="室長"${personnel.emp.job == '室長' ? 'selected' : ''}>室長</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>内・外国人 </td>
							<td><select name="nationality">
									<option value="">選択</option>
									<option value="内国人"${personnel.emp.nationality == '内国人' ? 'selected' : ''}>内国人</option>
									<option value="外国人"${personnel.emp.nationality == '外国人' ? 'selected' : ''}>外国人</option>
								</select>
							</td>
							<td>住民番号 </td><td><input type="text" name="id_number" value="${personnel.emp.id_number}"></td>
						</tr>
						<tr>
							<td>住所 </td><td colspan='3'>〒<input type="text" name="post_code" value="${personnel.emp.post_code}"> / 
							<input type="text" name="addr" value="${personnel.emp.addr}"></td>
						</tr>
						<tr>
							<td>電話番号 </td><td><input type="text" name="home_number" value="${personnel.emp.home_number}"></td>
							<td>携帯電話 </td><td><input type="text" name="phone" value="${personnel.emp.phone}"></td>
						</tr>
						<tr>
							<td>メール </td><td><input type="text" name="email" value="${personnel.emp.email}"></td>
							<td>sns </td><td><input type="text" name="sns" value="${personnel.emp.sns}"></td>
						</tr>
						<tr>
							<td>備考 </td><td colspan='3'><textarea name="note" cols='90' rows='3'>${personnel.emp.note}</textarea></td>
						</tr>
					</table>
				<br/>
				<h3>給与・４大保険</h3>
				<br>
					<table width='90%' border='1'>
						<tr>
							<td>４大保険 </td>
							<td>
								<input type='checkbox' name='pension' value='pension'${personnel.ins.pension == 'pension' ? 'checked' : ''}>国民年金 &nbsp;&nbsp;
								<input type='checkbox' name='insur_heal' value='insur_heal'${personnel.ins.insur_heal == 'insur_heal' ? 'checked' : ''}>健康保険(30%割引) &nbsp;&nbsp;
								<input type='checkbox' name='insur_care' value='insur_care'${personnel.ins.insur_care == 'insur_care' ? 'checked' : ''}>老人長期療養保険(30%割引) &nbsp;&nbsp;
								<input type='checkbox' name='insur_hire' value='insur_hire'${personnel.ins.insur_hire == 'insur_hire' ? 'checked' : ''}>雇用保険 &nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>甲勤税</td>
							<td>
								<input type='radio' name='gapgeunse' value='勤労所得者'${personnel.ins.gapgeunse == '勤労所得者' ? 'checked' : ''}>勤労所得者
								税額 <select name="wage_earner_per">
										<option value="">選択</option>
										<option value="10%"${personnel.ins.wage_earner_per == '10%' ? 'selected' : ''}>10%</option>
										<option value="30%"${personnel.ins.wage_earner_per == '30%' ? 'selected' : ''}>30%</option>
										<option value="50%"${personnel.ins.wage_earner_per == '50%' ? 'selected' : ''}>50%</option>
										<option value="60%"${personnel.ins.wage_earner_per == '60%' ? 'selected' : ''}>60%</option>
								   	</select> &nbsp;&nbsp;
								<input type='radio' name='gapgeunse' value='事業所得者'${personnel.ins.gapgeunse == '事業所得者' ? 'checked' : ''}>事業所得者(3.3%)&nbsp;&nbsp;
								<input type='radio' name='gapgeunse' value='日雇い社員'${personnel.ins.gapgeunse == '日雇い社員' ? 'checked' : ''}>日雇い社員(2.97%)&nbsp;&nbsp;<br>
								<input type='radio' name='gapgeunse' value='他の所得者'${personnel.ins.gapgeunse == '他の所得者' ? 'checked' : ''}>他の所得者(8.8%)&nbsp;&nbsp;
								<input type='radio' name='gapgeunse' value='免除'${personnel.ins.gapgeunse == '免除' ? 'checked' : ''}>免除
								<br/>
								<input type='checkbox' name='youth_red' value='youth_red'${personnel.ins.youth_red == 'youth_red' ? 'selected' : ''}>中小企業の青年所得税(50%割引) &nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>*ドゥルヌリ社会保険支援</td>
							<td>
								<input type='radio' name='durunuri' value='なし'${personnel.ins.durunuri == 'なし' ? 'checked' : ''}>なし&nbsp;&nbsp;
								<input type='radio' name='durunuri' value='新規加入者80'${personnel.ins.durunuri == '新規加入者80' ? 'checked' : ''}>新規加入者(80% 支援)&nbsp;&nbsp;
								<input type='radio' name='durunuri' value='新規加入者90'${personnel.ins.durunuri == '新規加入者90' ? 'checked' : ''}>新規加入者(90% 支援)
							</td>
						</tr>
						<tr>
							<td>*基本給</td><td><input type="text" name="salary" value="${personnel.ins.salary}">ウォン</td>
						</tr>
						<tr>
							<td>基本年金 基準所得額</td><td><input type="text" name="pension_month" value="${personnel.ins.pension_month}">ウォン</td>
						</tr>
						<tr>
							<td>健康保険 報酬月額</td><td><input type="text" name="heal_month" value="${personnel.ins.heal_month}">ウォン</td>
						</tr>
						<tr>
							<td>雇用保険 報酬月額</td><td><input type="text" name="hire_month" value="${personnel.ins.hire_month}">ウォン</td>
						</tr>
						<tr>
							<td>*口座</td>
							<td>銀行 : <input type="text" name="bank" value="${personnel.emp.bank}"> / 
							口座番号 : <input type="text" name="account" value="${personnel.emp.account}"></td>
						</tr>
					</table>
					
					
					<table width='90%' border='1'>
						<tr>
							<td>区分</td><td>記号番号</td><td>取得日</td><td>喪失日</td>
						</tr>
						<tr>
							<td>国民年金</td>
							<td><input type="text" name="pension_num" value="${personnel.ins.pension_num}"></td>
							<td><input type="date" name="pension_start" value="${personnel.ins.pension_start}"></td>
							<td><input type="date" name="pension_end" value="${personnel.ins.pension_end}"></td>
						</tr>
						<tr>
							<td>健康保険</td>
							<td><input type="text" name="heal_num" value="${personnel.ins.heal_num}"></td>
							<td><input type="date" name="heal_start" value="${personnel.ins.heal_start}"></td>
							<td><input type="date" name="heal_end" value="${personnel.ins.heal_end}"></td>
						</tr>
						<tr>
							<td>雇用保険</td>
							<td><input type="text" name="hire_num" value="${personnel.ins.hire_num}"></td>
							<td><input type="date" name="hire_start" value="${personnel.ins.hire_start}"></td>
							<td><input type="date" name="hire_end" value="${personnel.ins.hire_end}"></td>
						</tr>
						<tr>
							<td>労災保険</td>
							<td><input type="text" name="indus_num" value="${personnel.ins.indus_num}"></td>
							<td><input type="date" name="indus_start" value="${personnel.ins.indus_start}"></td>
							<td><input type="date" name="indus_end" value="${personnel.ins.indus_end}"></td>
						</tr>
					</table>
					<br/>
					<h3>学歴</h3>
					<br>
					<table width='90%' border='1'>
						<tr>
							<td>区分</td><td>入学年月(yyyy-MM)</td><td>卒業年月(yyyy-MM)</td><td>学校名</td><td>専攻</td><td>履修</td>
						</tr>
						<tr>
							<td><input type="text" name="hschool" value='高校' readonly></td>
							<td><input type="text" name="hschool_start" value="${personnel.edu[0].school_start}"></td>
							<td><input type="text" name="hschool_end" value="${personnel.edu[0].school_end}"></td>
							<td><input type="text" name="hschool_name" value="${personnel.edu[0].school_name}"></td>
							<td><input type="text" name="hschool_major" value="${personnel.edu[0].school_major}" size=10></td>
							<td><select name="hschool_state">
									<option value="">選択</option>
									<option value="卒業"${personnel.edu[0].school_state == '卒業' ? 'selected' : ''}>卒業</option>
									<option value="修了"${personnel.edu[0].school_state == '修了' ? 'selected' : ''}>修了</option>
									<option value="自退"${personnel.edu[0].school_state == '自退' ? 'selected' : ''}>自退</option>
									<option value="在学中"${personnel.edu[0].school_state == '在学中' ? 'selected' : ''}>在学中</option>
								</select></td>
						</tr>
						<tr>
							<td><input type="text" name="uschool" value='大学' readonly></td>
							<td><input type="text" name="uschool_start" value="${personnel.edu[1].school_start}"></td>
							<td><input type="text" name="uschool_end" value="${personnel.edu[1].school_end}"></td>
							<td><input type="text" name="uschool_name" value="${personnel.edu[1].school_name}"></td>
							<td><input type="text" name="uschool_major" value="${personnel.edu[1].school_major}" size=10></td>
							
							<td><select name="uschool_state">
									<option value="">選択</option>
									<option value="卒業"${personnel.edu[1].school_state == '卒業' ? 'selected' : ''}>卒業</option>
									<option value="修了"${personnel.edu[1].school_state == '修了' ? 'selected' : ''}>修了</option>
									<option value="自退"${personnel.edu[1].school_state == '自退' ? 'selected' : ''}>自退</option>
									<option value="在学中"${personnel.edu[1].school_state == '在学中' ? 'selected' : ''}>在学中</option>
								</select></td>
						</tr>
					</table>
					<br/>
					<h3>経歴</h3><br>
					<table width='90' border='1'>
						<tr>
							<td>会社名</td><td>入社日</td><td>退社日</td><td>勤務期間(ヶ月)</td><td>最終職位</td><td>担当職務</td><td>退職事由</td>
						<tr>
							<td><input type="text" name="1firm" value="${personnel.car[0].firm}" size=10></td>
							<td><input type="date" name="1firm_start" value="${personnel.car[0].firm_start}"></td>
							<td><input type="date" name="1firm_end" value="${personnel.car[0].firm_end}"></td>
							<td><input type="text" name="1firm_term" value="${personnel.car[0].firm_term}"></td>
							<td><input type="text" name="1firm_job" value="${personnel.car[0].firm_job}" size=10></td>
							<td><input type="text" name="1firm_task" value="${personnel.car[0].firm_task}" size=10></td>
							<td><input type="text" name="1firm_retire" value="${personnel.car[0].firm_retire}" size=21></td>
						</tr>
						<tr>
							<td><input type="text" name="2firm" value="${personnel.car[1].firm}" size=10></td>
							<td><input type="date" name="2firm_start" value="${personnel.car[1].firm_start}"></td>
							<td><input type="date" name="2firm_end" value="${personnel.car[1].firm_end}"></td>
							<td><input type="text" name="2firm_term" value="${personnel.car[1].firm_term}"></td>
							<td><input type="text" name="2firm_job" value="${personnel.car[1].firm_job}" size=10></td>
							<td><input type="text" name="2firm_task" value="${personnel.car[1].firm_task}" size=10></td>
							<td><input type="text" name="2firm_retire" value="${personnel.car[1].firm_retire}" size=21></td>
						</tr>
					</table>
					<br/>
					<h3>兵役</h3>
					<br>
					<table width='90%' border='1'>
						<tr>
							<td>兵役区分</td><td>軍別</td><td>服務期間(初め)</td><td>服務期間(終わり)</td><td>最終階級</td><td>兵科</td><td>未畢事由</td>
						<tr>
							<td><select name="mil">
									<option value="">選択</option>
									<option value="軍畢"${personnel.mil.mil == '軍畢' ? 'selected' : ''}>軍畢</option>
									<option value="未畢"${personnel.mil.mil == '未畢' ? 'selected' : ''}>未畢</option>
								</select></td>
							<td><select name="mil_type">
									<option value="">選択</option>
									<option value="陸軍"${personnel.mil.mil_type == '陸軍' ? 'selected' : ''}>陸軍</option>
									<option value="海軍"${personnel.mil.mil_type == '海軍' ? 'selected' : ''}>海軍</option>
									<option value="空軍"${personnel.mil.mil_type == '空軍' ? 'selected' : ''}>空軍</option>
									<option value="常備軍"${personnel.mil.mil_type == '常備軍' ? 'selected' : ''}>常備軍</option>
									<option value="免除"${personnel.mil.mil_type == '免除' ? 'selected' : ''}>免除</option>
									<option value="その他"${personnel.mil.mil_type == 'その他' ? 'selected' : ''}>その他</option>
								</select></td>
							<td><input type="date" name="mil_start" value="${personnel.mil.mil_start}"></td>
							<td><input type="date" name="mil_end" value="${personnel.mil.mil_end}"></td>
							<td><input type="text" name="mil_rank" value="${personnel.mil.mil_rank}"></td>
							<td><input type="text" name="mil_job" value="${personnel.mil.mil_job}"></td>
							<td><input type="text" name="mil_no_reason" value="${personnel.mil.mil_no_reason}"></td>
						</tr>
					</table>
					
					<br/>
					<h3>資格免許・語学能力</h3>
					<br>
					<table width='90%' border='1'>
						<tr>
							<td>資格・免許名</td><td>取得日</td><td>発行機関</td><td>番号証</td><td>備考</td>
						<tr>
							<td><input type="text" name="lsc_name1" value="${personnel.lcs[0].lsc_name}"></td>
							<td><input type="text" name="lsc_date1" value="${personnel.lcs[0].lsc_date}"></td>
							<td><input type="text" name="lsc_dep1" value="${personnel.lcs[0].lsc_dep}"></td>
							<td><input type="text" name="lsc_num1" value="${personnel.lcs[0].lsc_num}"></td>
							<td><input type="text" name="lsc_note1" value="${personnel.lcs[0].lsc_note}"></td>
						</tr>
						<tr>
							<td><input type="text" name="lsc_name2" value="${personnel.lcs[1].lsc_name}"></td>
							<td><input type="text" name="lsc_date2" value="${personnel.lcs[0].lsc_date}"></td>
							<td><input type="text" name="lsc_dep2" value="${personnel.lcs[0].lsc_dep}"></td>
							<td><input type="text" name="lsc_num2" value="${personnel.lcs[0].lsc_num}"></td>
							<td><input type="text" name="lsc_note2" value="${personnel.lcs[0].lsc_note}"></td>
						</tr>
					</table>
					<br/>
					<table width='90%' border='1'>
						<tr>
							<td>外国語名</td><td>テスト</td><td>点数</td><td>取得日</td><td>読解</td><td>作文</td><td>会話</td>
						<tr>
							<td><input type="text" name="lang_name1" value="${personnel.lang[0].lang_name}"></td>
							<td><input type="text" name="lang_test1" value="${personnel.lang[0].lang_test}"></td>
							<td><input type="text" name="lang_score1" value="${personnel.lang[0].lang_score}"></td>
							<td><input type="date" name="lang_date1" value="${personnel.lang[0].lang_date}"></td>
							<td><select name="lang_read1">
									<option value="">選択</option>
									<option value="上"${personnel.lang[0].lang_read == '上' ? 'selected' : ''}>上</option>
									<option value="中"${personnel.lang[0].lang_read == '中' ? 'selected' : ''}>中</option>
									<option value="下"${personnel.lang[0].lang_read == '下' ? 'selected' : ''}>下</option>
								</select></td>
							<td><select name="lang_listen1">
									<option value="">選択</option>
									<option value="上"${personnel.lang[0].lang_listen == '上' ? 'selected' : ''}>上</option>
									<option value="中"${personnel.lang[0].lang_listen == '中' ? 'selected' : ''}>中</option>
									<option value="下"${personnel.lang[0].lang_listen == '下' ? 'selected' : ''}>下</option>
								</select></td>
							<td><select name="lang_speak1">
									<option value="">選択</option>
									<option value="上"${personnel.lang[0].lang_speak == '上' ? 'selected' : ''}>上</option>
									<option value="中"${personnel.lang[0].lang_speak == '中' ? 'selected' : ''}>中</option>
									<option value="下"${personnel.lang[0].lang_speak == '下' ? 'selected' : ''}>下</option>
								</select></td>
						</tr>
						<tr>
							<td><input type="text" name="lang_name2" value="${personnel.lang[1].lang_name}"></td>
							<td><input type="text" name="lang_test2" value="${personnel.lang[1].lang_test}"></td>
							<td><input type="text" name="lang_score2" value="${personnel.lang[1].lang_score}"></td>
							<td><input type="date" name="lang_date2" value="${personnel.lang[1].lang_date}"></td>
							<td><select name="lang_read2">
									<option value="">選択</option>
									<option value="上"${personnel.lang[1].lang_read == '上' ? 'selected' : ''}>上</option>
									<option value="中"${personnel.lang[1].lang_read == '中' ? 'selected' : ''}>中</option>
									<option value="下"${personnel.lang[1].lang_read == '下' ? 'selected' : ''}>下</option>
								</select></td>
							<td><select name="lang_listen2">
									<option value="">選択</option>
									<option value="上"${personnel.lang[1].lang_listen == '上' ? 'selected' : ''}>上</option>
									<option value="中"${personnel.lang[1].lang_listen == '中' ? 'selected' : ''}>中</option>
									<option value="下"${personnel.lang[1].lang_listen == '下' ? 'selected' : ''}>下</option>
								</select></td>
							<td><select name="lang_speak2">
									<option value="">選択</option>
									<option value="上"${personnel.lang[1].lang_speak == '上' ? 'selected' : ''}>上</option>
									<option value="中"${personnel.lang[1].lang_speak == '中' ? 'selected' : ''}>中</option>
									<option value="下"${personnel.lang[1].lang_speak == '下' ? 'selected' : ''}>下</option>
								</select></td>
						</tr>
					</table>
					
					<br/>
					<h3>退職</h3>
					<table width='90%' border='1'>
						<tr>
							<td>退職区分</td><td>退職日</td><td>退社事由</td><td>退職後連絡先</td><td>退職金</td>
						<tr>
							<td><select name="retire_type">
									<option value="">選択</option>
									<option value="定年退職"${personnel.rtr.retire_type == '定年退職' ? 'selected' : ''}>定年退職</option>
									<option value="リストラ"${personnel.rtr.retire_type == 'リストラ' ? 'selected' : ''}>リストラ</option>
									<option value="自己都合"${personnel.rtr.retire_type == '自己都合' ? 'selected' : ''}>自己都合</option>
									<option value="役員退職"${personnel.rtr.retire_type == '役員退職' ? 'selected' : ''}>役員退職</option>
									<option value="中間精算"${personnel.rtr.retire_type == '中間精算' ? 'selected' : ''}>中間精算</option>
									<option value="その他"${personnel.rtr.retire_type == 'その他' ? 'selected' : ''}>その他</option>
								</select></td>
							<td><input type="date" name="retired_date" value="${personnel.rtr.retired_date}" size=10></td>
							<td><input type="text" name="retire_reason" value="${personnel.rtr.retire_reason}"></td>
							<td><input type="text" name="retire_phone" value="${personnel.rtr.retire_phone}"></td>
							<td><input type="text" name="retire_cost" value="${personnel.rtr.retire_cost}">ウォン</td>
						</tr>
					</table>
					<br/>
					<input type="submit" value="加入">
					
				</form>
			</div>
			</td></tr>
		</table>
		<br/><br/><br/><br/> 
			<tr>
				<td align='left'>
					<%@ include file="/../../../Site_footer.jsp" %>
				</td>
			</tr>
	</body>
</html>