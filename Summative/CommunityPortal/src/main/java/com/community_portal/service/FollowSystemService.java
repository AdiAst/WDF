package com.community_portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.community_portal.entity.FollowSystem;
import com.community_portal.repository.FollowSystemRepository;

@Service
@Transactional
public class FollowSystemService {
	@Autowired
	FollowSystemRepository repo;
	public int checkRelation(long a, long b) {
		return repo.checkRelation(a, b);
	}
	public long getRelation(long a, long b) {
		return repo.getRelation(a, b);
	}
	public Boolean save(FollowSystem fs) {
		try {			
			repo.save(fs);
			return true;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
		 
	 }
	 public List<FollowSystem> listAll() {
		 return (List<FollowSystem>) repo.findAll();
	 }
	 public FollowSystem get(Long id) {
		 return repo.findById(id).get();
	 }
	 public void delete(Long id) {
		 repo.deleteById(id);
	 }
}
