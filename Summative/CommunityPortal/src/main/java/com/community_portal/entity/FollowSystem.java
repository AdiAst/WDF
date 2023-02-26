package com.community_portal.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FollowSystem {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long id;
	
	private long userA;
	private long userB;
	public FollowSystem() {
	}
	public FollowSystem(long id, int userA, int userB) {
		super();
		this.id = id;
		this.userA = userA;
		this.userB = userB;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getUserA() {
		return userA;
	}
	public void setUserA(long userA) {
		this.userA = userA;
	}
	public long getUserB() {
		return userB;
	}
	public void setUserB(long userB) {
		this.userB = userB;
	}
}
