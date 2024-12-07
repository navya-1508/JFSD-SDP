package SpringBoot_S15.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import SpringBoot_S15.model.Admin;
import SpringBoot_S15.model.Person;
import SpringBoot_S15.service.AdminService;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv=new ModelAndView();
		long count=adminService.personcount();
		mv.addObject("c", count);
		mv.setViewName("adminhome");
		return mv;
	}
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest req) {
		ModelAndView mv=new ModelAndView();
		String auser=req.getParameter("auname");
		String apass=req.getParameter("apassword");
		Admin a=adminService.checkAdminLogin(auser, apass);
		if(a!=null) {
			mv.setViewName("adminhome");
		}
		else {
			mv.setViewName("adminloginfail");
			mv.addObject("msg", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("viewallcitizens")
	public ModelAndView viewallcitizens() {
		ModelAndView mv=new ModelAndView();
		long count=adminService.personcount();
		mv.addObject("c", count);
		mv.setViewName("viewallcitizens");
		List<Person> p=adminService.viewAllCitizens();
		mv.addObject("personlist", p);
		return mv;
	}
	
	@GetMapping("deletecitizen")
	public ModelAndView deletecitizen() {
		ModelAndView mv=new ModelAndView();
		long count=adminService.personcount();
		mv.addObject("c", count);
		mv.setViewName("deletecitizen");
		List<Person> p=adminService.viewAllCitizens();
		mv.addObject("personlist", p);
		return mv;
	}
	
	@GetMapping("delete")
	public String delete(@RequestParam int id) {
		adminService.deleteCitizen(id);
		return "redirect:/deletecitizen";
	}
	
	
	@GetMapping("viewcitizenbyid")
	public ModelAndView viewcitizenbyid() {
		ModelAndView mv=new ModelAndView();
		List<Person> p=adminService.viewAllCitizens();
		mv.addObject("personlist", p);
		mv.setViewName("viewcitizenbyid");
		return mv;
	}
	
	@PostMapping("displaycitizen")
	public ModelAndView displaycitizen(HttpServletRequest req) {
		int id=Integer.parseInt(req.getParameter("id"));
		Person p=adminService.viewCitizenById(id);
		ModelAndView mv=new ModelAndView("displaycitizen");
		mv.addObject("p",p);
		return mv;
	}
	
}
