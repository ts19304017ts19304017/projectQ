import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RegisterConfirmServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		req.setCharacterEncoding("utf-8");
		
		String id = req.getParameter("user_id");
		String pass = req.getParameter("user_pass");
		String name = req.getParameter("user_name");

		req.setAttribute("id",id);
		req.setAttribute("pass",pass);
		req.setAttribute("name",name);


		RequestDispatcher dis = req.getRequestDispatcher("registeratioConfirmation.jsp");

		dis.forward(req , res);

	}
	/*public void doGet (HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{

	}*/
}