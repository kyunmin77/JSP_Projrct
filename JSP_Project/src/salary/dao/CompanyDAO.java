package salary.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import salary.model.Company;


public class CompanyDAO {
    public Company insert(Connection conn, Company company) throws SQLException {
        String sql = "INSERT INTO company (cp_name, ceo_job, ceo_name, bs_num, bs_regnum, founded_date, hp, bs_post, bs_addr, bs_phone, bs_fax, bs_type, cp_type, calc_start, calc_end, payday, bs_bank, bs_account, bs_acc_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, company.getCp_name());
            pstmt.setString(2, company.getCeo_job());
            pstmt.setString(3, company.getCeo_name());
            pstmt.setString(4, company.getBs_num());
            pstmt.setString(5, company.getBs_regnum());
            pstmt.setDate(6, company.getFounded_date());
            pstmt.setString(7, company.getHp());
            pstmt.setString(8, company.getBs_post());
            pstmt.setString(9, company.getBs_addr());
            pstmt.setString(10, company.getBs_phone());
            pstmt.setString(11, company.getBs_fax());
            pstmt.setString(12, company.getBs_type());
            pstmt.setString(13, company.getCp_type());
            pstmt.setDate(14, company.getCalc_start());
            pstmt.setDate(15, company.getCalc_end());
            pstmt.setDate(16, company.getPayday());
            pstmt.setString(17, company.getBs_bank());
            pstmt.setString(18, company.getBs_account());
            pstmt.setString(19, company.getBs_acc_name());
            pstmt.executeUpdate();
            return company;
        }
    }
    
    // 사업자 번호로 회사 정보를 조회하는 메서드
    public Company selectByBsNum(Connection conn, String bs_num) throws SQLException {
        String sql = "SELECT * FROM company WHERE bs_num = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, bs_num);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return new Company(
                        rs.getString("cp_name"),
                        rs.getString("ceo_job"),
                        rs.getString("ceo_name"),
                        rs.getString("bs_num"),
                        rs.getString("bs_regnum"),
                        rs.getDate("founded_date"),
                        rs.getString("hp"),
                        rs.getString("bs_post"),
                        rs.getString("bs_addr"),
                        rs.getString("bs_phone"),
                        rs.getString("bs_fax"),
                        rs.getString("bs_type"),
                        rs.getString("cp_type"),
                        rs.getDate("calc_start"),
                        rs.getDate("calc_end"),
                        rs.getDate("payday"),
                        rs.getString("bs_bank"),
                        rs.getString("bs_account"),
                        rs.getString("bs_acc_name")
                    );
                } else {
                    return null;
                }
            }
        }
    }
    
    public Company selectById(Connection conn, String bs_num) throws SQLException {
        String sql = "SELECT * FROM company WHERE bs_num = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, bs_num);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return convertCompany(rs);
                }
                return null;
            }
        }
    }

    private Company convertCompany(ResultSet rs) throws SQLException {
        return new Company(
            rs.getString("cp_name"),
            rs.getString("ceo_job"),
            rs.getString("ceo_name"),
            rs.getString("bs_num"),
            rs.getString("bs_regnum"),
            rs.getDate("founded_date"),
            rs.getString("hp"),
            rs.getString("bs_post"),
            rs.getString("bs_addr"),
            rs.getString("bs_phone"),
            rs.getString("bs_fax"),
            rs.getString("bs_type"),
            rs.getString("cp_type"),
            rs.getDate("calc_start"),
            rs.getDate("calc_end"),
            rs.getDate("payday"),
            rs.getString("bs_bank"),
            rs.getString("bs_account"),
            rs.getString("bs_acc_name")
        );
    }

    public int update(Connection conn, Company company) throws SQLException {
        String sql = "UPDATE company SET ceo_job = ?, ceo_name = ?, bs_regnum = ?, founded_date = ?, hp = ?, bs_post = ?, bs_addr = ?, bs_phone = ?, bs_fax = ?, bs_type = ?, cp_type = ?, calc_start = ?, calc_end = ?, payday = ?, bs_bank = ?, bs_account = ?, bs_acc_name = ? WHERE bs_num = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, company.getCeo_job());
            pstmt.setString(2, company.getCeo_name());
            pstmt.setString(3, company.getBs_regnum());
            pstmt.setDate(4, company.getFounded_date());
            pstmt.setString(5, company.getHp());
            pstmt.setString(6, company.getBs_post());
            pstmt.setString(7, company.getBs_addr());
            pstmt.setString(8, company.getBs_phone());
            pstmt.setString(9, company.getBs_fax());
            pstmt.setString(10, company.getBs_type());
            pstmt.setString(11, company.getCp_type());
            pstmt.setDate(12, company.getCalc_start());
            pstmt.setDate(13, company.getCalc_end());
            pstmt.setDate(14, company.getPayday());
            pstmt.setString(15, company.getBs_bank());
            pstmt.setString(16, company.getBs_account());
            pstmt.setString(17, company.getBs_acc_name());
            pstmt.setString(18, company.getBs_num());
            return pstmt.executeUpdate();
        }
    }

    public int delete(Connection conn, String bs_num) throws SQLException {
        String sql = "DELETE FROM company WHERE bs_num = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, bs_num);
            return pstmt.executeUpdate();
        }
    }
}