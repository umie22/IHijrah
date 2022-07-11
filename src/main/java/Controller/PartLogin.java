package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.LoginDAO;
import Dao.PartLoginDAO;

@WebServlet("/PartLogin")
public class PartLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private PartLoginDAO pl;
    public void init() {
        pl = new PartLoginDAO();
    }
    
    public PartLogin() {
        super();
    }

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
	}
