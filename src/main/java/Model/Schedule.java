package Model;

import java.sql.Date;
import java.sql.Time;

public class Schedule {
	
	private int Schedule_ID;
	private Time Schedule_Time;
	private Date Schedule_Date;
	private String Schedule_Description;
	private Schedule Availability;
	private int Course_ID;
	
	public int getSchedule_ID() {
		return Schedule_ID;
	}
	public void setSchedule_ID(int schedule_ID) {
		Schedule_ID = schedule_ID;
	}
	public Time getSchedule_Time() {
		return Schedule_Time;
	}
	public void setSchedule_Time(Time schedule_Time) {
		Schedule_Time = schedule_Time;
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
	public Schedule getAvailability() {
		return Availability;
	}
	public void setAvailability(Schedule availability) {
		Availability = availability;
	}
	public int getCourse_ID() {
		return Course_ID;
	}
	public void setCourse_ID(int course_ID) {
		Course_ID = course_ID;
	}


}
