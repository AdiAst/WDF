package com.community_portal.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="threads")
public class Threads {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long threadsID;
	
	private String postTitle;
	private String postDescription;
	private String timePosted;
	private int postedBy;
	public Threads() {
	}
	public Threads(long threadsID, String postTitle, String postDescription, String timePosted, int postedBy) {
		super();
		this.threadsID = threadsID;
		this.postTitle = postTitle;
		this.postDescription = postDescription;
		this.timePosted = timePosted;
		this.postedBy = postedBy;
	}
	public long getThreadsID() {
		return threadsID;
	}
	public void setThreadsID(long threadsID) {
		this.threadsID = threadsID;
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public String getPostDescription() {
		return postDescription;
	}
	public void setPostDescription(String postDescription) {
		this.postDescription = postDescription;
	}
	public String getTimePosted() {
		return timePosted;
	}
	public void setTimePosted(String timePosted) {
		this.timePosted = timePosted;
	}
	public int getPostedBy() {
		return postedBy;
	}
	public void setPostedBy(int postedBy) {
		this.postedBy = postedBy;
	}
}
