package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.UserDao;
import Model.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//接收客户端传递过来的参数
		request.setCharacterEncoding("UTF-8");
		String leixing=request.getParameter("leixing");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String platformtype=request.getParameter("platformtype");
		String platformname=request.getParameter("platformname");
		String platformnum=request.getParameter("platformnum");
		String supportinstitution=request.getParameter("supportinstitution");
		String approvaltime=request.getParameter("approvaltime");
		String approvalnum=request.getParameter("approvalnum");
		String technicalfield=request.getParameter("technicalfield");
		User user=new User();
		user.setLeixing(leixing);
		user.setUsername(username);
		user.setPassword(password);
		user.setPlatformtype(platformtype);
		user.setPlatformname(platformname);
		user.setPlatformnum(platformnum);
		user.setSupportinstitution(supportinstitution);
		user.setApprovaltime(approvaltime);
		user.setApprovalnum(approvalnum);
		user.setTechnicalfield(technicalfield);
		UserDao userDao=new UserDao();
		try{
			
			userDao.add(user);
			
			response.sendRedirect(""+request.getContextPath()+"/user/login.jsp");
			
		}catch (Exception e) {
			
			response.sendRedirect(""+request.getContextPath()+"/user/register.jsp?registererror=yes");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
