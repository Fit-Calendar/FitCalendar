package model.service;

import model.Exerciser;
import model.dao.ExerciserDao;

public class ExerciserManager {
	private static ExerciserManager manager = new ExerciserManager();
	private ExerciserDao exerciserDao;

	private ExerciserManager() {
		try {
			exerciserDao = new ExerciserDao();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static ExerciserManager getInstance() {
		return manager;
	}

	public Exerciser findExerciser(String id) {
		return exerciserDao.findExerciserById(id);
	}

	public Exerciser findExerciserProfile(String id) {
		return exerciserDao.findExerciserProfile(id);
	}

	public int insertExerciser(String password, String nickname, String explanation, String speciality,
			String personality, String gender, String id) {
		return exerciserDao.insertExerciser(password, nickname, explanation, speciality, personality, gender, id);
	}

	public Exerciser updateExerciserProfile(Exerciser exerciser) {
		return exerciserDao.updateExerciserProfile(exerciser);
	}

	public int deleteExerciser(String deleteId, String password) {
		if (exerciserDao.findExerciserById(deleteId).getPassword().equals(password))
			return exerciserDao.deleteExerciser(deleteId);

		return 0;
	}
	
	public Exerciser findExerciserById(int exerciserId) {
		return exerciserDao.findExerciser(exerciserId);
	}
	
	public int updatePoint(int exerciserId) {
		return exerciserDao.updatePoint(exerciserId);
	}
}