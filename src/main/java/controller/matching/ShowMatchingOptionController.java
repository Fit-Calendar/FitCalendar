
package controller.matching;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import controller.exerciser.ExerciserSessionUtils;
import model.Exerciser;
import model.service.ExerciserManager;
import model.service.MatchingManager;


public class ShowMatchingOptionController implements Controller{
	private static final Logger log = LoggerFactory.getLogger(MatchingStartController.class);

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		MatchingManager manager = MatchingManager.getInstance();
		ExerciserManager exManager = ExerciserManager.getInstance();

		HttpSession session = request.getSession();
		
		//로그인한 사용자의 exerciser 객체
		Exerciser exerciser = exManager.findExerciser(ExerciserSessionUtils.getLoginUserId(session));
		int exerciserId = exerciser.getExerciserId();
		
		//maxMate, useMatchSvc를 request에 전달!!
		
		exerciser = manager.showOption(exerciserId, exerciser.getUseMatchSvc(), exerciser.getMaxMate());
		
		request.setAttribute("exerciser", exerciser);
		request.setAttribute("exerciserId", exerciserId);	//option정보 저장
		return "/matching/matchingMenu/options.jsp";		//matchingMenu에 띄어져있는거임.
	}
}