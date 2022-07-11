package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.RegistrationDAO;
import Model.Registration;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private RegistrationDAO rd;
    public void init() {
        rd = new RegistrationDAO();
    
    }
	
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
        try {
            switch (action) {
                case "addRegister":
                	addRegister(request, response);
                    break;

            }

        } catch (SQLException e) {
            throw new ServletException(e);
        }
	}

	private void addRegister(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		String id = request.getParameter("registration_id");
		String date = request.getParameter("registration_date");
        String status = request.getParameter("registration_status");


        Registration r = new Registration();
        
        r.setRegistration_id(id);
        r.setRegistration_date(date);
        r.setRegistration_status(status);

        rd.addRegister(r);
        response.sendRedirect("#");
	}

}
