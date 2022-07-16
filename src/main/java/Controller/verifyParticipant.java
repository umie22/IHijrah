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
import Model.Registration;

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
		   case "reject":
			   reject(request, response);
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

	private void reject(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		
        HttpSession session=request.getSession();

        String id = request.getParameter("id");
        int staffid = Integer.parseInt((String) session.getAttribute("staff_id"));

        Payment pmt = new Payment();
        Registration rs = new Registration();
        
        pmt.setPayID(id);
        pmt.setPayStatus("Rejected");
        rs.setStaff_id(staffid);
        
        vf.updateRejectVerification(pmt,rs);
        
        response.sendRedirect("SAVerifiedList.jsp");
}
		// TODO Auto-generated method stub
		

	private void verify(HttpServletRequest request, HttpServletResponse response)  throws SQLException, IOException{
		// TODO Auto-generated method stub
        HttpSession session=request.getSession();

        String id = request.getParameter("id");
        int staffid = Integer.parseInt((String) session.getAttribute("Staff_ID"));
        
        System.out.println(staffid);
        System.out.println(id);
        
        Payment pmt = new Payment();
        Registration rs = new Registration();

        
        rs.setRegistration_id(id);
        pmt.setPayStatus("Paid");
        rs.setStaff_id(staffid);

        
        vf.updateVerification(pmt,rs);
        
        response.sendRedirect("SAVerifiedList.jsp");
}
}

