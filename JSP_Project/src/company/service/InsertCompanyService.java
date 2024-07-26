package company.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import article.model.Article;
import article.service.WriteRequest;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import company.dao.CompanyDao;
import company.model.Company;

public class InsertCompanyService {
	private CompanyDao companyDao = new CompanyDao();
	
	public void insert(CompanyRequest req) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			//트랜잭션 시작
			conn.setAutoCommit(false);
			
			Company company = toCompany(req);
			//DB에 저장 하고 저장에 성공한 객체를 받아옴
			Article savedArticle = CompanyDao.insert(conn, company);
			if(savedArticle == null) {	// 저장에 실패하면 RuntimeException
				throw new RuntimeException("fail to insert article");
			}
			//저장에 성공한 article객체와 WriteRequest 객체로 ArticleContent 인스턴스 생성
			ArticleContent content = new ArticleContent(
					savedArticle.getNumber(),
					req.getContent());
			
			//content을 DB에 저장 하고 저장에 성공한 객체를 받아옴
			ArticleContent savedContent = contentDao.insert(conn, content);
			if(savedContent == null) {	// 저장에 실패하면 RuntimeException
				throw new RuntimeException("fail to insert article_content");
			}
			
			conn.commit();
			//트랜잭션 끝
			return savedArticle.getNumber();	// 저장한 Article의 number를 반환
		}catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}catch (RuntimeException e) {
			JdbcUtil.rollback(conn);
			throw e;
		}finally {
			JdbcUtil.close(conn);
		}
	}
	
	private Company toCompany(CompanyRequest req) {
		return new Company(
				req.getCp_name(),
				req.getCeo_job(),
				req.getCeo_name(),
				req.getBs_num(),
				req.getBs_regnum(),
				req.getFounded_date(),
				req.getHp(),
				req.getBs_post(),
				req.getBs_addr(),
				req.getBs_phone(),
				req.getBs_fax(),
				req.getBs_type(),
				req.getCp_type(),
				req.getCalc_start(),
				req.getCalc_end(),
				req.getPayday(),
				req.getBs_bank(),
				req.getBs_account(),
				req.getBs_acc_name());
	}
	
}