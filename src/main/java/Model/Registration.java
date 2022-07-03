package Model;

import java.sql.Date;

public class Registration {
	
	private int Registration_ID;
	private int Participant_ID;
	private int Payment_ID;
	private int Course_ID;
	private int Staff_ID;
	private Date Registration_Date;
	private String Registration_Status;
	
public int getRegistration_ID() {
		return Registration_ID;
	}
	public void setRegistration_ID(int registration_ID) {
		Registration_ID = registration_ID;
	}
	public int getParticipant_ID() {
		return Participant_ID;
	}
	public void setParticipant_ID(int participant_ID) {
		Participant_ID = participant_ID;
	}
	public int getPayment_ID() {
		return Payment_ID;
	}
	public void setPayment_ID(int payment_ID) {
		Payment_ID = payment_ID;
	}
	public int getCourse_ID() {
		return Course_ID;
	}
	public void setCourse_ID(int course_ID) {
		Course_ID = course_ID;
	}
	public int getStaff_ID() {
		return Staff_ID;
	}
	public void setStaff_ID(int staff_ID) {
		Staff_ID = staff_ID;
	}
	public Date getRegistration_Date() {
		return Registration_Date;
	}
	public void setRegistration_Date(Date registration_Date) {
		Registration_Date = registration_Date;
	}
	public String getRegistration_Status() {
		return Registration_Status;
	}
	public void setRegistration_Status(String registration_Status) {
		Registration_Status = registration_Status;
	}



}
