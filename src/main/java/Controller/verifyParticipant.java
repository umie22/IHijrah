package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.verifypaymentDAO;
import Model.Payment;

import java.sql.Connection;

/**
 * Servlet implementation class verifyParticipant
 */
@WebServlet("/verifyParticipant")
public class verifyParticipant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */    
	
	private verifypaymentDAO vf;
     public void init() {
         vf = new verifypaymentDAO();
     }
    public verifyParticipant() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	//try	
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");
        try {
        switch (action) {
		    case "verify":
		        verify(request, response);
		        break;
		   /* case "loginStaff":
		        loginStaff(request, response);
		        break;
		    /*case "viewStaff":
		        viewStaff(request, response);
		        break;
		    case "deleteStaff":
		        deleteStaff(request, response);
		        break;
		    case "updateStaff":
		        updateStaff(request, response);
		        break;*/
		
	}
        } catch (SQLException e) {
            throw new ServletException(e);
        }

	}

	private void verify(HttpServletRequest request, HttpServletResponse response)  throws SQLException, IOException{
		// TODO Auto-generated method stub
        String id = request.getParameter("id");
        
        Payment pmt = new Payment();
        
        pmt.setPayment_ID(id);
        pmt.setPayment_Status("Verified");
        
        vf.updateVerification(pmt);
        
        response.sendRedirect("VerfiedList.jsp");
}
}

