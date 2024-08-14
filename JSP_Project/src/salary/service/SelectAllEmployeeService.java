package salary.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jdbc.connection.ConnectionProvider;
import personnel.model.Employee;
import salary.dao.EmployeeDao;

public class SelectAllEmployeeService {
    // EmployeeDao 객체 생성
    private EmployeeDao employeeDao = new EmployeeDao();
    
    // 모든 직원 정보를 조회하는 메서드
    public List<Employee> selectAll() {
        try (Connection conn = ConnectionProvider.getConnection()) {
            // EmployeeDao의 selectAll 메서드를 호출하여 모든 직원 정보를 조회
            List<Employee> employees = employeeDao.selectAll(conn);
            return employees;
        } catch (SQLException e) {
            // SQL 예외가 발생할 경우 RuntimeException으로 변환하여 던짐
            throw new RuntimeException(e);
        }
    }
    
    
    
}
