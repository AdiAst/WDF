package com.community_portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.community_portal.entity.Threads;
import com.community_portal.repository.ThreadsRepository;

@Service
@Transactional
public class ThreadsService {
	@Autowired
	ThreadsRepository repo;
	 public void save(Threads store) {
		 repo.save(store);
	 }
	 public List<Threads> listAll() {
		 return (List<Threads>) repo.findAll();
	 }
	 public Threads get(Long id) {
		 return repo.findById(id).get();
	 }
	 public void delete(Long id) {
		 repo.deleteById(id);
	 }
}
