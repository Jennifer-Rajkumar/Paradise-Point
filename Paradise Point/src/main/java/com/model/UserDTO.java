package com.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "users")
public class UserDTO {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int uid;

    private String username;
    
    private String mailid;

    private String password;

    @Transient
    private String passwordConfirm;
    
    private int flag;
    
    private double amt;

    private String role;

    public UserDTO() {
    	
    }
	public UserDTO(int uid, String username, String mailid, String password, String passwordConfirm, int flag, double amt,
			String role) {
		this.uid = uid;
		this.username = username;
		this.mailid = mailid;
		this.password = password;
		this.passwordConfirm = passwordConfirm;
		this.flag = flag;
		this.amt = amt;
		this.role = role;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getMailid() {
		return mailid;
	}

	public void setMailid(String mailid) {
		this.mailid = mailid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordConfirm() {
		return passwordConfirm;
	}

	public void setPasswordConfirm(String passwordConfirm) {
		this.passwordConfirm = passwordConfirm;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	public double getAmt() {
		return amt;
	}

	public void setAmt(double amt) {
		this.amt = amt;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

}
