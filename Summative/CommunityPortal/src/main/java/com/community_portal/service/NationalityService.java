package com.community_portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.community_portal.entity.Nationality;
import com.community_portal.repository.NationalityRepository;


@Service
@Transactional
public class NationalityService {
	@Autowired
	NationalityRepository repo;
	 public void save(Nationality store) {
		 repo.save(store);
	 }
	 public List<Nationality> listAll() {
		 return (List<Nationality>) repo.findAll();
	 }
	 public Nationality get(Long id) {
		 return repo.findById(id).get();
	 }
	 public void delete(Long id) {
		 repo.deleteById(id);
	 }
}
