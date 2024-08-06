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
<title>退職給与入力・管理</title>
<script>
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
        <tr>
            <td><h2>退職給与入力・管理</h2></td>
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
                                <h3>${rpr.name_kor}&nbsp;&nbsp;${rpr.job}&nbsp;&nbsp;퇴직계산</h3>
                            </td>
                            <td>구분
                                <select name="ret_calc_type">
                                    <option value="중간정산" >중간정산</option>
                                    <option value="퇴직정산" selected>퇴직정산</option>
                                </select>
                            </td>
                            <td>입사일 <input type="date" value="${rpr.hired_date}" name="hired_date" readonly> ~ 퇴직일 <input type="date" value="${rpr.retired_date}" name="retired_date" readonly></td>
                            <td>근속년수 ${rpr.years_service} 년</td>
                            <td>근속일수 <fmt:formatNumber value="${rpr.days_service}"/> 일</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <table border="1" width="100%">
                                    <tr>
                                        <td colspan="3">
                                            <h3>급여내역</h3>사유발생일 이전 최근 3개월 지급합계 금액
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" bgcolor="skyblue">산정기간</td>
                                        <td align="center" bgcolor="skyblue">산정일수</td>
                                        <td align="center" bgcolor="skyblue">급여총액</td>
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
                                        <td align="center"><fmt:formatNumber value="${dayTerm.prev1_sal_sum}"/></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <input type="date" style="width: 100px;" value="${dayTerm.this_first}" readonly>~
                                            <input type="date" style="width: 100px;" value="${dayTerm.this_last}" readonly>
                                        </td>
                                        <td align="center"><input type="text" style="width: 100px;" value="${dayTerm.this_days}" readonly></td>
                                        <td align="center"><fmt:formatNumber value="${dayTerm.this_sal_sum}"/></td>
                                    </tr>
                                    <tr>
                                        <td align="center" bgcolor="skyblue">총 합계</td>
                                        <td align="center"><input type="text" style="width: 100px;" value="${dayTerm.prev3_days+dayTerm.prev2_days+dayTerm.prev1_days+dayTerm.this_days}" readonly></td>
                                        <td align="center"><fmt:formatNumber value="${dayTerm.prev3_sal_sum+dayTerm.prev2_sal_sum+dayTerm.prev1_sal_sum+dayTerm.this_sal_sum}"/></td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="1" bgcolor="skyblue">퇴직위로금</td>
                                        <td align="center" colspan="2" bgcolor="skyblue">해고예고수당</td>
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
                                            <h3>기타과세소득</h3>사유발생일 이전 1년간 분의 금액 입력
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" bgcolor="skyblue">지급년월</td>
                                        <td align="center" bgcolor="skyblue">지급항목</td>
                                        <td align="center" bgcolor="skyblue">금액</td>
                                        <td align="center" bgcolor="skyblue">3개월분</td>
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
                                        <td align="center" colspan="1" bgcolor="skyblue">비과세퇴직급여</td>
                                        <td align="center" colspan="1" bgcolor="skyblue">기납부 세액</td>
                                        <td align="center" colspan="2" bgcolor="skyblue">세액공제</td>
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
                            <td align="center" colspan="5"><input type="submit" name="button" value="퇴직금 계산하기"/></td>
                        </tr>
                        <tr>
                            <td colspan="9">
                                <table border="1" width="100%">
                                    <tr>
                                        <td align="center" bgcolor="skyblue">3개월 총계</td>
                                        <td align="center" bgcolor="skyblue">1일 평균 임금</td>
                                        <td align="center" bgcolor="skyblue">퇴직소득</td>
                                        <td align="center" bgcolor="skyblue">퇴직일이 속하는 과세연도</td>
                                        <td align="center" bgcolor="skyblue">산출세액</td>
                                        <td align="center" bgcolor="skyblue">퇴직소득세</td>
                                        <td align="center" bgcolor="skyblue">지방소득세</td>
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
                                        <td align="center" bgcolor="grey">과세대상 퇴직급여</td>
                                        <td align="center" bgcolor="grey">차감원천징수세액</td>
                                        <td align="center" bgcolor="grey">실수령액</td>
                                        <td align="center" colspan="2" bgcolor="grey">지급방법</td>
                                        <td align="center" colspan="2" bgcolor="grey">지급일</td>
                                    </tr>
                                    <tr>
                                        <td align="center"><fmt:formatNumber value="${rpr.ret_pay*rpr.years_service+rpr.ret_prize+rpr.ret_notice-rpr.ret_tax_free_pay-rpr.ret_ad_pay-rpr.ret_tax_free+(rpr.ret_other_cost/40)}" type="number" maxFractionDigits="0"/>원</td>
                           
                                        <td align="center"><fmt:formatNumber  value="${rpr.ret_income_tax+rpr.ret_local_tax}" type="number" maxFractionDigits="0"/>원</td>
                                        <td align="center"><fmt:formatNumber value="${rpr.ret_realpay}" type="number" maxFractionDigits="0"/>원</td>
                                       	<input type="hidden" name = "ret_realpay" value="${rpr.ret_realpay}"/>
                                        <td align="center" colspan="2"><input type="text" value="${rpr.how_to_pay}" name="how_to_pay" placeholder="계좌이체 등..."></td>
                                        <td align="center" colspan="2" ><input type="date" value="${rpr.ret_payday}" name="ret_payday"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="6"><input type="submit" name="button" value="저장">&nbsp;<input type="submit" name="button" value="취소"> </td>
                        </tr>
                    </table>
                </form>
            </td>
        </tr>
    </table>
</body>
</html>
