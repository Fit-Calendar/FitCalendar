package controller.matching;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import controller.exerciser.ExerciserSessionUtils;
import model.Exerciser;
import model.RecommendList;
import model.service.ExerciserManager;
import model.service.RecommendManager;

public class MatchingRequestController implements Controller {
	private static final Logger log = LoggerFactory.getLogger(MatchingRequestController.class);
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		RecommendManager recommendManager = RecommendManager.getInstance();
		ExerciserManager exerciserManager = ExerciserManager.getInstance();
		
		HttpSession session = request.getSession();
		Exerciser exerciser = exerciserManager.findExerciser(ExerciserSessionUtils.getLoginUserId(session));
		
		int fitMateId = Integer.parseInt(request.getParameter("fitMateId"));
		
		recommendManager.requestFitmate(exerciser.getExerciserId(), fitMateId);

		return "/matching/matchingMenu/situation.jsp";
	}
}
