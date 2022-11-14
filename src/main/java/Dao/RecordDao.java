package main.java.Dao;

import main.java.Utils.*;

public class RecordDao {
	
	private JDBCUtil jdbcUtil = null;	// JDBCUtil 참조 변수 선언

	public RecordDao() {	// 생성자 
		jdbcUtil = new JDBCUtil();		// JDBCUtil 객체 생성 및 활용
	}
	
	//게시물의 primaryKey인 recordId 전달받아 해당 recordId의 게시물을 삭제하는 메소드
	public int deleteRecord(int recordId) {
		String query = "DELETE FROM record WHERE recordId = ?"; // JDBCUtil 에 query 문 설정
		Object[] param = new Object[] { recordId };
		jdbcUtil.setSqlAndParameters(query, param);
				
		try {
			int result = jdbcUtil.executeUpdate();		// delete 문 실행
			return result;							// delete 에 의해 반영된 레코드 수 반환
		} catch(Exception e) {
			jdbcUtil.rollback();
			e.printStackTrace();
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close();		// ResultSet, PreparedStatement, Connection 반환
		}
		return 0;
	}		
}
