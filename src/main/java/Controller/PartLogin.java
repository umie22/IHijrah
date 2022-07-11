package Controller;

import java.io.IOException;
import java.io.PrintWriter;
<<<<<<< HEAD
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
=======
>>>>>>> branch 'main' of https://github.com/umie22/IHijrah.git

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
=======
import Dao.LoginDAO;
import Dao.PartLoginDAO;

>>>>>>> branch 'main' of https://github.com/umie22/IHijrah.git
@WebServlet("/PartLogin")
public class PartLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PartLogin() {
        super();
    }
<<<<<<< HEAD
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		response.setContentType("text/html");
		
		  String action = request.getParameter("action");

	        try {
	            switch (action) {
	                case "login":
	                    login(request, response);
	                    break;
	              
	            }

	        } catch (SQLException e) {
	            throw new ServletException(e);
	        }
		
=======

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
      
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
              
        String n =request.getParameter("username");  
        String p =request.getParameter("userpass");  
        
        
        
        if(LoginDAO.validate(n, p)){  
            RequestDispatcher rd=request.getRequestDispatcher("dashboardstaff.jsp");  
            rd.forward(request,response);  
        }  
        else{  
            out.print("Sorry username or password error");  
            RequestDispatcher rd=request.getRequestDispatcher("loginstaff.jsp");  
            rd.include(request,response);  
        }  
              
        out.close();  
        }
>>>>>>> branch 'main' of https://github.com/umie22/IHijrah.git
	}
<<<<<<< HEAD
	
	private void login(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException {
      PrintWriter out = response.getWriter();
      HttpSession session = request.getSession();

      String email = request.getParameter("participant_email");
      String password = request.getParameter("participant_password");

      try {

    	  String dbURL = "jdbc:postgresql://ec2-176-34-215-248.eu-west-1.compute.amazonaws.com/delu1t92658u0";
    	  String user = "zaiaryvqbpwwcb";
    	  String pass = "731fafeb016f84ea7f87300cbd19a24ba3e96adbaaf92504bc8d945d0302489b";
    	  
          Connection con = DriverManager.getConnection(dbURL, user, pass);

          String sql  = "SELECT * FROM participant";

          if (con != null){
              Statement statement = con.createStatement();
              ResultSet res = statement.executeQuery(sql);

              while (res.next()){
                  if(email.equals(res.getString("participant_email")) && password.equals(res.getString("participant_password")))
                  {

          	          session.setAttribute("participant_email", res.getString(4));
          	          session.setAttribute("participat_password",res.getString(2));
       	     
                      response.sendRedirect("PartDashboard.jsp");


                  }
                  else{
                  
                  }

              }
              out.print("Invalid Email/Password");

          }

      }
      catch (Exception e){
          e.printStackTrace();
      }
  }



}
=======
>>>>>>> branch 'main' of https://github.com/umie22/IHijrah.git
