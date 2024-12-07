package SpringBoot_S15.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import SpringBoot_S15.model.Person;
import SpringBoot_S15.model.Post;
import SpringBoot_S15.model.Problem;
import SpringBoot_S15.repository.PersonRepository;
import SpringBoot_S15.repository.PostRepository;
import SpringBoot_S15.repository.ProblemRepository;
@Service
public class PersonServiceImpl implements PersonService {
	@Autowired
	private PersonRepository PersonRepository;
	@Autowired
	private ProblemRepository problemRepository;
	@Autowired
	private PostRepository postRepository;
	 @Autowired
	    private JavaMailSender mailSender;
	@Override
	public String personRegistration(Person p) {
	    try {
	        PersonRepository.save(p);
	        System.out.println("Person saved successfully.");
	        return "Success";
	    } catch (Exception e) {
	        e.printStackTrace();
	        return "Failure";
	    }
	}




	@Override
	public Person checkPersonLogin(String email, String password) {
		
		return PersonRepository.checkPersonLogin(email, password);
	}
	@Override
	public String editCitizen(Person person) {
		Person p=PersonRepository.findById(person.getId()).get();
		p.setName(person.getName());
		p.setDob(person.getDob());
		p.setLocation(person.getLocation());
		p.setPassword(person.getPassword());
		p.setGender(person.getGender());
		PersonRepository.save(p);
		return "Citizen Updated Sucessfully";
	}
	
	@Override
	public String addProblem(Problem problem) {
	problemRepository.save(problem);
		return "Issue Submitted Sucessfully";
	}
	@Override
	public List<Post> viewAllPosts() {
		return postRepository.findAll();
	}
	@Override
	public Post displayPostById(int id) {
		return postRepository.findById(id).get();
	}

	public boolean isEmailExists(String email) {
	    return PersonRepository.findByEmail(email) != null; // Repository handles database lookup
	}

}
