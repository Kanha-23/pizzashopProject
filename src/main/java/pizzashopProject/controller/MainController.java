package pizzashopProject.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import pizzashopProject.dao.UsersDao;
import pizzashopProject.model.Users;

@Controller
public class MainController {
	
	@Autowired
	private UsersDao UsersDao;
	
	@RequestMapping("/")
	public String home(Model m) {
		
		List<Users> users = UsersDao.getUsers();
		m.addAttribute("users",users);
		return "index";
	}
	
	@RequestMapping("/user")
	public String check() {
		
		return "user";
	}
	
	
	//form to add product
	@RequestMapping("/add-users")
	public String addUsers(Model m) {
		m.addAttribute("title", "Add Users"); //this is to get value of title in base.jsp
		return "add_user_form";
	}
	
	//show add product form
	@RequestMapping(value="/handle-user" , method = RequestMethod.POST)
	public RedirectView handleUsers(@ModelAttribute Users product ,HttpServletRequest request) {
		UsersDao.createUsers(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	//delete handler
	@RequestMapping("/delete/{userId}")
	public RedirectView deleteUsers(@PathVariable("userId") int userId,HttpServletRequest request) {
		this.UsersDao.deleteUsers(userId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("/update/{userId}")
	public String updateForm(@PathVariable("userId") int uid,Model m) {
		
		Users users = this.UsersDao.getUsers(uid);
		m.addAttribute("users",users);
		return "update_form";
	}

}