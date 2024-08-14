package salary.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;
import personnel.model.Employee;
import salary.model.EmployeeSalary;

public class EmployeeDao {

	// 새로운 직원 정보를 데이터베이스에 삽입하는 메서드
//	新しい職員情報をDBに挿入するメソッド
	public Employee insert(Connection conn, Employee emp) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			// SQL 삽입문을 작성, 각 열 이름을 명시
			String sql = "INSERT INTO employee (emp_no, emp_type, name_kor, name_eng, hired_date, dept, job, state, nationality, id_number, post_code, addr, home_number, phone, email, sns, note, bank, account) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			// 자동 생성된 키를 반환하도록 설정//自動に作られたキーを返還させるように設定。
			pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			// PreparedStatement에 각 필드의 값을 설정
			pstmt.setInt(1, emp.getEmp_no());
			pstmt.setString(2, emp.getEmp_type());
			pstmt.setString(3, emp.getName_kor());
			pstmt.setString(4, emp.getName_eng());
			pstmt.setDate(5, emp.getHired_date());
			pstmt.setString(7, emp.getDept());
			pstmt.setString(8, emp.getJob());
			pstmt.setString(9, emp.getState());
			pstmt.setString(10, emp.getNationality());
			pstmt.setString(11, emp.getId_number());
			pstmt.setString(12, emp.getPost_code());
			pstmt.setString(13, emp.getAddr());
			pstmt.setString(14, emp.getHome_number());
			pstmt.setString(15, emp.getPhone());
			pstmt.setString(16, emp.getEmail());
			pstmt.setString(17, emp.getSns());
			pstmt.setString(18, emp.getNote());
			pstmt.setString(19, emp.getBank());
			pstmt.setString(20, emp.getAccount());

//			System.out.println("adsfaasdfdsafa" + emp.getEmp_no());

			// SQL 문 실행
			int insertedCount = pstmt.executeUpdate();

			// 삽입된 행의 개수가 0보다 크면
			if (insertedCount > 0) {
				// 자동 생성된 키를 가져옴
				rs = pstmt.getGeneratedKeys();
				if (rs.next()) {
					// 새로운 직원 번호를 가져옴
					Integer newNum = rs.getInt(1);
					// 새로운 직원 객체를 생성하여 반환
					return new Employee(newNum, emp.getEmp_type(), emp.getName_kor(), emp.getName_eng(),
							emp.getHired_date(), emp.getDept(), emp.getJob(), emp.getState(),
							emp.getNationality(), emp.getId_number(), emp.getPost_code(), emp.getAddr(),
							emp.getHome_number(), emp.getPhone(), emp.getEmail(), emp.getSns(), emp.getNote(),
							emp.getBank(), emp.getAccount());
				}
			}
			return null; // 삽입 실패 시 null 반환
		} finally {
			// 자원 해제
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
			JdbcUtil.close(pstmt);
		}
	}

//	public List<Employee> selectAllEmployees5() {
//		List<Employee> employees = new ArrayList<>();
//		String sql = "SELECT emp_no, emp_type, name_kor, dept, job, state FROM employee";
//
//		try (Connection conn = ConnectionProvider.getConnection();
//				PreparedStatement pstmt = conn.prepareStatement(sql);
//				ResultSet rs = pstmt.executeQuery()) {
//			while (rs.next()) {
//				Employee employee = new Employee();
//				employee.setEmp_no(rs.getInt("emp_no"));
//				employee.setEmp_type(rs.getString("emp_type"));
//				employee.setName_kor(rs.getString("name_kor"));
//				employee.setDept(rs.getString("dept"));
//				employee.setJob(rs.getString("job"));
//				employees.add(employee);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		return employees;
//	}

	// 직원 번호로 직원 정보를 조회하는 메서드
	public Employee selectByNo(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			// 직원 번호로 직원 정보를 조회하는 SQL 문
			pstmt = conn.prepareStatement("select * from employee order by emp_no asc");
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			Employee employee = null;
			if (rs.next()) {
				// 조회된 결과를 Employee 객체로 변환
				employee = convertEmployee(rs);
			}
			return employee; // 조회된 직원 정보 반환
		} finally {
			// 자원 해제
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public Employee selectByName(Connection conn, String name) throws SQLException {
        String sql = "SELECT * FROM employee WHERE name_kor = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, name);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return convertEmployee(rs);
                }
                return null;
            }
        }
    }
	

	// 전체 직원 수를 조회하는 메서드
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		try {
			// 전체 직원 수를 조회하는 SQL 문
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT COUNT(*) FROM employee");
			if (rs.next()) {
				return rs.getInt(1); // 직원 수 반환
			}
			return 0; // 조회된 결과가 없으면 0 반환
		} finally {
			// 자원 해제
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}

	// 페이지네이션을 사용하여 직원 정보를 조회하는 메서드
	public List<Employee> select(Connection conn, int firstRow, int endRow) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(
					"SELECT * FROM (SELECT ROWNUM AS rnum, e.* FROM (SELECT * FROM employee ORDER BY emp_no DESC) e WHERE ROWNUM <= ?) WHERE rnum >= ?");
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, firstRow);
			rs = pstmt.executeQuery();
			List<Employee> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertEmployee(rs));
			}
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	 // employee와 salary 테이블을 조인하여 조회하는 메서드
	public List<EmployeeSalary> selectEmployeeSalary(Connection conn) throws SQLException {
		 // 조인 쿼리로 employee와 salary 테이블의 데이터를 조회
		String sql = "SELECT " + "e.emp_no, e.emp_type, e.name_kor, e.hired_date, e.dept, e.job, e.state, "
				+ "s.sal_year, s.sal_month, s.sal_deg, s.sal_normal, s.sal_meal, s.sal_childcare, s.sal_job, "
				+ "s.sal_car, s.sal_long, s.sal_duty, s.sal_reward, s.sal_vac, s.ded_pen, s.ded_heal, "
				+ "s.ded_long_care, s.ded_hire, s.ded_income_tax, s.ded_local_tax, s.ded_funeral, "
				+ "s.sal_sum, s.ded_sum, s.sal_real " + "FROM employee e " + " LEFT OUTER JOIN salary s ON e.emp_no = s.emp_no order by emp_no";
		try (PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {
			List<EmployeeSalary> list = new ArrayList<>();
			while (rs.next()) {
				// 결과를 EmployeeSalary 객체로 변환하여 리스트에 추가
				list.add(new EmployeeSalary(rs.getInt("emp_no"), 
						rs.getString("emp_type"), 
						rs.getString("name_kor"),
						rs.getDate("hired_date"), 
						rs.getString("dept"), 
						rs.getString("job"),
						rs.getString("state"), 
						rs.getInt("sal_year"), 
						rs.getInt("sal_month"),
						rs.getString("sal_deg"), 
						rs.getString("sal_normal"), 
						rs.getString("sal_meal"),
						rs.getString("sal_childcare"), 
						rs.getString("sal_job"), 
						rs.getString("sal_car"),
						rs.getString("sal_long"), 
						rs.getString("sal_duty"), 
						rs.getString("sal_reward"),
						rs.getString("sal_vac"), 
						rs.getString("ded_pen"), 
						rs.getString("ded_heal"),
						rs.getString("ded_long_care"), 
						rs.getString("ded_hire"), 
						rs.getString("ded_income_tax"),
						rs.getString("ded_local_tax"), 
						rs.getString("ded_funeral"), 
						rs.getString("sal_sum"),
						rs.getString("ded_sum"), 
						rs.getString("sal_real")));
			}
			return list;
		}
	}


	
	
	// 모든 직원 정보를 조회하는 메서드
	public List<Employee> selectAll(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("SELECT * FROM employee");
			rs = pstmt.executeQuery();
			List<Employee> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertEmployee(rs));
			}
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public Employee update(Connection conn, Employee employee) throws SQLException {
        String sql = "UPDATE employee SET emp_type = ?, name_kor = ?, dept = ?, job = ?, state = ? WHERE emp_no = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, employee.getEmp_type());
            pstmt.setString(2, employee.getName_kor());
            pstmt.setString(3, employee.getDept());
            pstmt.setString(4, employee.getJob());
            pstmt.setString(5, employee.getState());
            pstmt.setInt(6, employee.getEmp_no());
            pstmt.executeUpdate();
            return employee;
        }
    }

	// ResultSet의 결과를 Employee 객체로 변환하는 메서드
	private Employee convertEmployee(ResultSet rs) throws SQLException {
		return new Employee(rs.getInt("emp_no"), rs.getString("emp_type"), rs.getString("name_kor"),
				rs.getString("name_eng"), rs.getDate("hired_date"), rs.getString("dept"),
				rs.getString("job"), rs.getString("state"), rs.getString("nationality"), rs.getString("id_number"),
				rs.getString("post_code"), rs.getString("addr"), rs.getString("home_number"), rs.getString("phone"),
				rs.getString("email"), rs.getString("sns"), rs.getString("note"), rs.getString("bank"),
				rs.getString("account"));
	}
	
	
}
