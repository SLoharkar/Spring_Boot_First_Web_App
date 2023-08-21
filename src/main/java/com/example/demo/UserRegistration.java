package com.example.demo;

public class UserRegistration {
	private String uname;
	private static String email;
	private String crpassword;
	private static String copassword;
	
	public int cr_verify(String mail, String pass) {
		int result=0;
		if(mail.equals(email) && pass.equals(copassword))
		{
			result=1;
		}
		return result;
	}
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCrpassword() {
		return crpassword;
	}
	public void setCrpassword(String crpassword) {
		this.crpassword = crpassword;
	}
	public String getCopassword() {
		return copassword;
	}
	public void setCopassword(String copassword) {
		this.copassword = copassword;
	}

	
}
