package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.RegisterDAO;
import Dao.ScheduleDAO;
import Model.Registration;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    private RegisterDAO rg;
    public void init() {
        rg = new RegisterDAO();
    }
    
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	//try	
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");
        try {
        switch (action) {
		    case "register":
		    	register(request, response);
		        break;
		   /*case "reject":
			   reject(request, response);
		        break;*/
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

	private void register(HttpServletRequest request, HttpServletResponse response)  throws SQLException, IOException  {
		
	    HttpSession session = request.getSession();
	    int id = Integer.parseInt((String) session.getAttribute("participant_id"));


		//String id = session.getAttribute("participant_id").toString(); 
		int courseid = Integer.parseInt(request.getParameter("courseid")); 
		
		   DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");
		   LocalDateTime now = LocalDateTime.now();
		   
		String date = dtf.format(now);

		Registration register = new Registration();
		
		register.setParticipant_id(id);
		register.setCourse_id(courseid);
		register.setRegistration_date(date);
		
		String registration_id=rg.register(register);
		
		System.out.println(registration_id);

		
		session.setAttribute("registration_id", registration_id);
		
		response.sendRedirect("TryUploadPayment.jsp");


		// TODO Auto-generated method stub
		
	}
}


