package com.community_portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.community_portal.entity.BulkEmail;
import com.community_portal.repository.BulkEmailRepository;

@Service
@Transactional
public class BulkEmailService {
	@Autowired
	BulkEmailRepository repo;
	@Autowired
	private JavaMailSender mailSender;
	public void save(BulkEmail bulkEmail) {
		 repo.save(bulkEmail);
	 }
	 public List<BulkEmail> listAll() {
		 return (List<BulkEmail>) repo.findAll();
	 }
	 public BulkEmail get(Long id) {
		 return repo.findById(id).get();
	 }
	 public void delete(Long id) {
		 repo.deleteById(id);
	 }
	 public boolean sendEmail(String to, String subject, String text) {
			try {
				SimpleMailMessage message = new SimpleMailMessage();
				message.setFrom("lithanabcportal@gmail.com");
				message.setTo(to);
				message.setSubject(subject);
				message.setText(text);
				mailSender.send(message);
				return true;
			} catch (Exception e) {
				return false;
			}
		}
}
