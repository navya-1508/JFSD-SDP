package SpringBoot_S15.controller;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import SpringBoot_S15.model.Person;
import SpringBoot_S15.model.Politician;
import SpringBoot_S15.model.Post;
import SpringBoot_S15.model.Problem;
import SpringBoot_S15.repository.PoliticianRepository;
import SpringBoot_S15.service.AdminService;
import SpringBoot_S15.service.PersonService;
import SpringBoot_S15.service.PoliticianService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class PoliticianController {
	@Autowired
	private PoliticianService politicianService;
	
	@Autowired
	private PersonService personService;
	@Autowired
	private AdminService adminService;
	
	@PostMapping("/insertpolitician")
	public ModelAndView insertperson(HttpServletRequest request) {
		String name=request.getParameter("pname");
		String position=request.getParameter("ppos");
		String gender=request.getParameter("pgender");
		String loc=request.getParameter("ploc");
		String pass=request.getParameter("ppassword");
		String mail=request.getParameter("pemail");
		Politician p=new Politician();
		p.setName(name);
		p.setEmail(mail);
		p.setPosition(position);
		p.setGender(gender);
		p.setLocation(loc);
		p.setPassword(pass);
		String msg=politicianService.politicianRegistration(p);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("politicianlogin");
		mv.addObject("msg", msg);
		return mv;
	}
	
	
	@GetMapping("politicianreg")
	public ModelAndView personreg() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("politicianreg");
		return mv;
	}
	
	@GetMapping("politicianhome")
	public ModelAndView personhome() {
	    ModelAndView mv = new ModelAndView();
	    long totalCount = adminService.personcount(); // Fetch the total count
	    mv.addObject("totalCount", totalCount); // Pass it to the view
	    mv.setViewName("politicianhome");
	    return mv;
	}



	@GetMapping("politicianlogin")
	public ModelAndView personlogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("politicianlogin");
		return mv;
	}
	
	@PostMapping("checkpoliticianlogin")
	public ModelAndView checkpoliticianlogin(HttpServletRequest req) {
		ModelAndView mv=new ModelAndView();
		String mail=req.getParameter("pemail");
		String pass=req.getParameter("ppassword");
		Politician politician=politicianService.checkPoliticianLogin(mail, pass);
		if(politician!=null) {
			HttpSession session=req.getSession();
			session.setAttribute("politician", politician);
			mv.setViewName("politicianhome");

		}
		else {
			mv.setViewName("politicianlogin");
			mv.addObject("msg", "Login Failed");
		}
		return mv;
	}
	@GetMapping("viewallproblems")
	public ModelAndView viewallproblems() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallproblems");
		List<Problem> problem=politicianService.viewAllProblems();
		mv.addObject("problem", problem);
		return mv;
	}
	
	@GetMapping("displayproblemimage")
	public ResponseEntity<byte[]> displayproblemimage(@RequestParam int id) throws SQLException {
		Problem problem=politicianService.displayProblemById(id);
		byte[] b= null;
		b=problem.getImg().getBytes(1,(int)problem.getImg().length());
		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(b);
		
	}
	@GetMapping("postupdate")
	public ModelAndView postupdate() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("postupdate");
		return mv;
	}
	
	@PostMapping("postupdate")
	public ModelAndView uploadproblem(HttpServletRequest req, @RequestParam("pimage") MultipartFile file) throws Exception {
	    String title = req.getParameter("ptitle");
	    String des = req.getParameter("pdescription");

	    // Get the image data as byte[]
	    byte[] b=file.getBytes();
		Blob blob=new javax.sql.rowset.serial.SerialBlob(b);
	    // Create the Post object
	    Post p = new Post();
	    p.setTitle(title);
	    p.setDescription(des);
	    p.setImg(blob);

	    // Save the post via the service layer
	    String msg = politicianService.addPost(p);

	    // Return a success view
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("problemsucess");
	    mv.addObject("msg", msg);
	    return mv;
	}

	@GetMapping("addpost")
	public String addpost() {
		return "addpost";
	}
	
	@GetMapping("deletepost")
	public ModelAndView deletecitizen() {
		ModelAndView mv=new ModelAndView();
		long count=politicianService.postcount();
		mv.addObject("c", count);
		mv.setViewName("viewallposts");
		List<Post> p=personService.viewAllPosts();
		mv.addObject("postlist", p);
		return mv;
	}
	
	@GetMapping("delete1")
	public String delete(@RequestParam int id) {
		politicianService.deletePost(id);
		return "redirect:/viewallposts";
	}
	
	

}
