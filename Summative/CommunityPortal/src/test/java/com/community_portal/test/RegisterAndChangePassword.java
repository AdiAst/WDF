package com.community_portal.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import com.community_portal.entity.User;
import com.community_portal.entity.UserProfile;
import com.community_portal.repository.UserProfileRepository;
import com.community_portal.repository.UserRepository;
import com.community_portal.service.UserProfileService;
import com.community_portal.service.UserService;

@ExtendWith(MockitoExtension.class)
public class RegisterAndChangePassword {
	@Mock
	UserRepository ur;
	@Mock
	UserProfileRepository up;
	@InjectMocks
	UserService us;
	@InjectMocks
	UserProfileService ups;
	private UserProfile userP = new UserProfile();
	private User user = new User();
	@Test
	public void register() {
		userP.setFirstName("Reyhan");
		userP.setLastName("Kara");
		assertNotNull(ups.save(userP));
		user.setUserEmail("rehan@gmail.com");
		user.setRoleID(1);
		user.setUserPassword("abc123");
		user.setUserID(1);
		assertNotNull(us.save(user));
	}
	@Test
	public void updatePassword() {
		user.setUserEmail("rehan@gmail.com");
		user.setUserPassword("newPass");
		assertTrue(us.save(user));
	}
}
