package controller.matching;

import java.util.ArrayList;
import java.util.List;

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

public class MatchingGetRecommendListController implements Controller {
	private static final Logger log = LoggerFactory.getLogger(MatchingGetRecommendListController.class);

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RecommendManager recommManager = RecommendManager.getInstance();
		ExerciserManager exManager = ExerciserManager.getInstance();

		HttpSession session = request.getSession();

		String id = (String) session.getAttribute("userId");

		// 로그인한 사용자의 exerciser 객체
		Exerciser exerciser = exManager.findExerciser(id);

		RecommendList recommendList = recommManager.showGetRecommendList(exerciser.getExerciserId());

		List<Exerciser> getRecommList = new ArrayList<Exerciser>();

		try {
			if (recommendList != null) {
				// 나에게 추천 신청을 한 사람들이 보여야함. 내가 recommId 1 2 3 에 있으면 누군가가 날 추천 누른거야.
				// 그래서 나는 exerciserId를 구해서 리스트를 보내면 돼!!
				if (recommendList.getRecommend1().getExerciserId() == exerciser.getExerciserId()) {
					getRecommList.add(recommendList.getExerciser());
				} else if (recommendList.getRecommend2().getExerciserId() == exerciser.getExerciserId()) {
					getRecommList.add(recommendList.getExerciser());
				} else if (recommendList.getRecommend3().getExerciserId() == exerciser.getExerciserId()) {
					getRecommList.add(recommendList.getExerciser());
				}

			}
			// getRecommList 전달해서 forwarding
			request.setAttribute("getRecommList", getRecommList);
			return "/matching/matchingMenu/getRecommendList.jsp";
		} catch (Exception e) {
			request.setAttribute("exerciser", exerciser);
		}

		return "redirect:/matching/matchingMenu";

	}
}
