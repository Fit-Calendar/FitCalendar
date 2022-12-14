package model.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Record;

public class RecordDao {

	private JDBCUtil jdbcUtil = null; // JDBCUtil 참조 변수 선언

	public RecordDao() { // 생성자
		jdbcUtil = new JDBCUtil(); // JDBCUtil 객체 생성 및 활용
	}

	// recordId로 Record 1개 조회
	public Record findRecordDetails(int recordId) {
		Record record = null;
		String query = "select * from record where recordId=?";
		Object[] param = new Object[] { recordId };
		jdbcUtil.setSqlAndParameters(query, param);

		try {
			ResultSet rs = jdbcUtil.executeQuery();

			while (rs.next()) {
				String title = rs.getString("title");
				String creationDate = rs.getString("creationDate");
				int totalTime = rs.getInt("totalTime");
				int category = rs.getInt("category");
				String routine = rs.getString("routine");
				String diet = rs.getString("diet");
				String photo = rs.getString("photo");
				int shareOption = rs.getInt("shareOption");
				int exerciserId = rs.getInt("exerciserId");
				record = new Record(recordId, title, creationDate, totalTime, category, routine, diet, photo,
						shareOption, exerciserId);
			}
			return record;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close();
		}
		return null;
	}

	// exerciser가 작성한 모든 Record 조회
	public List<Record> findRecordList(int exerciserId, int currentPage, int countPerPage) {
		String query = "select * from record where exerciserId=? order by recordId desc";
		Object[] param = new Object[] { exerciserId };
		jdbcUtil.setSqlAndParameters(query, param,
				ResultSet.TYPE_SCROLL_INSENSITIVE,				// cursor scroll 가능
				ResultSet.CONCUR_READ_ONLY);

		try {
			ResultSet rs = jdbcUtil.executeQuery();

			int start = ((currentPage-1) * countPerPage) + 1;	// 출력을 시작할 행 번호 계산
			if ((start >= 0) && rs.absolute(start)) {			// 커서를 시작 행으로 이동
				List<Record> list = new ArrayList<Record>();
				do {
					int recordId = rs.getInt("recordId");
					String title = rs.getString("title");
					String creationDate = rs.getString("creationDate");
					int totalTime = rs.getInt("totalTime");
					int category = rs.getInt("category");
					String routine = rs.getString("routine");
					String diet = rs.getString("diet");
					String photo = rs.getString("photo");
					int shareOption = rs.getInt("shareOption");

					Record record = new Record(recordId, title, creationDate, totalTime, category, routine, diet, photo,
							shareOption, exerciserId);
					list.add(record);
				} while ((rs.next()) && (--countPerPage > 0));		
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close();
		}
		return null;
	}

	// 모든 exerciser의 전체 운동 기록 조회
	public List<Record> findAllRecords() {
		String query = "select * from record";
		jdbcUtil.setSqlAndParameters(query, null);

		try {
			ResultSet rs = jdbcUtil.executeQuery();

			List<Record> list = new ArrayList<Record>();
			while (rs.next()) {
				int recordId = rs.getInt("recordId");
				String title = rs.getString("title");
				String creationDate = rs.getString("creationDate");
				int totalTime = rs.getInt("totalTime");
				int category = rs.getInt("category");
				String routine = rs.getString("routine");
				String diet = rs.getString("diet");
				String photo = rs.getString("photo");
				int shareOption = rs.getInt("shareOption");
				int exerciserId = rs.getInt("exerciserId");

				Record record = new Record(recordId, title, creationDate, totalTime, category, routine, diet, photo,
						shareOption, exerciserId);
				list.add(record);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close();
		}
		return null;
	}

	public int insertRecord(String title, String creationDate, int totalTime, int category, String routine, String diet, String photo, int shareOption, int exerciserId) {
		String query = "insert into record (recordid, title, creationdate, totaltime, category, routine, diet, photo, shareoption, exerciserid)\r\n"
				+ "values (RECORDIDSEQ.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Object[] param = new Object[] { title, creationDate, totalTime, category, routine, diet, photo, shareOption, exerciserId };
		jdbcUtil.setSqlAndParameters(query, param);

		try {
			int result = jdbcUtil.executeUpdate(); // insert 문 실행
			return result; // insert 에 의해 반영된 레코드 수 반환
		} catch (Exception e) {
			jdbcUtil.rollback();
			e.printStackTrace();
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close(); // ResultSet, PreparedStatement, Connection 반환
		}
		return 0;
	}

	// 게시물의 primaryKey인 recordId 전달받아 해당 recordId의 게시물을 삭제하는 메소드
	public int deleteRecord(int recordId) {
		String query = "DELETE FROM record WHERE recordId = ?"; // JDBCUtil 에 query 문 설정
		Object[] param = new Object[] { recordId };
		jdbcUtil.setSqlAndParameters(query, param);

		try {
			int result = jdbcUtil.executeUpdate(); // delete 문 실행
			return result; // delete 에 의해 반영된 레코드 수 반환
		} catch (Exception e) {
			jdbcUtil.rollback();
			e.printStackTrace();
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close(); // ResultSet, PreparedStatement, Connection 반환
		}
		return 0;
	}

	public int updateRecord(int recordId, String title, String creationDate, int totalTime, int category,
			String routine, String diet, String photo, int shareOption, int exerciserId) {
		String query = "UPDATE record "
				+ "SET title = ?, creationDate = ?, totalTime = ?, category = ?, routine = ?, diet = ?, photo = ?, shareOption = ? "
				+ " WHERE recordId = ? "; // JDBCUtil 에 query 문 설정
		Object[] param = new Object[] { title, creationDate, totalTime, category, routine, diet, photo, shareOption,
				recordId };
		jdbcUtil.setSqlAndParameters(query, param);

		try {
			int result = jdbcUtil.executeUpdate(); // delete 문 실행
			return result; // delete 에 의해 반영된 레코드 수 반환
		} catch (Exception e) {
			jdbcUtil.rollback();
			e.printStackTrace();
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close(); // ResultSet, PreparedStatement, Connection 반환
		}
		return 0;
	}

	// 카테고리에 따라 전체 사용자의 전체 기록 조회 메소드
	public List<Record> findRecordListByCategory(int category) {
		String query = "select * from record where category=?";
		Object[] param = new Object[] { category };
		jdbcUtil.setSqlAndParameters(query, param);

		try {
			ResultSet rs = jdbcUtil.executeQuery();

			List<Record> list = new ArrayList<Record>();
			while (rs.next()) {
				int recordId = rs.getInt("recordId");
				String title = rs.getString("title");
				String creationDate = rs.getString("creationDate");
				int totalTime = rs.getInt("totalTime");
				String routine = rs.getString("routine");
				String diet = rs.getString("diet");
				String photo = rs.getString("photo");
				int shareOption = rs.getInt("shareOption");
				int exerciserId = rs.getInt("exerciserId");

				Record record = new Record(recordId, title, creationDate, totalTime, category, routine, diet, photo,
						shareOption, exerciserId);
				list.add(record);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close();
		}
		return null;
	}

	public List<Record> getRecordList(int startRow, int pageSize) {

		String query = "select * from record where recordid between ? and ? order by recordid desc";
		Object[] param = new Object[] { startRow, startRow + pageSize };
		jdbcUtil.setSqlAndParameters(query, param);

		try {
			ResultSet rs = jdbcUtil.executeQuery();

			List<Record> list = new ArrayList<Record>();
			while (rs.next()) {
				int recordId = rs.getInt("recordId");
				String title = rs.getString("title");
				String creationDate = rs.getString("creationDate");
				int totalTime = rs.getInt("totalTime");
				int category = rs.getInt("category");
				String routine = rs.getString("routine");
				String diet = rs.getString("diet");
				String photo = rs.getString("photo");
				int shareOption = rs.getInt("shareOption");
				int exerciserId = rs.getInt("exerciserId");

				Record record = new Record(recordId, title, creationDate, totalTime, category, routine, diet, photo,
						shareOption, exerciserId);
				list.add(record);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close();
		}
		return null;
	}


	public int findMyRecordCnt(int exerciserId) {
		String query = "select count(*) from record where exerciserid=?";
		Object[] param = new Object[] { exerciserId };
		jdbcUtil.setSqlAndParameters(query, param);

		try {
			ResultSet rs = jdbcUtil.executeQuery();
			int cnt = 0;

			while (rs.next()) {
				cnt = rs.getInt(1);
			}
			return cnt;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close();
		}
		return -1;
	}

	public List<Record> findAllExerciserRecords(int currentPage, int countPerPage){
		String query = "select * from record where shareOption=1 order by recordid desc";
		jdbcUtil.setSqlAndParameters(query, null, 
				ResultSet.TYPE_SCROLL_INSENSITIVE,				// cursor scroll 가능
				ResultSet.CONCUR_READ_ONLY);

		try {
			ResultSet rs = jdbcUtil.executeQuery();
			int start = ((currentPage-1) * countPerPage) + 1;	// 출력을 시작할 행 번호 계산
			if ((start >= 0) && rs.absolute(start)) {			// 커서를 시작 행으로 이동
				List<Record> list = new ArrayList<Record>();
				do {
					int recordId = rs.getInt("recordId");
					String title = rs.getString("title");
					String creationDate = rs.getString("creationDate");
					int totalTime = rs.getInt("totalTime");
					int category = rs.getInt("category");
					String routine = rs.getString("routine");
					String diet = rs.getString("diet");
					String photo = rs.getString("photo");
					int shareOption = rs.getInt("shareOption");
					int exerciserId = rs.getInt("exerciserId");

					Record record = new Record(recordId, title, creationDate, totalTime, category, routine, diet, photo, shareOption, exerciserId);
					list.add(record);
				} while ((rs.next()) && (--countPerPage > 0));		
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close();
		}
		return null;
	}

	/**
	 * 레코드 개수세기
	 */
	public int countRecord(int exerciserId) {
		// String query = "update ranking set point=point+5 where exerciserid=?"; //
		// JDBCUtil 에 query 문 설정
		Object[] param = new Object[] { exerciserId };

		//jdbcUtil.setSqlAndParameters(query, param);

		try {
			int result = jdbcUtil.executeUpdate(); // update 문 실행
			return result;
		} catch (Exception e) {
			jdbcUtil.rollback();
			e.printStackTrace();
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close(); // ResultSet, PreparedStatement, Connection 반환
		}
		return -1;
	}

	public int getTotalPages(int countPerPage) {
		String query = "select count(*) from record";
		jdbcUtil.setSqlAndParameters(query, null);

		try {
			ResultSet rs = jdbcUtil.executeQuery();
			int result = 0;
			while (rs.next()) {
				result = rs.getInt(1);
			}
			if(result%countPerPage != 0)
				return result/countPerPage + 1;
			return result/countPerPage;
		} catch (Exception e) {
			jdbcUtil.rollback();
			e.printStackTrace();
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close(); // ResultSet, PreparedStatement, Connection 반환
		}
		return -1;
	}
}
