package db;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@WebServlet("/loginServ")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    public LoginServ() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException { 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
					 
	    String regId = request.getParameter("uname");
		String pass = request.getParameter("password");
		
		if(regId == null || pass == null || "".equals(regId) || "".equals(pass)) {
	    	request.setAttribute("error_message", "Please enter login id and password");
	    	request.getRequestDispatcher("/login.jsp").forward(request, response);
	    	System.out.println("null");
	    }
		
		boolean isUserFound = Util.searchUserInDb(regId,pass);
        if(isUserFound) {               
        	if(regId.equals("admin") && pass.equals("admin")) {
        		response.sendRedirect("admin.jsp");
        	}
        	else {
        		response.sendRedirect("home.jsp");
        	}         
        }
        if(!isUserFound) {
            System.out.println(isUserFound);
            response.sendRedirect("login.jsp");  	
        }   		         
        //request.setAttribute("checklogin", checklogin);
 
	}
	
}