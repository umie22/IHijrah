package main.webapp;

public class Participant {
private int Participant_ID;
private String Participant_Name;
private String Participant_Password;
private String Participant_Email;
private String Participant_PhoneNo;
public Participant(int participant_ID, String participant_Name, String participant_Password, String participant_Email,
		String participant_PhoneNo) {
	super();
	Participant_ID = participant_ID;
	Participant_Name = participant_Name;
	Participant_Password = participant_Password;
	Participant_Email = participant_Email;
	Participant_PhoneNo = participant_PhoneNo;
}
public int getParticipant_ID() {
	return Participant_ID;
}
public void setParticipant_ID(int participant_ID) {
	Participant_ID = participant_ID;
}
public String getParticipant_Name() {
	return Participant_Name;
}
public void setParticipant_Name(String participant_Name) {
	Participant_Name = participant_Name;
}
public String getParticipant_Password() {
	return Participant_Password;
}
public void setParticipant_Password(String participant_Password) {
	Participant_Password = participant_Password;
}
public String getParticipant_Email() {
	return Participant_Email;
}
public void setParticipant_Email(String participant_Email) {
	Participant_Email = participant_Email;
}
public String getParticipant_PhoneNo() {
	return Participant_PhoneNo;
}
public void setParticipant_PhoneNo(String participant_PhoneNo) {
	Participant_PhoneNo = participant_PhoneNo;
}
}



