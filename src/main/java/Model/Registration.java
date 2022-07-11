package Model;

import java.io.Serializable;

public class Registration implements Serializable {
	
	private static final long serialVersionUID = 1L;
	public String registration_id;
	public String participant_id;
	public String payment_id;
	public String course_id;
	public String staff_id;
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

	public String getParticipant_id() {
		return participant_id;
	}

	public void setParticipant_id(String participant_id) {
		this.participant_id = participant_id;
	}

	public String getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}

	public String getCourse_id() {
		return course_id;
	}

	public void setCourse_id(String course_id) {
		this.course_id = course_id;
	}

	public String getStaff_id() {
		return staff_id;
	}

	public void setStaff_id(String staff_id) {
		this.staff_id = staff_id;
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
