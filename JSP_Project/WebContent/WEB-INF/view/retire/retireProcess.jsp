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
<title>社員退職処理</title>
<style>
.modal {
	position: absolute;
	display: none;
	justify-content: center;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal_body {
	position: absolute;
	top: 50%; /*모달을 화면가운데 놓기위함. */
	width : 300px; /* 모달의 가로크기  */
	height : 320px; /* 모달의 세로크기 */
	padding : 40px;
	background-color: rgb(255, 255, 255); /*  모달창 배경색 흰색 */
	border-radius : 10px; /* 테두리 */
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15); /* 테두리그림자 */
	transform:translateY(-50%); /* 모듈창열었을때위치설정가운데로 */
}

.modal_close {
	cursor: pointer;
	float: right;
	font-size: 24px;
	font-weight: bold;
}
</style>
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
			<td><br>
			<h2>社員退職処理</h2><br>
				<form action="${pageContext.request.contextPath}/retireProcess.do" method="get">
					<table width='100%'>
						<tr>
							<td>
								<select name="searchCategori">
									<option value="name_kor" selected>名前</option>
									<option value="emp_no">社員番号</option>
									<option value="dept">部署</option>
									<option value="all">全体</option>
								</select>
								<input type="text" placeholder="キーワードを入力してください" name="searchWord">
								<input type="submit" name="button" value="検索">
								<input type="submit" name="button" value="全体表示">
								<span style="float: right;">
									<select>
										<option value="all" selected>状態別</option>
										<option value="on">在職</option>
										<option value="off">退職</option>
									</select>
								</span>
							</td>
						</tr>
						<tr>
							<td>
								<table width='100%' border="1">
									<tr>
										<td align="center"><strong>番号</strong></td>
										<td align="center"><strong>状態</strong></td>
										<td align="center"><strong>社員番号</strong></td>
										<td align="center"><strong>名前</strong></td>
										<td align="center"><strong>部署</strong></td>
										<td align="center"><strong>職位</strong></td>
										<td align="center"><strong>入社日</strong></td>
										<td align="center"><strong>退職日</strong></td>
										<td align="center"><strong>勤続年数</strong></td>
										<td align="center"><strong>中間精算</strong></td>
										<td align="center"><strong>退職精算</strong></td>
									</tr>
									<c:forEach var="n" items="${list}" begin="0" end="13" varStatus="st">
										<tr class="btn-open-modal" data-state="${n.state}" data-emp_no="${n.emp_no}" data-name="${n.name_kor}" data-dept="${n.dept}" data-job="${n.job}" data-hired_date="${n.hired_date}"  data-years_service="${n.years_service}" data-ret_calc_type_mid="${n.ret_calc_type_mid}" data-ret_calc_type_retire="${n.ret_calc_type_retire}"  data-retire_type="${n.retire_type}" data-retired_date="${n.retired_date}" data-retire_reason="${n.retire_reason}" data-retire_phone="${n.retire_phone}">
											<td align="center">${st.index+1}</td>
											<td align="center">
												<c:if test="${n.state eq '在職'}">${n.state}</c:if>
												<c:if test="${n.state eq '退職'}">
													<span style="color: red"><strong>${n.state}</strong></span>
												</c:if>
											</td>
											<td align="center">${n.emp_no}</td>
											<td align="center">${n.name_kor}</td>
											<td align="center">${n.dept}</td>
											<td align="center">${n.job}</td>
											<td align="center">${n.hired_date}</td>
											<td align="center">${n.retired_date}</td>
											<td align="center">${n.years_service}</td>
											<td align="center"><c:if test="${n.ret_calc_type_mid eq '中間精算'}">O</c:if> <c:if test="${empty n.ret_calc_type_mid}">X</c:if></td>
											<td align="center"><c:if test="${n.ret_calc_type_retire eq '退職精算'}">O</c:if> <c:if test="${empty n.ret_calc_type_retire}">X</c:if></td>
										</tr>
									</c:forEach>
									
									
								</table>
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>

	

	<!-- 퇴직 처리 모달 -->
	<div class="modal" id="retireModal">
		<div class="modal_body">
			<span class="modal_close">&times;</span>
			<h2>退社者退職処理</h2>
			<div>
				<form action="${pageContext.request.contextPath}/retireProcess.do" method="post">
					<input type="hidden" name="emp_no" id="modal_emp_no" />
					
					<table border="1">
						<tr>
							<td>対象社員</td>
							<td><input type="text" name="retire_emp_name" id="modal_retire_emp_name" value="" readonly required/></td>
						</tr>
						<tr>
							<td>退職区分</td>
							<td>
								<select id="modal_retirement_type" name="retirement_type" required>
									<option value="" selected>選択</option>
									<option value="定年退職">定年退職</option>
									<option value="リストラ">リストラ</option>
									<option value="自己都合">自己都合</option>
									<option value="役員退職">役員退職</option>
									<option value="中間精算">中間精算</option>
									<option value="その他">その他</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>退職日付</td>
							<td><input type="date" id="modal_retirement_date" name="retirement_date" required /></td>
						</tr>
						<tr>
							<td>退職事由</td>
							<td><input type="text" id="modal_retire_reason" name="retire_reason" required /></td>
						</tr>
						<tr>
							<td>退職後連絡先</td>
							<td><input type="text" id="modal_retire_phone" name="retire_phone" required/></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit" name="modalButton" value="保存" />&nbsp;<input type="reset" value="初期化" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

	<!-- 퇴직 처리 취소 모달 -->
	<div class="modal" id="retireCancelModal">
		<div class="modal_body">
			<span class="modal_close">&times;</span>
			<h2>退職処理取り消し</h2>
			<div>
				<form action="${pageContext.request.contextPath}/retireProcess.do" method="post">
					<input type="hidden" name="emp_no" id="cancel_modal_emp_no" />
					<table border="1">
						<tr>
							<td>対象社員</td>
							<td><input type="text" name="emp_name" id="cancel_modal_emp_name"  readonly/></td>
						</tr>
						<tr>
							<td>退職区分</td>
							<td><input type="text" name="retirement_type" id="cancel_modal_retirement_type"  readonly/></td>
						</tr>
						<tr>
							<td>退職日付</td>
							<td><input type="date" name="retirement_date" id="cancel_modal_retirement_date" readonly/></td>
						</tr>
						<tr>
							<td>退職事由</td>
							<td><input type="text" name="retire_reason" id="cancel_modal_retire_reason" readonly/></td>
						</tr>
						<tr>
							<td>退職後連絡先</td>
							<td><input type="text" name="cancel_retire_phone" id="cancel_modal_retire_phone"  readonly/></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit" name="modalButton" value="退社処理取り消し" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

	<script>
        document.addEventListener('DOMContentLoaded', () => {
            const retireModal = document.querySelector('#retireModal');
            const retireCancelModal = document.querySelector('#retireCancelModal');
            const btnOpenModals = document.querySelectorAll('.btn-open-modal');
            const modalCloseButtons = document.querySelectorAll('.modal_close');

            function openModal(modal, data) {
                if (modal === retireModal) {
                    modal.querySelector('#modal_retire_emp_name').value = data.name || '';
                    modal.querySelector('#modal_emp_no').value = data.emp_no || '';
                    //modal.querySelector('#modal_retirement_type').value = ""; // Default or pre-filled value
                    modal.querySelector('#modal_retirement_date').value = "";
                    modal.querySelector('#modal_retire_reason').value = ""; // Default or pre-filled value
                    modal.querySelector('#modal_retire_phone').value = ""; // Default or pre-filled value
                } else if (modal === retireCancelModal) {
                    modal.querySelector('#cancel_modal_emp_name').value = data.name || '';
                    modal.querySelector('#cancel_modal_emp_no').value = data.emp_no || '';
                    modal.querySelector('#cancel_modal_retirement_type').value = data.retire_type;
                    modal.querySelector('#cancel_modal_retirement_date').value = data.retired_date || '';
                    modal.querySelector('#cancel_modal_retire_reason').value = data.retire_reason || ''; // Default or pre-filled value
                    modal.querySelector('#cancel_modal_retire_phone').value = data.retire_phone || ''; // Default or pre-filled value
               
                   
                }

                modal.style.display = 'flex';
            }

            btnOpenModals.forEach(row => {
                row.addEventListener('click', () => {
                    const state = row.getAttribute('data-state');
                    const data = {
                        emp_no: row.getAttribute('data-emp_no'),
                        name: row.getAttribute('data-name'),
                        dept: row.getAttribute('data-dept'),
                        job: row.getAttribute('data-job'),
                        hired_date: row.getAttribute('data-hired_date'),
                        years_service: row.getAttribute('data-years_service'),
                        ret_calc_type_mid: row.getAttribute('data-ret_calc_type_mid'),
                        ret_calc_type_retire: row.getAttribute('data-ret_calc_type_retire'),
                        retire_type: row.getAttribute('data-retire_type'),
                        retired_date: row.getAttribute('data-retired_date'),
                        retire_reason: row.getAttribute('data-retire_reason'),
                        retire_phone: row.getAttribute('data-retire_phone')
                    };

                    if (state === '在職') {
                        openModal(retireModal, data);
                    } else if (state === '退職') {
                        openModal(retireCancelModal, data);
                    }
                });
            });

            modalCloseButtons.forEach(btn => {
                btn.addEventListener('click', () => {
                    retireModal.style.display = 'none';
                    retireCancelModal.style.display = 'none';
                });
            });

            window.addEventListener('click', (event) => {
               
                if (event.target === retireModal) {
                    retireModal.style.display = 'none';
                }
                if (event.target === retireCancelModal) {
                    retireCancelModal.style.display = 'none';
                }
            });
        });
    </script>
    <br><br><br><br>
    <tr>
			<td align='left'>
				<%@ include file="/../../../Site_footer.jsp" %>
			</td>
		</tr>

</body>
</html>
