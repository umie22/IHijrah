package Model;

import java.io.Serializable;

public class LoginPart implements Serializable {

	private static final long serialVersionUID = 1L;
	public int participant_id;
	public String participant_name;
	public String participant_email;
	public String participant_password;
	
	public LoginPart() {
		
	}

	public int getParticipant_id() {
		return participant_id;
	}

	public void setParticipant_id(int participant_id) {
		this.participant_id = participant_id;
	}

	public String getParticipant_name() {
		return participant_name;
	}

	public void setParticipant_name(String participant_name) {
		this.participant_name = participant_name;
	}

	public String getParticipant_email() {
		return participant_email;
	}

	public void setParticipant_email(String participant_email) {
		this.participant_email = participant_email;
	}

	public String getParticipant_password() {
		return participant_password;
	}

	public void setParticipant_password(String participant_password) {
		this.participant_password = participant_password;
	}
	
	
}
