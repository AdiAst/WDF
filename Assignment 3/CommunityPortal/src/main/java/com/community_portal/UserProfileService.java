package com.community_portal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.community_portal.entity.UserProfile;

@Service
@Transactional
public class UserProfileService {
	@Autowired
	UserProfileRepository repo;
	 public void save(UserProfile store) {
		 repo.save(store);
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
