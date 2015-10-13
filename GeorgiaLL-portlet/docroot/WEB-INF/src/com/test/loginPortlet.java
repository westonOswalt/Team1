package com.test;

import com.liferay.util.bridges.mvc.MVCPortlet;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import java.io.IOException; 
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;

/**
 * Portlet implementation class loginPortlet
 */
public class loginPortlet extends MVCPortlet {
	/*public void addStudent(ActionRequest actionRequest,
                     ActionResponse actionResponse) throws IOException, PortletException {
              try{
		
		
		String leaguename= ParamUtil.getString(actionRequest,league_name");
		

		String connectionparams= "jdbc:mysql://gll.eil-server.cba.ua.edu:3306/";

		String db= "gll_db"; 

		String uname="rthreatt13"
		String psword="GLLAllstars2015"

		Connection connection=null; 
			ResultSet rs; 
		try { 
			

			Class.forName("org.gjt.mm.mysql.Driver"); 
			

			connection = DriverManager.getConnection 
					(connectionURL, uname, psword); 
	
			String sql = "insert into usertable values (?,?)"; 
			java.sql.PreparedStatement prep = 
					connection.prepareStatement(sql); 
	
			prep.setString(1, leaguename); 
			prep.executeUpdate(); 
			prep.close(); 
				}catch(Exception E){ 
				
				
			}

		
				System.out.println("The error is=="+E.getMessage()); 
				
				} 
				finally{ connection.close(); 

					
		
	}*/
}


