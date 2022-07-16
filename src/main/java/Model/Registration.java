package Model;

import java.io.Serializable;
import java.sql.Date;

public class Registration implements Serializable {
	
	private static final long serialVersionUID = 1L;
	public String registration_id;
	public int participant_id;
	public String payment_id;
	public int course_id;
	public int staff_id;
	public String registration_date;
	public String registration_status;
	
	public Registration() {
		
	}

	public String getRegistration_id() {
		return registration_id;
	}

	public void setRegistration_id(String registration_id) {
		this.registration_id = registration_id;
	}

	public int getParticipant_id() {
		return participant_id;
	}

	public void setParticipant_id(int id) {
		this.participant_id = id;
	}

	public String getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}

	public int getCourse_id() {
		return course_id;
	}

	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}

	public int getStaff_id() {
		return staff_id;
	}

	public void setStaff_id(int staffid) {
		this.staff_id = staffid;
	}

	public String getRegistration_date() {
		return registration_date;
	}

	public void setRegistration_date(String registration_date) {
		this.registration_date = registration_date;
	}

	public String getRegistration_status() {
		return registration_status;
	}

	public void setRegistration_status(String registration_status) {
		this.registration_status = registration_status;
	}

}
