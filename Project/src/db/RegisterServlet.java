package db;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import com.microsoft.sqlserver.jdbc.*;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegisterServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String fullname = request.getParameter("name");
		String[] temp = fullname.split("\\s+");
		System.out.println(fullname);
		String name = temp[0];
		String surname = temp[1];
		System.out.println(name + " " + surname);
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String adress = request.getParameter("adress");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String birthdate = request.getParameter("birthdate");
		String phonenumber = request.getParameter("phonenumber");
		
		String connectionUrl = "jdbc:sqlserver://localhost:1433;" +
				"databaseName=EntertainmenTV;integratedSecurity=true;";

			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
					
			try {
			    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			    con = DriverManager.getConnection(connectionUrl);
			            
			    String SQL = "insertUser '" + name + "', '" + surname + "', '" + email + "', '" +
			    password + "', '" + adress + "', '" + gender + "', " + Integer.parseInt(age) + ", '" + 
			    birthdate + "', " + phonenumber + ";";
			    			    
			    
			    stmt = con.createStatement();
			    rs = stmt.executeQuery(SQL);		            
			}

			catch (Exception e) {
				e.printStackTrace();
			}
		
		request.getRequestDispatcher("login.jsp").forward(request, response);
		}

}