package Model;

import java.io.Serializable;

public class Penceramah implements Serializable{
	
	private static final long serialVersionUID = 1L;
	public int penID;
	public String penName;
	public String penEmail;
	public String penPhone;
	
	public Penceramah() {
		
	}

	public int getPenID() {
		return penID;
	}

	public void setPenID(int penID) {
		this.penID = penID;
	}

	public String getPenName() {
		return penName;
	}

	public void setPenName(String penName) {
		this.penName = penName;
	}

	public String getPenEmail() {
		return penEmail;
	}

	public void setPenEmail(String penEmail) {
		this.penEmail = penEmail;
	}

	public String getPenPhone() {
		return penPhone;
	}

	public void setPenPhone(String penPhone) {
		this.penPhone = penPhone;
	}

}
