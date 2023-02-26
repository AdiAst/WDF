package com.community_portal.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.community_portal.entity.UserProfile;
import com.community_portal.repository.UserProfileRepository;

@Service
@Transactional
public class UserProfileService {
	@Autowired
	UserProfileRepository repo;
	 public boolean save(UserProfile store) {
		 try {
			
			 repo.save(store);
			 return true;
		} catch (Exception e) {
			return false;
		}
	 }
	 public List<UserProfile> listAll() {
		 return (List<UserProfile>) repo.findAll();
	 }
	 public UserProfile get(Long id) {
		 return repo.findById(id).get();
	 }
	 public void delete(Long id) {
		 repo.deleteById(id);
	 }
	 public int getLatestId() {
		 return repo.getLatestId();
	 }
	 public List<UserProfile> search(String keyword) {
		 return repo.search('%'+keyword+'%');
	 }
}
