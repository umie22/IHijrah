package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Dao.PaymentDAO;
import Model.Payment;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private PaymentDAO pd;
	public void init() {
		pd = new PaymentDAO();
	}

    public PaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
        switch (action) {
		    case "addPayment":
			try {
				addPayment(request, response);
			} catch (IOException | ServletException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		        break;
		    /*case "updateAcc":
		        updateAcc(request,response);
		        break;
		    case "deleteAcc":
		    	deleteAcc(request,response);
		    case "cancel":
		        cancel(request, response);
		        break;*/

		}
	}

	private void addPayment(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {

		String payID = request.getParameter("payID");
		String payDate = request.getParameter("payDate");
		String payTime = request.getParameter("payTime");
		String payStatus = request.getParameter("payStatus");
		Part payReceipt = request.getPart("payReceipt");
		
		Payment newFile = new Payment(payID, payDate, payTime, payStatus, payReceipt);
		
		pd.addPayment(newFile);
		
		RequestDispatcher addingFile = request.getRequestDispatcher(payStatus);
		addingFile.forward(request,response);
	}

}
