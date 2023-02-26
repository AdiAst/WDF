package com.community_portal;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.community_portal.entity.User;
import com.community_portal.entity.UserProfile;
import com.community_portal.service.BulkEmailService;
import com.community_portal.service.FollowSystemService;
import com.community_portal.service.NationalityService;
import com.community_portal.service.ThreadsService;
import com.community_portal.service.UserProfileService;
import com.community_portal.service.UserService;
import com.community_portal.entity.*;
import com.community_portal.entity.Nationality;
import com.community_portal.entity.Threads;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private UserProfileService userProfileService;
	@Autowired
	private NationalityService nationalityService;
	@Autowired
	private ThreadsService threadsService;
	@Autowired
	private BulkEmailService bulkEmailService;
	@Autowired
	private FollowSystemService followSysService;
	
//	Home
	@RequestMapping("/")
	public ModelAndView home(Model model) {
		ModelAndView mv = new ModelAndView("home");
		model.addAttribute("title","Home");
		return mv;
	}
//	Home
	@RequestMapping("/home")
	public ModelAndView homepage(Model model) {
		ModelAndView mv = new ModelAndView("home");
		model.addAttribute("title","Home");
		return mv;
	}
//	Dashboard Page
	@RequestMapping("/dashboard")
	public String dashboard(Model model,HttpSession session) {
		
		List<UserProfile> userProfile= userProfileService.listAll();
		List<User> user = userService.listAll();
		List<Nationality> nationality= nationalityService.listAll(); 
		model.addAttribute("users",user);
		model.addAttribute("userProfiles",userProfile);
		model.addAttribute("nationality",nationality);
		model.addAttribute("title","Dashboard");
		BulkEmail bulkEmail = new BulkEmail();
		model.addAttribute("BulkEmail",bulkEmail);
		
		String redirect = "dashboard";
		User userSession = (User) session.getAttribute("user_login");
		if(session.getAttribute("user_login") == null || userSession.getRoleID()!= 2) {
			redirect = "redirect:home";
		}
		return redirect;
	}
//	Explore Page
	@RequestMapping("/explore")
	public String explore(Model model,HttpSession session) {
		List<Threads> threads = threadsService.listAll();
		List<UserProfile> userProfile = userProfileService.listAll();  
		model.addAttribute("threads",threads);
		model.addAttribute("userProfiles",userProfile);
		model.addAttribute("title","Explore");
		String redirect = "explore";
		if(session.getAttribute("user_login") == null) {
			redirect = "redirect:home";
		}
		return redirect;
	}
//	Register Page
	@RequestMapping("/register")
	public ModelAndView register(Model model) {
		ModelAndView mv = new ModelAndView("form");
		model.addAttribute("title","Sign Up");
		model.addAttribute("form","register");
		return mv;
	}
//	Login Page
	@RequestMapping("/login")
	public ModelAndView login(Model model) {
		ModelAndView mv = new ModelAndView("form");
		model.addAttribute("title","Sign In");
		model.addAttribute("form","login");
		return mv;
	}
//	Email Verification Page
	@RequestMapping("/email-verification")
	public ModelAndView emailVerify(Model model) {
		ModelAndView mv = new ModelAndView("form");
		model.addAttribute("title","Email Verification");
		model.addAttribute("form","emailVerify");
		return mv;
	}
//	Forget Password Page
	@RequestMapping("/forget-password")
	public ModelAndView forgetPassword(Model model) {
		ModelAndView mv = new ModelAndView("form");
		model.addAttribute("title","Forget Password");
		model.addAttribute("form","forgetPass");
		return mv;
	}
//	Other User Profile Page
	@RequestMapping("/other-profile")
	public String otherProfile(@RequestParam("id") long id, Model model,HttpSession session) {
		UserProfile user = userProfileService.get(id);
		UserProfile a = (UserProfile) session.getAttribute("user_profile");
		try {
			int result = followSysService.checkRelation(a.getUserID(), id);
			model.addAttribute("isFollowing",result);
		} catch (Exception e) {
			return "redirect:search-result";
		}
		model.addAttribute("user", user);
		model.addAttribute("title",user.getFirstName()+" "+user.getLastName());
		model.addAttribute("user_nationality", nationalityService.get(user.getCityID()));
		return "other-profile";
	}
//	Change Password Page
	@RequestMapping("/change-password")
	public String changePassword(@RequestParam("email") String email, Model model) {
		User user = userService.getByEmail(email);
		model.addAttribute("title","Change Password");
		model.addAttribute("form","changePass");
		model.addAttribute("user", user);
		System.out.println(user);
		return "form";
	}
//	Thank you Page
	@RequestMapping("/thank-you-page")
	public ModelAndView thankyou(Model model) {
		ModelAndView mv = new ModelAndView("thankyou");
		model.addAttribute("title","Thank you");
		return mv;
	}
//	Search Result Page
	@RequestMapping("/search-result")
	public String searchResult(@RequestParam("search") String search, Model model,HttpSession session) {
		model.addAttribute("search_result", userProfileService.search(search));
		model.addAttribute("title","You Search For: "+search);
		if(session.getAttribute("user_login") == null) {
			return "redirect:home";
		}
		return "search-result";
	}
//	Edit Profile Page
	@RequestMapping("/edit-profile")
	public String editprofile(Model model,@RequestParam("id")long id,HttpSession session) {
		UserProfile userProfile = userProfileService.get(id);
		List<Nationality> nationality = nationalityService.listAll();
		model.addAttribute("user",userProfile);
		model.addAttribute("nationality", nationality);
		model.addAttribute("title","Edit Profile");
		String redirect = "edit-profile";
		if(session.getAttribute("user_login") == null) {
			redirect = "redirect:home";
		}
		return redirect;
	}
//	Profile Page
	@RequestMapping("/profile")
	public String profile(Model model,HttpSession session) {
		model.addAttribute("title","Profile");
		String redirect = "profile";
		if(session.getAttribute("user_login") == null) {
			redirect = "redirect:home";
		}
		return redirect;
	}
//	Process to Change Password
	@RequestMapping("/process-change-password")
	public String changePassword(@ModelAttribute("user") User user) {
		userService.save(user);
		return "redirect:login";
	}
//	Process to Register	
	@RequestMapping("/process-register")
	public String process_register(HttpSession session, @RequestParam("firstname") String firstname,
			@RequestParam("lastname") String lastname, @RequestParam("userEmail") String email,
			@RequestParam("userPassword") String password) {
//		try to check if user exist or not, if not send back to login page with error message
//		if user exist check their password if it match or not, if it match create a session and go to explore page
		try {
			session.setAttribute("who_register", firstname + " " + lastname);
			UserProfile profile = new UserProfile();
			profile.setFirstName(firstname);
			profile.setLastName(lastname);
			profile.setCityID(11);
			userProfileService.save(profile);
			User user = new User();
			user.setUserEmail(email);
			user.setUserPassword(password);
			user.setRoleID(1);
			user.setUserID(userProfileService.getLatestId());
			userService.save(user);
			return "redirect:email-verification";
		} catch (Exception e) {
			return "redirect:register&&error=Email Already Used";
		}
	}
//	Process to Login
	@RequestMapping("/process-login")
	public String process_login(HttpSession session, @RequestParam("email") String email,
			@RequestParam("password") String password) {
		try {
			User userFounded = userService.getByEmail(email);
			UserProfile userProfile = userProfileService.get(userFounded.getUserID());
			String redirect = "";
			if (userFounded.getUserEmail().equals(email) && userFounded.getUserPassword().equals(password)) {
				redirect = "redirect:explore";
				session.setAttribute("user_login", userFounded);
				session.setAttribute("user_profile", userProfile);
				session.setAttribute("user_nationality", nationalityService.get(userProfile.getCityID()));
			} else {
				redirect = "redirect:login?error=Wrong Password";
			}
			return redirect;
		} catch (Exception e) {
			return "redirect:login?error=User Not Found";
		}
	}	
//	Process to Logout
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user_login");
		session.removeAttribute("user_profile");
		return "redirect:login";
	}
//	Process to Edit Profile
	@RequestMapping("/process-edit-profile")
	public String processEditProfile(HttpSession session, @ModelAttribute("profile") UserProfile profile) {
		String redirect = "";
		userProfileService.save(profile);
		User userSession = (User) session.getAttribute("user_login");
		session.setAttribute("user_profile", profile);
		session.setAttribute("user_nationality", nationalityService.get(profile.getCityID()));
		if(userSession.getRoleID() == 2) {
			redirect = "redirect:dashboard";
		}else {
			redirect = "redirect:profile";
		}
		return redirect;
	}
	// Send Bulk Email
	@RequestMapping(value="/send-bulk-email", method= RequestMethod.POST)
	public String sendBulkEmail(BulkEmail bulkEmail) {
		List<User> listUser = userService.listAll();
		for(User user : listUser) {
			bulkEmailService.sendEmail(user.getUserEmail(), bulkEmail.getSubject(), bulkEmail.getMessage());
		}
		
		return "redirect:dashboard";
	}
	// process delete User
	@RequestMapping("/delete")
	public String delete(@RequestParam("ul")long ul,@RequestParam("up")long up) {
		userService.delete(ul);
		userProfileService.delete(up);
		
		return "redirect:dashboard";
	}
	// process follow user
	@RequestMapping("/follow")
	public String follow(@RequestParam("id")long b,HttpSession session) {
		FollowSystem follSys = new FollowSystem();
		UserProfile up = (UserProfile) session.getAttribute("user_profile");
		follSys.setUserA(up.getUserID());
		follSys.setUserB(b);
		followSysService.save(follSys);
		
		return "redirect:other-profile?id="+b;
	}
	// process follow user
	@RequestMapping("/unfollow")
	public String unfollow(@RequestParam("id")long b,HttpSession session) {
		UserProfile up = (UserProfile) session.getAttribute("user_profile");
		long id = followSysService.getRelation(up.getUserID(),b);
		followSysService.delete(id);
		return "redirect:other-profile?id="+b;
	}
}
