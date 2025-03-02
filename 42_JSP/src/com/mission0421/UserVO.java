package com.mission0421;

public class UserVO {

	// �ʵ�
	private String id;
	private String password;
	private String name;
	private String birthday;
	private String phoneNumber;
	private String email;
	private String gender;
	private String studentId;
	private String hobby;
	
	public UserVO(String id, String password, String name, String birthday, String phoneNumber, String email,
			String gender, String studentId, String hobby) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.birthday = birthday;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.gender = gender;
		this.studentId = studentId;
		this.hobby = hobby;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", password=" + password + ", name=" + name + ", birthday=" + birthday
				+ ", phoneNumber=" + phoneNumber + ", email=" + email + ", gender=" + gender + ", studentId="
				+ studentId + ", hobby=" + hobby + "]\n";
	}
	
}
