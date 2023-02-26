package com.community_portal.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="userlogin")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long userLoginId;
	
	private String userEmail;
	private String userPassword;
	private int roleID;
	private long userID;
	public User() {}
	public User(long userLoginId, String userEmail, String userPassword, int roleID, int userID) {
		super();
		this.userLoginId = userLoginId;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.roleID = roleID;
		this.userID = userID;
	}
	public long getUserLoginId() {
		return userLoginId;
	}
	public void setUserLoginId(long userLoginId) {
		this.userLoginId = userLoginId;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public int getRoleID() {
		return roleID;
	}
	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}
	public long getUserID() {
		return userID;
	}
	public void setUserID(long userID) {
		this.userID = userID;
	}
}
