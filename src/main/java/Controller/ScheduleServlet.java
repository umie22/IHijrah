package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ScheduleDAO;
import Model.Schedule;

/**
 * Servlet implementation class AnnouncementServlet
 */
@WebServlet("/ScheduleServlet")
public class ScheduleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private ScheduleDAO ad;
    public void init() {
        ad = new ScheduleDAO();
    }


    public ScheduleServlet() {
        super();
    }

   



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String action = request.getParameter("action");
        try {
            switch (action) {
                case "AddSchedule":
                	AddSchedule(request, response);
                    break;
                /*case "deleteAnnouncement":
                    deleteAnnouncement(request,response);
                    break;*/
                case "updateSchedule":
                	updateSchedule(request,response);
                    break;/*
                case "cancel":
                    cancel(request, response);
                    break;*/

            }

        } catch (SQLException e) {
            throw new ServletException(e);
        }

    }
    private void updateSchedule(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
			
    		String id =request.getParameter("id");
	    	String date =request.getParameter("date");
	    	String time = request.getParameter("time");
	    	String description = request.getParameter("description");
	    	int course = Integer.parseInt(request.getParameter("course"));
	    	
	    	Schedule stmt = new Schedule();
	    	
			stmt.setSchedule_ID(id);
			stmt.setSchedule_Date(Date.valueOf(date));
			stmt.setSchedule_Time(time);
			stmt.setSchedule_Description(description);
			stmt.setCourse_ID(course);

			ad.updateSchedule(stmt);
			try {
				response.sendRedirect("schedulelist.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}


	private void AddSchedule(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {

    	
    	String date =request.getParameter("date");
    	String time = request.getParameter("time");
    	String description = request.getParameter("description");
    	int course = Integer.parseInt(request.getParameter("course"));


    		Schedule stat = new Schedule();
    		
    		stat.setSchedule_Date(Date.valueOf(date));
    		stat.setSchedule_Time(time);
    		stat.setSchedule_Description(description);
    		stat.setCourse_ID(course);

    		ad.addSchedule(stat);
    		response.sendRedirect("SAschedulelist.jsp");


    }
}
    
    /*
    private void deleteAnnouncement(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("aId"));
        ad.deleteAnnouncement(id);
        response.sendRedirect("Announcement.jsp");
    }
    private void updateAnnouncement(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String pic = request.getParameter("aPicture");
        String title = request.getParameter("aTitle");
        String desc = request.getParameter("aDesc");
        String date = request.getParameter("aDate");
        String timme = request.getParameter("aTime");

        Announcement anc = new Announcement();
        anc.setId(id);
        anc.setPicture(pic);
        anc.setTitle(title);
        anc.setDescr(desc);
        anc.setDate(Date.valueOf(date));
        anc.setTime(timme);

        ad.updateAnnouncement(anc);

        response.sendRedirect("Announcement.jsp");
    }

    private void cancel(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        response.sendRedirect("Announcement.jsp");
    }
}*/