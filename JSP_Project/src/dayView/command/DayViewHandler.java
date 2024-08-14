package dayView.command;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dayView.model.DaylabView;
import dayView.service.SelectDayViewService;
import daylab.service.DaylabRequest;
import mvc.command.CommandHandler;

public class DayViewHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/attend/DayLab_View.jsp";

	private SelectDayViewService selectDayService = new SelectDayViewService();

	SimpleDateFormat fdate = new SimpleDateFormat("yyyy-MM-dd");
	Date datth_date;

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {;

		List<DaylabView> day_list = selectDayService.select();
		req.setAttribute("day_list", day_list);


		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {

		return FORM_VIEW;
		//newArticleSuccess 二쇱냼瑜� 諛섑솚
	}
}