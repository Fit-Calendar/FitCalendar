package main.java.Dao;

import java.sql.ResultSet;

import main.java.Utils.JDBCUtil;


public class ExerciserDao {
	private JDBCUtil jdbcUtil = null;	// JDBCUtil 참조 변수 선언

	public ExerciserDao() {	// �깮�꽦�옄 
		jdbcUtil = new JDBCUtil();		// JDBCUtil 객체 생성 및 활용
	}
	
	//사용자 계정 password를 전달받아 해당 password의 사용자 정보를 삭제하는 메소드
	public int deleteExerciser(String password) {
		String query = "DELETE FROM exerciser WHERE password = ?"; // JDBCUtil 에 query 문 설정
		Object[] param = new Object[] { password };
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
	
	public void findExerciser(int exerciserId) {
		String nickname = null;
		String query = "select nickname from exerciser where exerciserId=?";
		Object[] param = new Object[] {exerciserId};
		jdbcUtil.setSqlAndParameters(query, param);
		
		try {
			ResultSet rs = jdbcUtil.executeQuery();
			
			while(rs.next()) {
				nickname = rs.getString("nickname");
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close();
		}
		System.out.println(nickname);
	}
}
