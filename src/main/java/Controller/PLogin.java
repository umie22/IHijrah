package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PLogin")
public class PLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PLogin() {
        super();
    }	
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     doPost(request, response);
    
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		
		  String action = request.getParameter("action");

	        try {
	            switch (action) {
	                case "login":
	                    login(request, response);
	                    break;
	                case "logout":
	                	logout(request, response);
	                	break;
	              
	            }

	        } catch (SQLException e) {
	            throw new ServletException(e);
	        }
		
	}
	
	private void login(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException {
      PrintWriter out = response.getWriter();
      HttpSession session = request.getSession();

      String email = request.getParameter("participant_email");
      String password = request.getParameter("participant_password");
      String status = "Active";

      
      try {
          Class.forName("org.postgresql.Driver");
    	  String dbURL = "jdbc:postgresql://localhost:5432/postgres";
    	  String user = "postgres";
    	  String pass = "system";
    	  
          Connection con = DriverManager.getConnection(dbURL, user, pass);

          String sql  = "SELECT * FROM participant";

          if (con != null){
              Statement statement = con.createStatement();
              ResultSet res = statement.executeQuery(sql);

              while (res.next()){
                  if(email.equals(res.getString("participant_email")) && password.equals(res.getString("participant_password")) && status.equals(res.getString("participant_status")) )
                  {

          	          session.setAttribute("participant_email", res.getString(4));
          	          session.setAttribute("participat_password",res.getString(2));
          	          session.setAttribute("participant_id", res.getString(1));
          	          session.setAttribute("participant_name", res.getString(3));
          	          session.setAttribute("participant_phoneno",res.getString(5));

       	     
          	        response.sendRedirect("AccountParticipantBARU.jsp");}
          	        


                  
              else{}
              
          }

              response.sendRedirect("PartLogin.jsp");
              alert("Wrong verification or inactive account");


             


      
          }
      }
      catch (Exception e){
          e.printStackTrace();
      }
  }

	private void alert(String string) {
		// TODO Auto-generated method stub
		
	}

	private void logout(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
		  HttpSession session = request.getSession();
	        session.invalidate();
	        response.sendRedirect("WelcomePage.jsp");
	}

}