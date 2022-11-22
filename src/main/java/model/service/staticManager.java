package model.service;

import java.util.ArrayList;

import model.CompareStatic;
import model.ToExercise;
import model.dao.staticDao;

public class staticManager {
	private static staticManager manager = new staticManager();
	private staticDao staticDao;

	private staticManager() {
		try {
			staticDao = new staticDao();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static staticManager getInstance() {
		return manager;
	}

	public int checkAttendance(int exerciserId) {
		return staticDao.checkAttendance(exerciserId);
	}

	public ArrayList<ToExercise> findToExercise(int exerciserId) {
		return staticDao.findToExercise(exerciserId);
	}

	public ArrayList<ToExercise> addToExercise(int exerciserId, String content) {
		return staticDao.addToExercise(exerciserId, content);
	}

	public ArrayList<ToExercise> checkToExercise(int exerciserId, int itemId) {
		return staticDao.checkToExercise(exerciserId, itemId);
	}

	public ArrayList<ToExercise> deleteToExercise(int exerciserId, int itemId) {
		return staticDao.deleteToExercise(exerciserId, itemId);
	}

	public CompareStatic calculateStatic(int exerciserId) {
		return staticDao.calculateStatic(exerciserId);
	}
}