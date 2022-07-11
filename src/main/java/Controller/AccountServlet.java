package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.AccountDAO;
import Model.Account;

/**
 * Servlet implementation class AccountServlet
 */
@WebServlet("/AccountServlet")
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private AccountDAO ad;
    public void init() {
        ad = new AccountDAO();
    
    }
    
    public AccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
        try {
            switch (action) {
                case "addAcc":
                    addAcc(request, response);
                    break;
                case "updateAcc":
                    updateAcc(request,response);
                    break;
                case "deleteAcc":
                	deleteAcc(request,response);
                case "cancel":
                    cancel(request, response);
                    break;

            }

        } catch (SQLException e) {
            throw new ServletException(e);
        }
	}
	
	private void addAcc(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		String name = request.getParameter("partName");
		String email = request.getParameter("partEmail");
        String phone = request.getParameter("partPhone");
        String password = request.getParameter("partPass");


        Account a = new Account();

        a.setPartName(name);
        a.setPartEmail(email);
        a.setPartPhone(phone);
        a.setPartPass(password);
        

        ad.addAcc(a);
        response.sendRedirect("AccountParticipantBARU.jsp");
	}
	
    private void updateAcc(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
    	String name = request.getParameter("partName");
		String email = request.getParameter("partEmail");
        String phone = request.getParameter("partPhone");
        String password = request.getParameter("partPass");

        Account a = new Account();

        a.setPartName(name);
		a.setPartEmail(email);
        a.setPartPhone(phone);
        a.setPartPass(password);
        ad.updateAcc(a);

        response.sendRedirect("PartAccountUpdate.jsp");
    }
    
    private void deleteAcc(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String participant_id = request.getParameter("participant");
        ad.deleteAcc(participant_id);
        response.sendRedirect(" ");
    }
    
    private void cancel(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        response.sendRedirect("AccountParticipantBARU.jsp");
    }

}
