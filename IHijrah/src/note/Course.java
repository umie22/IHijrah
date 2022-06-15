package Note;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
* Servlet implementation class ListTicket
*/
@WebServlet("/ListTicket")
public class ListTicket extends HttpServlet
{
private static final long serialVersionUID = 1L;
private TicketDAO dao;
/**
* @see HttpServlet#HttpServlet()
*/
public ListTicket()
{
super();
setDao(new TicketDAO());
}
protected void doGet(HttpServletRequest request, HttpServletResponse 
 response) throws ServletException, IOException
{
//TODO Auto-generated method stub
request.setAttribute("tickets",TicketDAO.getAllTickets());
RequestDispatcher view = request.getRequestDispatcher
 ("List.jsp");
view.forward(request,response);
}
public TicketDAO getDao() {
return dao;
}
public void setDao(TicketDAO dao) {
this.dao = dao;
}
}
