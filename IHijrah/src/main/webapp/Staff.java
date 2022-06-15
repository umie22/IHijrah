package main.webapp;

public class Staff {
	private int Staff_ID;
	private String Staff_Name;
	private String Staff_Password;
	public int getStaff_ID() {
		return Staff_ID;
	}
	public void setStaff_ID(int staff_ID) {
		Staff_ID = staff_ID;
	}
	public String getStaff_Name() {
		return Staff_Name;
	}
	public void setStaff_Name(String staff_Name) {
		Staff_Name = staff_Name;
	}
	public String getStaff_Password() {
		return Staff_Password;
	}
	public void setStaff_Password(String staff_Password) {
		Staff_Password = staff_Password;
	}
	public int getManager_ID() {
		return Manager_ID;
	}
	public void setManager_ID(int manager_ID) {
		Manager_ID = manager_ID;
	}
	public String getStaff_Email() {
		return Staff_Email;
	}
	public void setStaff_Email(String staff_Email) {
		Staff_Email = staff_Email;
	}
	public String getStaff_PhoneNo() {
		return Staff_PhoneNo;
	}
	public void setStaff_PhoneNo(String staff_PhoneNo) {
		Staff_PhoneNo = staff_PhoneNo;
	}
	public String getStaff_Role() {
		return Staff_Role;
	}
	public void setStaff_Role(String staff_Role) {
		Staff_Role = staff_Role;
	}
	public Staff(int staff_ID, String staff_Name, String staff_Password, int manager_ID, String staff_Email,
			String staff_PhoneNo, String staff_Role) {
		super();
		Staff_ID = staff_ID;
		Staff_Name = staff_Name;
		Staff_Password = staff_Password;
		Manager_ID = manager_ID;
		Staff_Email = staff_Email;
		Staff_PhoneNo = staff_PhoneNo;
		Staff_Role = staff_Role;
	}
	private int Manager_ID;
	private String Staff_Email;
	private String Staff_PhoneNo;
	private String Staff_Role;
}
