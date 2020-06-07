import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.UserInsert;



public class RegisterServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{

		req.setCharacterEncoding("utf-8");
		 
    	String id = req.getParameter("user_id");
		String pass = req.getParameter("user_pass");
		String name = req.getParameter("user_name");

		UserInsert ui =new UserInsert();
		ui.insertUser(id,pass,name);
		res.sendRedirect("completeAccount.jsp");
	
		
	}

 }

