package com.community_portal.test;

import com.community_portal.service.FollowSystemService;


import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import com.community_portal.entity.FollowSystem;
import com.community_portal.repository.FollowSystemRepository;

@ExtendWith(MockitoExtension.class)
public class FollowFeatureTest {
	@Mock
	FollowSystemRepository a;
	
	@InjectMocks
	FollowSystemService follServ;
	
	
	@Test
	public void follow() {
		FollowSystem follSys = new FollowSystem();
		follSys.setUserA(3);
		follSys.setUserB(46);
		assertTrue(follServ.save(follSys));
	}
}
