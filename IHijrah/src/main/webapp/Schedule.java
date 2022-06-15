package main.webapp;

import java.util.Date;

public class Schedule {
private int Schedule_ID;
private Date Schedule_Time;
private Date Schedule_Date;
private String Schedule_Description;
private String Schedule_Availability;
public Schedule(int schedule_ID, Date schedule_Time, Date schedule_Date, String schedule_Description,
		String schedule_Availability) {
	super();
	Schedule_ID = schedule_ID;
	Schedule_Time = schedule_Time;
	Schedule_Date = schedule_Date;
	Schedule_Description = schedule_Description;
	Schedule_Availability = schedule_Availability;
}
public int getSchedule_ID() {
	return Schedule_ID;
}
public void setSchedule_ID(int schedule_ID) {
	Schedule_ID = schedule_ID;
}
public Date getSchedule_Time() {
	return Schedule_Time;
}
public void setSchedule_Time(Date schedule_Time) {
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
public String getSchedule_Availability() {
	return Schedule_Availability;
}
public void setSchedule_Availability(String schedule_Availability) {
	Schedule_Availability = schedule_Availability;
}
}