package salary.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import personnel.model.Employee;
import salary.dao.EmployeeDao;

public class InsertEmployeeService {
    // EmployeeDao 객체를 생성
    private EmployeeDao employeeDao = new EmployeeDao();

    // 새로운 직원 정보를 데이터베이스에 삽입하는 메서드
    public Employee insert(EmployeeRequest req) {
        Connection conn = null;
        try {
            // 데이터베이스 연결을 얻음
            conn = ConnectionProvider.getConnection();
            // 트랜잭션 시작
            conn.setAutoCommit(false);

            // EmployeeRequest 객체를 Employee 객체로 변환
            Employee employee = toEmployee(req);
            // DB에 저장하고 저장에 성공한 객체를 받아옴
            Employee savedEmployee = employeeDao.insert(conn, employee);
            if (savedEmployee == null) { // 저장에 실패하면 RuntimeException
                throw new RuntimeException("fail to insert employee");
            }

            // 트랜잭션 커밋
            conn.commit();
            // 트랜잭션 끝
            return savedEmployee;

        } catch (SQLException e) {
            // SQL 예외 발생 시 롤백
            JdbcUtil.rollback(conn);
            throw new RuntimeException(e);
        } catch (RuntimeException e) {
            // 런타임 예외 발생 시 롤백
            JdbcUtil.rollback(conn);
            throw e;
        } finally {
            // 연결 종료
            JdbcUtil.close(conn);
        }
    }

    // EmployeeRequest 객체를 Employee 객체로 변환하는 메서드
    private Employee toEmployee(EmployeeRequest req) {
        // Employee 객체 생성 및 반환
        return new  Employee(req.getEmp_no(), req.getEmp_type(), req.getName_kor(), req.getName_eng(),
                            req.getHired_date(), req.getDept(), req.getJob(), req.getState(),
                            req.getNationality(), req.getId_number(), req.getPost_code(), req.getAddr(), req.getHome_number(),
                            req.getPhone(), req.getEmail(), req.getSns(), req.getNote(), req.getBank(), req.getAccount());
    }
}
