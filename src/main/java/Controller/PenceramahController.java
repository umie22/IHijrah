package Controller;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.PenceramahDAO;
import Model.Penceramah;


public class PenceramahController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@SuppressWarnings("unused")
	private PenceramahDAO pd;
    public void init() {
        pd = new PenceramahDAO();
    }

    public PenceramahController() {
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
                case "addPen":
                    addPen(request, response);
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
	
	private void addPen(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
		
		String name = request.getParameter("penName");
		String email = request.getParameter("penEmail");
        String phone = request.getParameter("penPhone");



        Penceramah pen = new Penceramah();
        
        pen.setPenName(name);
        pen.setPenEmail(email);
        pen.setPenPhone(phone);
        
        
        pd.addPen(pen);
        
        response.sendRedirect("Penceramah.jsp");
    }

}