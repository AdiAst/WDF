package com.community_portal;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.community_portal.entity.User;
import com.community_portal.entity.UserProfile;
import com.community_portal.entity.Nationality;

@Controller
public class UserController {
	@Autowired
	private UserService serv;
	@Autowired
	private UserProfileService servi;
	@Autowired
	private NationalityService nationalityService;

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("home");
		return mv;
	}

	@RequestMapping("/home")
	public ModelAndView homepage() {
		ModelAndView mv = new ModelAndView("home");
		return mv;
	}

	@RequestMapping("/form")
	public ModelAndView form() {
		ModelAndView mv = new ModelAndView("form");
		return mv;
	}

	@RequestMapping("/process-register")
	public String process_register(HttpSession session, @RequestParam("firstname") String firstname,
			@RequestParam("lastname") String lastname, @RequestParam("userEmail") String email,
			@RequestParam("userPassword") String password) {
		session.setAttribute("who_register", firstname + " " + lastname);
		UserProfile profile = new UserProfile();
		profile.setFirstName(firstname);
		profile.setLastName(lastname);
		profile.setCityID(11);
		servi.save(profile);
		User user = new User();
		user.setUserEmail(email);
		user.setUserPassword(password);
		user.setRoleID(1);
		user.setUserID(servi.getLatestId());
		serv.save(user);
		return "redirect:form?form=Email Verification";
	}

	@RequestMapping("/thank-you-page")
	public ModelAndView thankyou() {
		ModelAndView mv = new ModelAndView("thankyou");
		return mv;
	}

	@RequestMapping("/process-login")
	public String process_login(HttpSession session, @RequestParam("email") String email,
			@RequestParam("password") String password) {
		try {
			User userFounded = serv.getByEmail(email);
			UserProfile userProfile = servi.get(userFounded.getUserID());
			String redirect = "";
			if (userFounded.getUserEmail().equals(email) && userFounded.getUserPassword().equals(password)) {
				redirect = "redirect:dashboard";
				redirect = "profile";
				session.setAttribute("user_login", userFounded);
				session.setAttribute("user_profile", userProfile);
				session.setAttribute("user_nationality", nationalityService.get(userProfile.getCityID()));
			} else {
				redirect = "redirect:form?form=Login&&error=Wrong Password";
			}
			return redirect;
		} catch (Exception e) {
			return "redirect:form?form=Login&&error=User Not Found";
		}
	}

	@RequestMapping("/profile")
	public ModelAndView profile() {
		ModelAndView mv = new ModelAndView("profile");
		return mv;
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user_login");
		session.removeAttribute("user_profile");
		return "redirect:form?form=Login";
	}

	@RequestMapping("/edit-profile")
	public ModelAndView editprofile(Model model) {
		ModelAndView mv = new ModelAndView("edit-profile");
		List<Nationality> nationality = nationalityService.listAll();
		model.addAttribute("nationality", nationality);
		return mv;
	}

	@RequestMapping("/process-edit-profile")
	public String processEditProfile(HttpSession session, @ModelAttribute("profile") UserProfile profile) {
		servi.save(profile);
		session.setAttribute("user_profile", profile);
		session.setAttribute("user_nationality", nationalityService.get(profile.getCityID()));
		return "redirect:profile";
	}

	@RequestMapping("/search-result")
	public String searchResult(@RequestParam("search") String search, Model model) {
		model.addAttribute("search_result", servi.search(search));
		return "search-result";
	}

	@RequestMapping("/other-profile")
	public String otherProfile(@RequestParam("id") long id, Model model) {
		UserProfile user = servi.get(id);
		model.addAttribute("user", user);
		model.addAttribute("user_nationality", nationalityService.get(user.getCityID()));
		return "other-profile";
	}

	@RequestMapping("/change-password")
	public String forgetPassword(@RequestParam("email") String email, Model model) {
		User user = serv.getByEmail(email);
		model.addAttribute("user", user);

		return "change_password";
	}

	@RequestMapping("/process-change-password")
	public String changePassword(@ModelAttribute("user") User user) {
		serv.save(user);
		return "redirect:form?form=Login";
	}
}
