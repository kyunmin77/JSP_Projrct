package salary.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;
import salary.model.EmployeeSalary;
import salary.model.Salary;
import salary.service.SalaryRequest;

public class SalaryDAO {
	// 급여 정보를 데이터베이스에 삽입하는 메서드
	public Salary insert(Connection conn, Salary salary) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(
					"INSERT INTO salary (sal_year, sal_month, sal_deg, emp_no, sal_normal, sal_meal, sal_childcare, sal_job, sal_car, sal_long, sal_duty, sal_reward, sal_vac, ded_pen, ded_heal, ded_long_care, ded_hire, ded_income_tax, ded_local_tax, ded_funeral, sal_sum, ded_sum, sal_real) VALUES "
							+ "(?,?,?,?,?,?,?,?,?,?," + " ?,?,?,?,?,?,?,?,?,?," + " ?,?,?)");
			pstmt.setInt(1, salary.getSal_year());
			pstmt.setInt(2, salary.getSal_month());
			pstmt.setString(3, salary.getSal_deg());
			pstmt.setInt(4, salary.getEmp_no());
			pstmt.setString(5, salary.getSal_normal());
			pstmt.setString(6, salary.getSal_meal());
			pstmt.setString(7, salary.getSal_childcare());
			pstmt.setString(8, salary.getSal_job());
			pstmt.setString(9, salary.getSal_car());
			pstmt.setString(10, salary.getSal_long());
			pstmt.setString(11, salary.getSal_duty());
			pstmt.setString(12, salary.getSal_reward());
			pstmt.setString(13, salary.getSal_vac());
			pstmt.setString(14, salary.getDed_pen());
			pstmt.setString(15, salary.getDed_heal());
			pstmt.setString(16, salary.getDed_long_care());
			pstmt.setString(17, salary.getDed_hire());
			pstmt.setString(18, salary.getDed_income_tax());
			pstmt.setString(19, salary.getDed_local_tax());
			pstmt.setString(20, salary.getDed_funeral());
			pstmt.setString(21, salary.getSal_sum());
			pstmt.setString(22, salary.getDed_sum());
			pstmt.setString(23, salary.getSal_real());
			int insertedCount = pstmt.executeUpdate();
			// 쿼리를 실행하고 영향을 받은 레코드 수를 반환받음

			if (insertedCount > 0) { // 입력이 정상적으로 수행되었다면
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT * " + "FROM( SELECT emp_no FROM salary" + " ORDER BY ROWNUM DESC )" // article_no을
																													// //
																													// 뒤
						+ "WHERE ROWNUM = 1"); // 첫번째 열 정보를 선택
				System.out.println("2");
				if (rs.next()) {
					// ah쿼리문에 첫번째필드를 받아옴
					Integer emp_no = rs.getInt(1);
					// DB에 저장된 내용과 같은 Article객체를 만들어 반환
					return new Salary(

							salary.getSal_year(), salary.getSal_month(), salary.getSal_deg(), emp_no,
							salary.getSal_normal(), salary.getSal_meal(), salary.getSal_childcare(),
							salary.getSal_job(), salary.getSal_car(), salary.getSal_long(), salary.getSal_duty(),
							salary.getSal_reward(), salary.getSal_vac(), salary.getDed_pen(), salary.getDed_heal(),
							salary.getDed_long_care(), salary.getDed_hire(), salary.getDed_income_tax(),
							salary.getDed_local_tax(), salary.getDed_funeral(), salary.getSal_sum(),
							salary.getDed_sum(), salary.getSal_real()

					);
				}
			}
			return null; // 입력이 수행되지 않았다면 null 반환

		} finally

		{
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
			JdbcUtil.close(pstmt);
		}
	}

	// 모든 급여 정보를 조회하는 메서드
	public List<Salary> selectAll(Connection conn) throws SQLException {
		// SQL 조회 쿼리
		String sql = "select * from salary order by emp_no asc";
		try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
			List<Salary> salary = new ArrayList<>();
			while (rs.next()) {
				// 조회된 결과를 Salary 객체로 변환하여 리스트에 추가
				salary.add(convertSalary(rs));
			}
			return salary; // 급여 정보 리스트 반환
		}
	}

	// 특정 사원 번호로 급여 정보를 조회하는 메서드
	public Salary selectByNo(Connection conn, int emp_no) throws SQLException {
		// SQL 조회 쿼리: 사원 번호로 조회
		String sql = "SELECT * FROM salary WHERE emp_no = ?";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, emp_no);
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					// 조회된 결과를 Salary 객체로 변환하여 반환
					return new Salary(rs.getInt("sal_year"), rs.getInt("sal_month"), rs.getString("sal_deg"),
							rs.getInt("emp_no"), rs.getString("sal_normal"), rs.getString("sal_meal"),
							rs.getString("sal_childcare"), rs.getString("sal_job"), rs.getString("sal_car"),
							rs.getString("sal_long"), rs.getString("sal_duty"), rs.getString("sal_reward"),
							rs.getString("sal_vac"), rs.getString("ded_pen"), rs.getString("ded_heal"),
							rs.getString("ded_long_care"), rs.getString("ded_hire"), rs.getString("ded_income_tax"),
							rs.getString("ded_local_tax"), rs.getString("ded_funeral"), rs.getString("sal_sum"),
							rs.getString("ded_sum"), rs.getString("sal_real"));
				}
			}
		}
		return null;// 조회된 결과가 없으면 null 반환

	}
	
	public Salary selectByNo_Mon(Connection conn, int emp_no, int sal_month) throws SQLException {
		// SQL 조회 쿼리: 사원 번호로 조회
		String sql = "SELECT * FROM salary WHERE emp_no = ? and sal_month= ?";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, emp_no);
			pstmt.setInt(2, sal_month);
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					// 조회된 결과를 Salary 객체로 변환하여 반환
					return new Salary(rs.getInt("sal_year"), rs.getInt("sal_month"), rs.getString("sal_deg"),
							rs.getInt("emp_no"), rs.getString("sal_normal"), rs.getString("sal_meal"),
							rs.getString("sal_childcare"), rs.getString("sal_job"), rs.getString("sal_car"),
							rs.getString("sal_long"), rs.getString("sal_duty"), rs.getString("sal_reward"),
							rs.getString("sal_vac"), rs.getString("ded_pen"), rs.getString("ded_heal"),
							rs.getString("ded_long_care"), rs.getString("ded_hire"), rs.getString("ded_income_tax"),
							rs.getString("ded_local_tax"), rs.getString("ded_funeral"), rs.getString("sal_sum"),
							rs.getString("ded_sum"), rs.getString("sal_real"));
				}
			}
		}
		return null;// 조회된 결과가 없으면 null 반환

	}

	public EmployeeSalary EmployeeSalarySelectByNo(Connection conn, int emp_no) throws SQLException {
		// SQL 조회 쿼리: 사원 번호로 조회
		String sql = "SELECT e.emp_no, e.emp_type, e.name_kor, e.hired_date, e.dept, e.job, e.state,"
				+ "s.sal_year, s.sal_month, s.sal_deg, s.sal_normal, s.sal_meal, s.sal_childcare, s.sal_job,"
				+ "s.sal_car, s.sal_long, s.sal_duty, s.sal_reward, s.sal_vac, s.ded_pen, s.ded_heal,"
				+ "s.ded_long_care, s.ded_hire, s.ded_income_tax, s.ded_local_tax, s.ded_funeral,"
				+ "s.sal_sum, s.ded_sum, s.sal_real FROM employee e LEFT OUTER JOIN salary s ON e.emp_no = s.emp_no WHERE e.emp_no = ? ORDER BY e.emp_no ASC";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, emp_no);
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					// 조회된 결과를 EmployeeSalary 객체로 변환하여 반환
					return new EmployeeSalary(rs.getInt("emp_no"), rs.getString("emp_type"), rs.getString("name_kor"),
							rs.getDate("hired_date"), rs.getString("dept"), rs.getString("job"), rs.getString("state"),
							rs.getInt("sal_year"), rs.getInt("sal_month"), rs.getString("sal_deg"),
							rs.getString("sal_normal"), rs.getString("sal_meal"), rs.getString("sal_childcare"),
							rs.getString("sal_job"), rs.getString("sal_car"), rs.getString("sal_long"),
							rs.getString("sal_duty"), rs.getString("sal_reward"), rs.getString("sal_vac"),
							rs.getString("ded_pen"), rs.getString("ded_heal"), rs.getString("ded_long_care"),
							rs.getString("ded_hire"), rs.getString("ded_income_tax"), rs.getString("ded_local_tax"),
							rs.getString("ded_funeral"), rs.getString("sal_sum"), rs.getString("ded_sum"),
							rs.getString("sal_real"));
				}
			}
		}
		return null; // 조회된 결과가 없으면 null 반환
	}

	// 특정 연도와 월로 급여 정보를 조회하는 메서드
	public Salary selectById(Connection conn, String sal_year, String sal_month) throws SQLException {
		// SQL 조회 쿼리: 연도와 월로 조회
		String sql = "SELECT * FROM salary WHERE sal_year = ? AND sal_month = ?";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, sal_year);// 연도 파라미터 설정
			pstmt.setString(2, sal_month);// 월 파라미터 설정
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return convertSalary(rs);
					// 조회된 결과를 Salary 객체로 변환하여 반환
				}
				return null; // 조회된 결과가 없으면 null 반환
			}
		}
	}

	public Salary selectByEmpNo(Connection conn, int empNo) throws SQLException {
		String sql = "SELECT * FROM salary WHERE emp_no = ?";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, empNo);
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return convertSalary(rs);
				}
				return null;
			}
		}
	}

	public List<EmployeeSalary> selectBySalMonth(Connection conn, int sal_month) throws SQLException {
		String sql = " SELECT  e.emp_no, e.emp_type, e.name_kor, e.hired_date,e.dept, e.job, e.state, s.sal_year, s.sal_month, s.sal_deg, s.sal_normal,s.sal_meal,s.sal_childcare, s.sal_job,s.sal_car,s.sal_long, s.sal_duty, s.sal_reward,"
				+ " s.sal_vac, s.ded_pen, s.ded_heal, s.ded_long_care, s.ded_hire, s.ded_income_tax, s.ded_local_tax, s.ded_funeral,"
				+ " s.sal_sum, s.ded_sum, s.sal_real FROM employee e JOIN salary s ON e.emp_no = s.emp_no WHERE sal_month= ? order by emp_no";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, sal_month);
			try (ResultSet rs = pstmt.executeQuery()) {
				List<EmployeeSalary> employeesalaryList = new ArrayList<>();
				while (rs.next()) {
					employeesalaryList.add(new EmployeeSalary(rs.getInt("emp_no"), rs.getString("emp_type"),
							rs.getString("name_kor"), rs.getDate("hired_date"), rs.getString("dept"),
							rs.getString("job"), rs.getString("state"), rs.getInt("sal_year"), rs.getInt("sal_month"),
							rs.getString("sal_deg"), rs.getString("sal_normal"), rs.getString("sal_meal"),
							rs.getString("sal_childcare"), rs.getString("sal_job"), rs.getString("sal_car"),
							rs.getString("sal_long"), rs.getString("sal_duty"), rs.getString("sal_reward"),
							rs.getString("sal_vac"), rs.getString("ded_pen"), rs.getString("ded_heal"),
							rs.getString("ded_long_care"), rs.getString("ded_hire"), rs.getString("ded_income_tax"),
							rs.getString("ded_local_tax"), rs.getString("ded_funeral"), rs.getString("sal_sum"),
							rs.getString("ded_sum"), rs.getString("sal_real")));
				}
				return employeesalaryList;
			}
		}
	}

	public List<EmployeeSalary> selectByNameKor(Connection conn, String name_Kor, int sal_month) throws SQLException {
		String sql = "SELECT * FROM employee WHERE name_kor LIKE ?";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, "%" + name_Kor + "%");
			try (ResultSet rs = pstmt.executeQuery()) {
				List<EmployeeSalary> result = new ArrayList<>();
				if (rs.next()) {
					result.add(new EmployeeSalary(rs.getInt("emp_no"), rs.getString("emp_type"),
							rs.getString("name_kor"), rs.getDate("hired_date"), rs.getString("dept"),
							rs.getString("job"), rs.getString("state"), rs.getInt("sal_year"), rs.getInt("sal_month"),
							rs.getString("sal_deg"), rs.getString("sal_normal"), rs.getString("sal_meal"),
							rs.getString("sal_childcare"), rs.getString("sal_job"), rs.getString("sal_car"),
							rs.getString("sal_long"), rs.getString("sal_duty"), rs.getString("sal_reward"),
							rs.getString("sal_vac"), rs.getString("ded_pen"), rs.getString("ded_heal"),
							rs.getString("ded_long_care"), rs.getString("ded_hire"), rs.getString("ded_income_tax"),
							rs.getString("ded_local_tax"), rs.getString("ded_funeral"), rs.getString("sal_sum"),
							rs.getString("ded_sum"), rs.getString("sal_real")));
				}
				return result;
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public List<EmployeeSalary> selectEmployeeSalaryNameMonth(Connection conn, String name_kor, int sal_month)
			throws SQLException {
		String sql = " SELECT  e.emp_no, e.emp_type, e.name_kor, e.hired_date,e.dept, e.job, e.state, s.sal_year, s.sal_month, s.sal_deg, s.sal_normal,s.sal_meal,s.sal_childcare, s.sal_job,s.sal_car,s.sal_long, s.sal_duty, s.sal_reward,"
				+ " s.sal_vac, s.ded_pen, s.ded_heal, s.ded_long_care, s.ded_hire, s.ded_income_tax, s.ded_local_tax, s.ded_funeral,"
				+ " s.sal_sum, s.ded_sum, s.sal_real FROM employee e JOIN salary s ON e.emp_no = s.emp_no WHERE sal_month= ? order by emp_no";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, name_kor);
			pstmt.setInt(2, sal_month);
			try (ResultSet rs = pstmt.executeQuery()) {
				List<EmployeeSalary> employeesalaryList = new ArrayList<>();
				while (rs.next()) {
					employeesalaryList.add(new EmployeeSalary(rs.getInt("emp_no"), rs.getString("emp_type"),
							rs.getString("name_kor"), rs.getDate("hired_date"), rs.getString("dept"),
							rs.getString("job"), rs.getString("state"), rs.getInt("sal_year"), rs.getInt("sal_month"),
							rs.getString("sal_deg"), rs.getString("sal_normal"), rs.getString("sal_meal"),
							rs.getString("sal_childcare"), rs.getString("sal_job"), rs.getString("sal_car"),
							rs.getString("sal_long"), rs.getString("sal_duty"), rs.getString("sal_reward"),
							rs.getString("sal_vac"), rs.getString("ded_pen"), rs.getString("ded_heal"),
							rs.getString("ded_long_care"), rs.getString("ded_hire"), rs.getString("ded_income_tax"),
							rs.getString("ded_local_tax"), rs.getString("ded_funeral"), rs.getString("sal_sum"),
							rs.getString("ded_sum"), rs.getString("sal_real")));
				}
				return employeesalaryList;
			}
		}
	}

	// 급여 정보를 업데이트하는 메서드
	public void update(Connection conn, int emp_no, int sal_month, SalaryRequest salReq) throws SQLException {
		String sql = "UPDATE salary SET sal_year = ?, sal_month = ?, sal_deg = ?, sal_normal = ?, sal_meal = ?, sal_childcare = ?, sal_job = ?, sal_car = ?, sal_long = ?, sal_duty = ?, sal_reward = ?, sal_vac = ?, ded_pen = ?, ded_heal = ?, ded_long_care = ?, ded_hire = ?, ded_income_tax = ?, ded_local_tax = ?, ded_funeral = ?, sal_sum = ?, ded_sum = ?, sal_real = ? "
				+ "WHERE emp_no = ? and sal_month = ?";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, salReq.getSal_year());
			pstmt.setInt(2, salReq.getSal_month());
			pstmt.setString(3, salReq.getSal_deg());
			pstmt.setString(4, salReq.getSal_normal());
			pstmt.setString(5, salReq.getSal_meal());
			pstmt.setString(6, salReq.getSal_childcare());
			pstmt.setString(7, salReq.getSal_job());
			pstmt.setString(8, salReq.getSal_car());
			pstmt.setString(9, salReq.getSal_long());
			pstmt.setString(10, salReq.getSal_duty());
			pstmt.setString(11, salReq.getSal_reward());
			pstmt.setString(12, salReq.getSal_vac());
			pstmt.setString(13, salReq.getDed_pen());
			pstmt.setString(14, salReq.getDed_heal());
			pstmt.setString(15, salReq.getDed_long_care());
			pstmt.setString(16, salReq.getDed_hire());
			pstmt.setString(17, salReq.getDed_income_tax());
			pstmt.setString(18, salReq.getDed_local_tax());
			pstmt.setString(19, salReq.getDed_funeral());
			pstmt.setString(20, salReq.getSal_sum());
			pstmt.setString(21, salReq.getDed_sum());
			pstmt.setString(22, salReq.getSal_real());
			pstmt.setInt(23, salReq.getEmp_no());
			pstmt.setInt(24, salReq.getSal_month());
			pstmt.executeUpdate();

		}
	}

	// 특정 연도와 월로 급여 정보를 삭제하는 메서드
	public int delete(Connection conn, int emp_no, int sal_month) throws SQLException {
		String sql = "DELETE FROM salary WHERE emp_no = ? AND sal_month = ?";
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, emp_no);
			pstmt.setInt(2, sal_month);
			return pstmt.executeUpdate();// 쿼리 실행 및 삭제된 행 수 반환
		}
	}

	// 특정 기간과 항목에 따른 급여 정보를 조회하는 메서드
	public List<Salary> selectByPeriodAndItem(Connection conn, String startPeriod, String endPeriod, String salaryItem)
			throws SQLException {
		// SQL 조회 쿼리: 기간과 항목으로 조회
		String sql = "SELECT * FROM salary WHERE sal_year || '-' || sal_month BETWEEN ? AND ?";
		List<Salary> salaries = new ArrayList<>();
		try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, startPeriod);
			pstmt.setString(2, endPeriod);
			try (ResultSet rs = pstmt.executeQuery()) {
				while (rs.next()) {
					// 조회된 결과를 Salary 객체로 변환하여 리스트에 추가
					Salary salary = new Salary(rs.getInt("sal_year"), rs.getInt("sal_month"), rs.getString("sal_deg"),
							rs.getInt("emp_no"), rs.getString("sal_normal"), rs.getString("sal_meal"),
							rs.getString("sal_childcare"), rs.getString("sal_job"), rs.getString("sal_car"),
							rs.getString("sal_long"), rs.getString("sal_duty"), rs.getString("sal_reward"),
							rs.getString("sal_vac"), rs.getString("ded_pen"), rs.getString("ded_heal"),
							rs.getString("ded_long_care"), rs.getString("ded_hire"), rs.getString("ded_income_tax"),
							rs.getString("ded_local_tax"), rs.getString("ded_funeral"), rs.getString("sal_sum"),
							rs.getString("ded_sum"), rs.getString("sal_real"));
					salaries.add(salary);
				}
			}
		}
		return salaries;
	}

	private Salary convertSalary(ResultSet rs) throws SQLException {
		return new Salary(rs.getInt("sal_year"), rs.getInt("sal_month"), rs.getString("sal_deg"), rs.getInt("emp_no"),
				rs.getString("sal_normal"), rs.getString("sal_meal"), rs.getString("sal_childcare"),
				rs.getString("sal_job"), rs.getString("sal_car"), rs.getString("sal_long"), rs.getString("sal_duty"),
				rs.getString("sal_reward"), rs.getString("sal_vac"), rs.getString("ded_pen"), rs.getString("ded_heal"),
				rs.getString("ded_long_care"), rs.getString("ded_hire"), rs.getString("ded_income_tax"),
				rs.getString("ded_local_tax"), rs.getString("ded_funeral"), rs.getString("sal_sum"),
				rs.getString("ded_sum"), rs.getString("sal_real"));
	}
}