package SpringBoot_S15.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.sql.Blob;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner.Mode;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import SpringBoot_S15.model.Admin;
import SpringBoot_S15.model.Person;
import SpringBoot_S15.model.Post;
import SpringBoot_S15.model.Problem;
import SpringBoot_S15.repository.AdminRepository;
import SpringBoot_S15.service.AdminService;
import SpringBoot_S15.service.PersonService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class PersonController 
{
	@Autowired
	private PersonService personService;
	
	@PostMapping("/insertperson")
	public ModelAndView insertperson(HttpServletRequest request) {
		String name=request.getParameter("pname");
		String dob=request.getParameter("pdob");
		String gender=request.getParameter("pgender");
		String loc=request.getParameter("ploc");
		String pass=request.getParameter("ppassword");
		String mail=request.getParameter("pemail");
		Person p=new Person();
		p.setName(name);
		p.setEmail(mail);
		p.setDob(dob);
		p.setGender(gender);
		p.setLocation(loc);
		p.setPassword(pass);
		String msg=personService.personRegistration(p);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("regsucess");
		mv.addObject("msg", msg);
		return mv;
	}
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("personreg")
	public ModelAndView personreg() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("personreg");
		return mv;
	}
	
	@GetMapping("personhome")
	public ModelAndView personhome() {
		ModelAndView mv=new ModelAndView();
		 List<Post> posts = personService.viewAllPosts(); // Fetch posts
		    mv.addObject("post", posts);
		mv.setViewName("personhome");
		return mv;
	}
	@GetMapping("personprofile")
	public ModelAndView personprofile() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("personprofile");
		return mv;
	}
	@GetMapping("personlogin")
	public ModelAndView personlogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("personlogin");
		return mv;
	}
	
	@PostMapping("checkpersonlogin")
	public ModelAndView checkpersonlogin(HttpServletRequest req) {
		ModelAndView mv=new ModelAndView();
		String mail=req.getParameter("pemail");
		String pass=req.getParameter("ppassword");
		Person person=personService.checkPersonLogin(mail,pass);
		if(person!=null) {
			HttpSession session=req.getSession();
			session.setAttribute("person", person);
			List<Post> posts = personService.viewAllPosts(); // Fetch posts
	        session.setAttribute("posts", posts); 
			mv.setViewName("personhome");

		}
		else {
			mv.setViewName("personlogin");
			mv.addObject("msg", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("editprofile")
	public ModelAndView editprofile() {
		ModelAndView mv=new ModelAndView("editprofile");
		return mv;
	}
	
	@PostMapping("edit")
	public ModelAndView edit(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView("editprofile");
		int id=Integer.parseInt(request.getParameter("pid"));
		String name=request.getParameter("pname");
		String dob=request.getParameter("pdob");
		String gender=request.getParameter("pgender");
		String loc=request.getParameter("ploc");
		String pass=request.getParameter("ppassword");
		Person p=new Person();
		p.setId(id);
		p.setName(name);
		p.setDob(dob);
		p.setGender(gender);
		p.setLocation(loc);
		p.setPassword(pass);
	personService.editCitizen(p);
	//create new session variable
	mv.setViewName("personlogin");
		return mv;
	}
	@GetMapping("personlogout")
	public ModelAndView personlogout() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("personlogin");
		return mv;
	}
	
	@GetMapping("addproblem")
	public String addproblem() {
		return "addproblem";
	}
	
	@PostMapping("uploadproblem")
	public ModelAndView uploadproblem(HttpServletRequest req,@RequestParam("pimage") MultipartFile file) throws Exception {
		String name=req.getParameter("pname");
		String email=req.getParameter("pemail");
		String loc=req.getParameter("ploc");
		String des=req.getParameter("pdescription");
		byte[] b=file.getBytes();
		Blob blob=new javax.sql.rowset.serial.SerialBlob(b);
		Problem p=new Problem();
		p.setName(name);
		p.setDescription(des);
		p.setEmail(email);
		p.setImg(blob);
		p.setLocation(loc);
		String msg=personService.addProblem(p);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("problemsucess");
		mv.addObject("msg",msg);
		return mv;
		
	}
	
	@GetMapping("contactpage")
	public ModelAndView contactpage() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("contactpage");
		return mv;
	}
	
	@GetMapping("viewallposts")
	public ModelAndView viewallposts() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallposts");
		List<Post> post=personService.viewAllPosts();
		mv.addObject("post", post);
		return mv;
	}
	@GetMapping("displaypostimage")
	public ResponseEntity<byte[]> displayproblemimage(@RequestParam int id) throws SQLException {
		Post post=personService.displayPostById(id);
		byte[] b= null;
		b=post.getImg().getBytes(1,(int)post.getImg().length());
		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(b);
		
	}

	

}
