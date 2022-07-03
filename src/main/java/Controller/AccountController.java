package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.AccountDA;
import okkut.Account;



/**
 * Servlet implementation class AccountHandler
 */
@WebServlet("/AccountHandler")
public class AccountHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private AccountDA ok;
    public void init() {
        ok = new AccountDA();
    }

    public AccountHandler() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
        try {
            switch (action) {
                case "addAcc":
                    addAcc(request, response);
                    break;
                /*case "deleteSpeaker":
                    deleteSpeaker(request,response);
                    break;
                case "updateSpeaker":
                    updateSpeaker(request,response);
                    break;
                case "cancel":
                    cancel(request, response);
                    break;*/
            }

        } catch (SQLException e) {
            throw new ServletException(e);
        }
	}
	
	private void addAcc(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
		
		String name = request.getParameter("partName");
		String email = request.getParameter("partEmail");
        String phone = request.getParameter("partPhone");
        String password = request.getParameter("partpass");



        Account a = new Account();
        
        a.setPartName(name);
        a.setPartEmail(email);
        a.setPartPhone(phone);
        a.setPartPass(password);
        
        
        
        ok.addAcc(a);
        
        response.sendRedirect("tryok.jsp");
    }

}
