package controller.extra;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import model.CompareStatic;
import model.Exerciser;
import model.service.exerciserManager;
import model.service.staticManager;

public class ViewAttendanceController implements Controller {
	private static final Logger log = LoggerFactory.getLogger(ViewAttendanceController.class);

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String id = request.getParameter("id");
		int check = Integer.parseInt(request.getParameter("todayAttendance"));
		String checkId = request.getParameter("exerciserId");
		CompareStatic c_static;

		staticManager s_manager = staticManager.getInstance();
		exerciserManager e_manager = exerciserManager.getInstance();

		Exerciser exerciser = e_manager.findExerciser(checkId);

		if (exerciser != null) {
			c_static = s_manager.calculateStatic(exerciser.getExerciserId());
			request.setAttribute("compareResult", c_static);
		}

		return "/mypage/viewRoutineStatics.jsp";
	}
}