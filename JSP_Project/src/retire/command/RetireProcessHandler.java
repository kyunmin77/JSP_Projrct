package retire.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import retire.model.RetireMemberRequest;
import retire.service.EmpRetireService;

public class RetireProcessHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		EmpRetireService empRetireService = new EmpRetireService();
		List<RetireMemberRequest> list =  empRetireService.selectAll();
		req.setAttribute("list", list);
		req.getRequestDispatcher("/WEB-INF/view/retire/retireProcess.jsp").forward(req, res);
	    return null;
	}

}
