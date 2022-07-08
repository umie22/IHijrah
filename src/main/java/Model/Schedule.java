package Model;

import java.sql.Date;
import java.sql.Time;

public class Schedule {
	
	private String Schedule_ID;
	private String Schedule_Time;
	private Date Schedule_Date;
	private String Schedule_Description;
	private String Schedule_Availability;
	private int Course_ID;
	
	public String getSchedule_ID() {
		return Schedule_ID;
	}
	public void setSchedule_ID(String schedule_ID) {
		Schedule_ID = schedule_ID;
	}
	public String getSchedule_Time() {
		return Schedule_Time;
	}
	public void setSchedule_Time(String time) {
		Schedule_Time = time;
	}
	public Date getSchedule_Date() {
		return Schedule_Date;
	}
	public void setSchedule_Date(Date schedule_Date) {
		Schedule_Date = schedule_Date;
	}
	public String getSchedule_Description() {
		return Schedule_Description;
	}
	public void setSchedule_Description(String schedule_Description) {
		Schedule_Description = schedule_Description;
	}
	public String getAvailability() {
		return Schedule_Availability;
	}
	public void setAvailability(String availability) {
		Schedule_Availability = availability;
	}
	public int getCourse_ID() {
		return Course_ID;
	}
	public void setCourse_ID(int course_ID) {
		Course_ID = course_ID;
	}


}
