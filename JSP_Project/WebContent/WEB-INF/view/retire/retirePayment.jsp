<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="Include 테스트"%>
<%@ page buffer="none"%>
<%@ page autoFlush="true"%>
<%@ page isThreadSafe="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type='text/css' href="purple.css">
<title>退職給与入力・管理</title>
<script>
function successJoin() {
	alert('退職給付明細書が保存されました');
}

function calculateThreeMonthSum() {
    const inputs = document.querySelectorAll('input[name="ret_other_cost"]');
    const results = document.querySelectorAll('input[name="ret_other_3month"]');

    inputs.forEach((input, index) => {
        const value = parseFloat(input.value) || 0;
        const threeMonthValue = Math.round(value * 0.25); // 소수점 없는 정수로 변환
        if (results[index]) {
            results[index].value = threeMonthValue;
        }
    });
}

window.onload = function() {
    const inputs = document.querySelectorAll('input[name="ret_other_cost"]');
    inputs.forEach(input => {
        input.addEventListener('input', calculateThreeMonthSum);
    });
};
</script>
</head>
<body>
    <table width='100%' border='0'>
        <tr height='100'>
            <td align='left'><%@ include file="../../../Site_header.jsp"%></td>
        </tr>
        <tr>
            <td align='left'><%@ include file="../../../Site_menu.jsp"%></td>
        </tr>
        <tr><br>
            <td><h2>退職給与入力・管理</h2></td><br>
        </tr>
        <tr>
            <td>
                <form action="${pageContext.request.contextPath}/retirePayment.do" method="post">
                    <table width="100%">
                        <tr>
                            <td>
                                <!-- 히든값 -->
                                <input type="hidden" value="${rpr.emp_no}" name="emp_no">
                                <input type="hidden" value="${rpr.name_kor}" name="name_kor">
                                <input type="hidden" value="${rpr.job}" name="job">
                                <input type="hidden" value="${rpr.years_service}" name="years_service">
                                <input type="hidden" value="${rpr.days_service}" name="days_service">
                                <h3>${rpr.name_kor}&nbsp;&nbsp;${rpr.job}&nbsp;&nbsp;退職計算</h3>
                            </td>
                            <td>区分
                                <select name="ret_calc_type">
                                    <option value="中間精算" >中間精算</option>
                                    <option value="退職精算" selected>退職精算</option>
                                </select>
                            </td>
                            <td>入社日 <input type="date" value="${rpr.hired_date}" name="hired_date" readonly> ~ 退職日 <input type="date" value="${rpr.retired_date}" name="retired_date" readonly></td>
                            <td>勤続年数 ${rpr.years_service} 年</td>
                            <td>勤続日数 <fmt:formatNumber value="${rpr.days_service}"/> 日</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <table border="1" width="100%">
                                    <tr>
                                        <td colspan="3">
                                            <h3>給与内訳</h3>事由発生日以前の直近3ヶ月支給合計金額
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" bgcolor="skyblue">算定期間</td>
                                        <td align="center" bgcolor="skyblue">算定日数</td>
                                        <td align="center" bgcolor="skyblue">給与総額</td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <input type="date" style="width: 100px;" value="${dayTerm.prev3_first}" readonly>~
                                            <input type="date" style="width: 100px;" value="${dayTerm.prev3_last}" readonly>
                                        </td>
                                        <td align="center"><input type="text" style="width: 100px;" value="${dayTerm.prev3_days}" readonly></td>
                                        <td align="center"><fmt:formatNumber value="${dayTerm.prev3_sal_sum}"/></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <input type="date" style="width: 100px;" value="${dayTerm.prev2_first}" readonly>~
                                            <input type="date" style="width: 100px;" value="${dayTerm.prev2_last}" readonly>
                                        </td>
                                        <td align="center"><input type="text" style="width: 100px;" value="${dayTerm.prev2_days}" readonly></td>
                                        <td align="center"><fmt:formatNumber value="${dayTerm.prev2_sal_sum}"/></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <input type="date" style="width: 100px;" value="${dayTerm.prev1_first}" readonly>~
                                            <input type="date" style="width: 100px;" value="${dayTerm.prev1_last}" readonly>
                                        </td>
                                        <td align="center"><input type="text" style="width: 100px;" value="${dayTerm.prev1_days}" readonly></td>
                                        <td align="center"><fmt:formatNumber value="${dayTerm.prev1_sal_sum}" type="number" maxFractionDigits="0"/></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <input type="date" style="width: 100px;" value="${dayTerm.this_first}" readonly>~
                                            <input type="date" style="width: 100px;" value="${dayTerm.this_last}" readonly>
                                        </td>
                                        <td align="center"><input type="text" style="width: 100px;" value="${dayTerm.this_days}" readonly></td>
                                        <td align="center"><fmt:formatNumber value="${dayTerm.this_sal_sum}" type="number" maxFractionDigits="0"/></td>
                                    </tr>
                                    <tr>
                                        <td align="center" bgcolor="skyblue">総合計</td>
                                        <td align="center"><input type="text" style="width: 100px;" value="${dayTerm.prev3_days+dayTerm.prev2_days+dayTerm.prev1_days+dayTerm.this_days}" readonly></td>
                                        <td align="center"><fmt:formatNumber value="${dayTerm.prev3_sal_sum+dayTerm.prev2_sal_sum+dayTerm.prev1_sal_sum+dayTerm.this_sal_sum}" type="number" maxFractionDigits="0"/></td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="1" bgcolor="skyblue">退職慰労金</td>
                                        <td align="center" colspan="2" bgcolor="skyblue">解雇予告手当て</td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="1"><input type="text" value="${rpr.ret_prize}" name="ret_prize" style="width: 100px;"></td>
                                        <td align="center" colspan="2"><input type="text" value="${rpr.ret_notice}" name="ret_notice" style="width: 100px;"></td>
                                    </tr>
                                </table>
                            </td>
                            <td colspan="2">
                                <table border="1" width="100%">
                                    <tr>
                                        <td colspan="4">
                                            <h3>他の課税所得</h3>事由発生日以前の1年間分の金額を入力
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" bgcolor="skyblue">支給年月</td>
                                        <td align="center" bgcolor="skyblue">支給項目</td>
                                        <td align="center" bgcolor="skyblue">金額</td>
                                        <td align="center" bgcolor="skyblue">３か月分</td>
                                    </tr>
                                    <tr>
                                        <td align="center"><input type="date" value="${rpr.ret_other_date}" name="ret_other_date" style="width: 100px;"></td>
                                        <td align="center"><input type="text" value="${rpr.ret_other_name}" name="ret_other_name" style="width: 100px;"></td>
                                        <td align="center"><input type="text" value="${rpr.ret_other_cost}" name="ret_other_cost" style="width: 100px;"></td>
                                        <td align="center"><input type="text" value="${(rpr.ret_other_cost/40)*10}" name="ret_other_3month" style="width: 100px;" readonly></td>
                                    </tr>
                                    <tr>
                                        <td align="center"><input type="date" name="ret_other_date1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_name1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_cost1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_3month1" style="width: 100px;" readonly></td>
                                    </tr>
                                    <tr>
                                        <td align="center"><input type="date" name="ret_other_date1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_name1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_cost1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_3month1" style="width: 100px;" readonly></td>
                                    </tr>
                                    <tr>
                                        <td align="center"><input type="date" name="ret_other_date1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_name1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_cost1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_3month1" style="width: 100px;" readonly></td>
                                    </tr>
                                    <tr>
                                        <td align="center"><input type="date" name="ret_other_date1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_name1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_cost1" style="width: 100px;"></td>
                                        <td align="center"><input type="text" name="ret_other_3month1" style="width: 100px;" readonly></td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="1" bgcolor="skyblue">非課税退職給与</td>
                                        <td align="center" colspan="1" bgcolor="skyblue">既納付税額</td>
                                        <td align="center" colspan="2" bgcolor="skyblue">税額控除</td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="1"><input type="text" value="${rpr.ret_tax_free_pay}" name="ret_tax_free_pay" style="width: 100px;"></td>
                                        <td align="center" colspan="1"><input type="text" value="${rpr.ret_ad_pay}" name="ret_ad_pay" style="width: 100px;"></td>
                                        <td align="center" colspan="2"><input type="text" value="${rpr.ret_tax_free}" name="ret_tax_free" style="width: 100px;"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="5"><input type="submit" name="button" value="退職金計算"/></td>
                        </tr>
                        <tr>
                            <td colspan="9">
                                <table border="1" width="100%">
                                    <tr>
                                        <td align="center" bgcolor="skyblue">３か月総計</td>
                                        <td align="center" bgcolor="skyblue">１日平均賃金</td>
                                        <td align="center" bgcolor="skyblue">退職所得</td>
                                        <td align="center" bgcolor="skyblue">退職日の属する課税年度</td>
                                        <td align="center" bgcolor="skyblue">算出税額</td>
                                        <td align="center" bgcolor="skyblue">退職所得税</td>
                                        <td align="center" bgcolor="skyblue">地方所得税</td>
                                    </tr>
                                    <tr>
                                        <td align="center"><input type="text" value="${dayTerm.prev3_sal_sum+dayTerm.prev2_sal_sum+dayTerm.prev1_sal_sum+dayTerm.this_sal_sum}" name="ret_3mon_sum" readonly></td>
                                        <td align="center"><input type="text" value="${Math.round((dayTerm.prev3_sal_sum+dayTerm.prev2_sal_sum+dayTerm.prev1_sal_sum+dayTerm.this_sal_sum)/(dayTerm.prev3_days+dayTerm.prev2_days+dayTerm.prev1_days+dayTerm.this_days))}" name="ret_day_avg" readonly></td>
                                        <td align="center"><input type="text" value="${rpr.ret_pay}" name="ret_pay" readonly></td>
                                        <td align="center"><input type="text" value="${rpr.ret_year}" name="ret_year" readonly></td>
                                        <td align="center"><input type="text" value="${rpr.ret_tax}" name="ret_tax" readonly></td>
                                        <td align="center"><input type="text" value="${rpr.ret_income_tax}" name="ret_income_tax" readonly></td>
                                        <td align="center"><input type="text" value="${rpr.ret_local_tax}" name="ret_local_tax" readonly></td>
                                    </tr>
                                    <tr>
                                        <td align="center" bgcolor="grey">課税対象退職給与</td>
                                        <td align="center" bgcolor="grey">差し引き源泉徴収税</td>
                                        <td align="center" bgcolor="grey">手取り額</td>
                                        <td align="center" colspan="2" bgcolor="grey">支給方法</td>
                                        <td align="center" colspan="2" bgcolor="grey">支給日</td>
                                    </tr>
                                    <tr>
                                        <td align="center"><fmt:formatNumber value="${rpr.ret_pay*rpr.years_service+rpr.ret_prize+rpr.ret_notice-rpr.ret_tax_free_pay-rpr.ret_ad_pay-rpr.ret_tax_free+(rpr.ret_other_cost/4)}" type="number" maxFractionDigits="0"/>원</td>
                           
                                        <td align="center"><fmt:formatNumber  value="${rpr.ret_income_tax+rpr.ret_local_tax}" type="number" maxFractionDigits="0"/>ウォン</td>
                                        <td align="center"><fmt:formatNumber value="${rpr.ret_realpay}" type="number" maxFractionDigits="0"/>ウォン</td>
                                       	<input type="hidden" name = "ret_realpay" value="${rpr.ret_realpay}"/>
                                        <td align="center" colspan="2"><input type="text" value="${rpr.how_to_pay}" name="how_to_pay" placeholder="口座振替など···"></td>
                                        <td align="center" colspan="2" ><input type="date" value="${rpr.ret_payday}" name="ret_payday"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="6"><input type="submit" name="button" value="保存" onSubmit='successJoin()'>&nbsp;<input type="submit" name="button" value="取り消し"> </td>
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
