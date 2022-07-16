package Controller;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection;



/**
 * Servlet implementation class LoginController
 */
@WebServlet("/RLoginController")
public class RLoginController extends HttpServlet {private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//try	
        response.setContentType("text/html");
        String action = request.getParameter("action");

        switch (action) {
		   case "signupStaff":
		        signupStaff(request, response);
		        break;
		    case "loginStaff":
		        loginStaff(request, response);
		        break;
		    case "logout":
		    	logout(request, response);
		    	break;
		    case "viewStaff":
		        viewStaff(request, response);
		        break;
		    case "deleteStaff":
		        deleteStaff(request, response);
		        break;
		    case "updateStaff":
		        updateStaff(request, response);
		        break;
		}
	}
        
	
 
	private void viewStaff(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		  HttpSession session = request.getSession();
	        session.removeAttribute("Staff_ID");
	        session.removeAttribute("Staff_Name");
	        session.invalidate();
	        response.sendRedirect("StaffLogin.jsp");
	}

		// TODO Auto-generated method st
	

	private void signupStaff(HttpServletRequest request, HttpServletResponse response)  {
		
        response.setContentType("text/html");  
		
		String name = request.getParameter("name"); 
		int phonenumber = Integer.parseInt(request.getParameter("number"));
		int managerid = Integer.parseInt(request.getParameter("manid"));
		String password = request.getParameter("pass");
		String role = request.getParameter("role");

		try {
			
			Connection conn = null;
			PreparedStatement stat = null;
				String DB_CONNECTION = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0";
				String DB_USER = "zaiaryvqbpwwcb";	
				String DB_PASSWORD = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";

				conn = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
				String data = "insert into staff(staff_name,staff_password,manager_id,staff_telno,staff_role) values(?,?,?,?,?)";
				stat = conn.prepareStatement(data);
				
				stat.setString(1,name);
				stat.setInt(2,phonenumber);
				stat.setInt(3,managerid);
				stat.setString(4,password);
				stat.setString(5,role);
				
				stat.executeUpdate();
				response.sendRedirect("StaffLogin.jsp");
			}
			
			 catch (Exception e){
		            e.printStackTrace();
		            
		        }

    	

		
	}
		
		
		// TODO Auto-generated method stub
		

	private void deleteStaff(HttpServletRequest request, HttpServletResponse response) 
		             {
		        String id = request.getParameter("id");
		        
				try {
					
					Connection conn = null;
					PreparedStatement stat = null;
						String DB_CONNECTION = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0";
						String DB_USER = "zaiaryvqbpwwcb";	
						String DB_PASSWORD = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";

						conn = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
						String data = "DELETE * staff where staff_id '"+id+"'";
						stat = conn.prepareStatement(data);
						
						
						stat.executeUpdate();
						response.sendRedirect("dasboardstaff.jsp");
					}
					
					 catch (Exception e){
				            e.printStackTrace();
				            
				        }
		    }
	

	private void updateStaff(HttpServletRequest request, HttpServletResponse response) { 
		// TODO Auto-generated method stub
        response.setContentType("text/html");  
		
		String id = request.getParameter("id"); 
		String name = request.getParameter("name"); 
		int phonenumber = Integer.parseInt(request.getParameter("number"));
		int managerid = Integer.parseInt(request.getParameter("manid"));
		String password = request.getParameter("pass");
		String role = request.getParameter("role");

		try {
			
			Connection conn = null;
			PreparedStatement stat = null;
				String DB_CONNECTION = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0";
				String DB_USER = "zaiaryvqbpwwcb";	
				String DB_PASSWORD = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";

				conn = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
				String data = "UPDATE staff (staff_name=?,staff_password=?,manager_id=?,staff_telno=?,staff_role=? where staff_id=?)";
				stat = conn.prepareStatement(data);
				
				stat.setString(1,name);
				stat.setInt(2,phonenumber);
				stat.setInt(3,managerid);
				stat.setString(4,password);
				stat.setString(5,role);
				stat.setString(6,id);

				
				stat.executeUpdate();
				response.sendRedirect("dashboardstaff.jsp");
			}
			
			 catch (Exception e){
		            e.printStackTrace();
		            
		        }
	}

	public void loginStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		
		HttpSession session = request.getSession();
        response.setContentType("text/html");  
        
        
              
        String n =request.getParameter("username");  
        String p =request.getParameter("userpass");  
        
        
        try {

            Class.forName("org.postgresql.Driver"); 
            String dbURL = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com" +"/delu1t92658u0"; 
            String user = "zaiaryvqbpwwcb"; 
            String pass = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b"; 
    		Connection conn = DriverManager.getConnection(dbURL, user, pass);
    		
            String sql  ="SELECT * from staff";
            
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(sql);

        while (rs.next()) {
       if(n.equals(rs.getString("staff_id")) && (p.equals(rs.getString("staff_password"))))
       {
    	   	if((rs.getString("staff_role")!="Head Admin")) {
    	    
        	session.setAttribute("Staff_ID",rs.getString(1));
        	session.setAttribute("Staff_Name",rs.getString(2));
        	session.setAttribute("Staff_Password",rs.getString(3));
        	session.setAttribute("Manager_ID",rs.getInt(4));
        	session.setAttribute("Staff_TelNo",rs.getString(5));
        	session.setAttribute("Staff_Role",rs.getString(6));
        	
        	response.sendRedirect("Account.jsp");}
    	   	
       
    	   }
  
       else{}
        }response.sendRedirect("StaffLogin.jsp");
        
   
        

}
        catch (Exception e){
            e.printStackTrace();
        }        	

	}

}

 







