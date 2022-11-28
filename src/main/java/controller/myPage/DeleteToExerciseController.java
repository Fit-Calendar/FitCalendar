package controller.myPage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import model.Exerciser;
import model.ToExercise;
import model.service.ExerciserManager;
import model.service.StaticManager;
import model.service.ToExerciseManager;

public class DeleteToExerciseController implements Controller {
	private static final Logger log = LoggerFactory.getLogger(DeleteToExerciseController.class);

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ExerciserManager exerciserManager = ExerciserManager.getInstance();
		ToExerciseManager toExerciserManager = ToExerciseManager.getInstance();
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		Exerciser exerciser = exerciserManager.findExerciser(id);
		
		int itemId = Integer.parseInt(request.getParameter("itemId"));

		System.out.println("delete controller");
		toExerciserManager.deleteToExercise(exerciser.getExerciserId(), itemId);

		return "redirect:/mypage/ToExercise";
	}

}
