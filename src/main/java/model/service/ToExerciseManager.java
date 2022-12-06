package model.service;

import java.util.ArrayList;

import model.ToExercise;
import model.dao.ToExerciseDao;
import model.dao.mybatis.MyBatis_ToExerciseDao;

public class ToExerciseManager {

	private static ToExerciseManager manager = new ToExerciseManager();
//	private ToExerciseDao toExerciseDao;
	private MyBatis_ToExerciseDao m_toExerciseDao;

	private ToExerciseManager() {
		try {
		//	toExerciseDao = new ToExerciseDao();
			m_toExerciseDao = new MyBatis_ToExerciseDao();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static ToExerciseManager getInstance() {
		return manager;
	}

	public ArrayList<ToExercise> findToExercise(int exerciserId) {
		return m_toExerciseDao.findToExercise(exerciserId);
	}

	public int addToExercise(int exerciserId, String content) {
		System.out.println("manager");
		int result =  m_toExerciseDao.addToExercise(exerciserId, content);
		System.out.println(result);
		return result;
	}

	public int checkToExercise(int exerciserId, int itemId) {
		return m_toExerciseDao.checkToExercise(exerciserId, itemId);
	}

	public int deleteToExercise(int exerciserId, int itemId) {
		return m_toExerciseDao.deleteToExercise(exerciserId, itemId);
	}
	
	public int uncheckToExercise(int exerciserId, int itemId){
		return m_toExerciseDao.unCheckToExercise(exerciserId, itemId);
	}

}
