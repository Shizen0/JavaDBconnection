package db; 

import java.sql.*;
import com.microsoft.sqlserver.jdbc.*;

public class Util {

    public static boolean searchUserInDb(String email, String password) {
    	String connectionUrl = "jdbc:sqlserver://localhost:1433;" +
				"databaseName=EntertainmenTV;integratedSecurity=true;";

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
					
		try {
		    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		    con = DriverManager.getConnection(connectionUrl);
		            
		    String SQL = "SELECT * FROM LoginInfo";
		    stmt = con.createStatement();
		    rs = stmt.executeQuery(SQL);
		    
		    while(rs.next()) {
		    	if(rs.getString(1).equals(email) && rs.getString(2).equals(password)) {
		    		return true;
		    	}
		    }
		    return false;		    
		}

		catch (Exception e) {
			e.printStackTrace();
		}
			
		return false;
    }
}