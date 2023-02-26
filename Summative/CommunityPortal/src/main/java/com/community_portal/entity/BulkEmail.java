package com.community_portal.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BulkEmail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long bulkEmailID;
	
	private String message;
	private String subject;
	public BulkEmail() {
	}
	public BulkEmail(long bulkEmailID, String message, String subject) {
		super();
		this.bulkEmailID = bulkEmailID;
		this.message = message;
		this.subject = subject;
	}
	public long getBulkEmailID() {
		return bulkEmailID;
	}
	public void setBulkEmailID(long bulkEmailID) {
		this.bulkEmailID = bulkEmailID;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
}
