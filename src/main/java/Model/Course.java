package Model;

public class Course {
	
	private int Course_ID;
	private String Course_Title;
	private int Course_Fees;
	private String Course_Type;

	
	public int getCourse_ID() {
		return Course_ID;
	}
	public void setCourse_ID(int course_ID) {
		Course_ID = course_ID;
	}
	public String getCourse_Title() {
		return Course_Title;
	}
	public void setCourse_Title(String course_Title) {
		Course_Title = course_Title;
	}
	public int getCourse_Fees() {
		return Course_Fees;
	}
	public void setCourse_Fees(int course_Fees) {
		Course_Fees = course_Fees;
	}
	public String getCourse_Type() {
		return Course_Type;
	}
	public void setCourse_Type(String course_Type) {
		Course_Type = course_Type;
	}

}
