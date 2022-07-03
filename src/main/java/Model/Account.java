package Model;

import java.io.Serializable;

public class Account implements Serializable {
	
	private static final long serialVersionUID = 1L;
	public int partID;
	public String partName;
	public String partEmail;
	public String partPhone;
	public String partPass;
	
	public Account() {
		
	}

	public int getPartID() {
		return partID;
	}

	public void setPartID(int partID) {
		this.partID = partID;
	}

	public String getPartName() {
		return partName;
	}

	public void setPartName(String partName) {
		this.partName = partName;
	}

	public String getPartEmail() {
		return partEmail;
	}

	public void setPartEmail(String partEmail) {
		this.partEmail = partEmail;
	}

	public String getPartPhone() {
		return partPhone;
	}

	public void setPartPhone(String partPhone) {
		this.partPhone = partPhone;
	}

	public String getPartPass() {
		return partPass;
	}

	public void setPartPass(String partPass) {
		this.partPass = partPass;
	}
	
	
}
