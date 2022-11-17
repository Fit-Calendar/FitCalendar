package controller.ToExercise;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import main.java.Static.Dto.ToExercise;
import main.model.service.staticManager;

public class AddToExerciseController implements Controller{
	private static final Logger log = LoggerFactory.getLogger(AddToExerciseController.class);
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws Exception {
		int exerciserId = Integer.parseInt(request.getParameter("exerciserId"));
		String content = request.getParameter("content");
		staticManager manager = staticManager.getInstance();		

		ArrayList<ToExercise> list = manager.addToExercise(exerciserId, content);


		if(list != null) {
			request.setAttribute("ToExerciseList", list);
			return "redirect:/mypage/ToExercise";	
		}


		return " /mypage/ToExercise.jsp" ;
	}	

}