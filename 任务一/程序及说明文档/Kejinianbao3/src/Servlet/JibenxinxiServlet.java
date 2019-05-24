package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.PlatformDao;
import Model.Platform;

/**
 * Servlet implementation class JibenxinxiServlet
 */
@WebServlet("/JibenxinxiServlet")
public class JibenxinxiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JibenxinxiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String platformname=request.getParameter("platformname");
		String platformnum=request.getParameter("platformnum");
		String approvaltime=request.getParameter("approvaltime");
		String approvalnum=request.getParameter("approvalnum");
		String technicalfield=request.getParameter("technicalfield");
		String platformlevel=request.getParameter("platformlevel");
		String cmbProvince=request.getParameter("cmbProvince");
		String cmbCity=request.getParameter("cmbCity");
		String cmbArea=request.getParameter("cmbArea");
		String organization=request.getParameter("organization");
		String construction=request.getParameter("construction");
		String jingjinji=request.getParameter("jingjinji");
		String fuwuhangye1=request.getParameter("fuwuhangye1");
		String fuwuhangye11=request.getParameter("fuwuhangye11");
		String fuwuhangye111=request.getParameter("fuwuhangye111");
		String suoshuxk1=request.getParameter("suoshuxk1");
		String suoshuxk11=request.getParameter("suoshuxk11");
		String suoshuxk111=request.getParameter("suoshuxk111");
		String supportinstitution=request.getParameter("supportinstitution");
		String creditcode=request.getParameter("creditcode");
		String legalpersonname=request.getParameter("legalpersonname");
		String legalpersonphone=request.getParameter("legalpersonphone");
		String supporttype=request.getParameter("supporttype");
		String unitconstruction=request.getParameter("unitconstruction");
		String directorname=request.getParameter("directorname");
		String directorsex=request.getParameter("directorsex");
		String directorbirth=request.getParameter("directorbirth");
		String directortitle=request.getParameter("directortitle");
		String directormajor=request.getParameter("directormajor");
		String directoreedubg=request.getParameter("directoreedubg");
		String directordegree=request.getParameter("directordegree");
		String directortel=request.getParameter("directortel");
		String directorphone=request.getParameter("directorphone");
		String directormail=request.getParameter("directormail");
		String webname=request.getParameter("webname");
		String url=request.getParameter("url");
		String address=request.getParameter("address");
		String postcode=request.getParameter("postcode");
		String leixing=request.getParameter("leixing");

		Platform platform=new Platform();
		platform.setPlatformname(platformname);
		platform.setPlatformnum(platformnum);
		platform.setApprovaltime(approvaltime);
		platform.setApprovalnum(approvalnum);
		platform.setTechnicalfield(technicalfield);
		platform.setPlatformlevel(platformlevel);
		platform.setCmbProvince(cmbProvince);
		platform.setCmbCity(cmbCity);
		platform.setCmbArea(cmbArea);
		platform.setOrganization(organization);
		platform.setConstruction(construction);
		platform.setJingjinji(jingjinji);
		platform.setFuwuhangye1(fuwuhangye1);
		platform.setFuwuhangye11(fuwuhangye11);
		platform.setFuwuhangye111(fuwuhangye111);
		platform.setSuoshuxk1(suoshuxk1);
		platform.setSuoshuxk11(suoshuxk11);
		platform.setSuoshuxk111(suoshuxk111);
		platform.setSupportinstitution(supportinstitution);
		platform.setCreditcode(creditcode);
		platform.setLegalpersonname(legalpersonname);
		platform.setLegalpersonphone(legalpersonphone);
		platform.setSupporttype(supporttype);
		platform.setUnitconstruction(unitconstruction);
		platform.setDirectorname(directorname);
		platform.setDirectorsex(directorsex);
		platform.setDirectorbirth(directorbirth);
		platform.setDirectortitle(directortitle);
		platform.setDirectormajor(directormajor);
		platform.setDirectoreedubg(directoreedubg);
		platform.setDirectordegree(directordegree);
		platform.setDirectortel(directortel);
		platform.setDirectorphone(directorphone);
		platform.setDirectormail(directormail);
		platform.setWebname(webname);
		platform.setUrl(url);
		platform.setAddress(address);
		platform.setPostcode(postcode);

		PlatformDao platformDao=new PlatformDao();
		try{
			
			platformDao.add(platform);
			response.sendRedirect(""+request.getContextPath()+"/platform/zonghecha.jsp");
			
		}catch (Exception e) {
			
			response.sendRedirect(""+request.getContextPath()+"/platform/jibenxinxi.jsp?jibenxinxierror=yes");
			
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
