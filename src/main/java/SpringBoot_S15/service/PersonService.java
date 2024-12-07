package SpringBoot_S15.service;

import java.util.List;

import SpringBoot_S15.model.Person;
import SpringBoot_S15.model.Post;
import SpringBoot_S15.model.Problem;

public interface PersonService {
	public String personRegistration(Person p);
	public Person checkPersonLogin(String email,String password);
	public String editCitizen(Person p);
	public String addProblem(Problem problem);
	public List<Post> viewAllPosts();
	public Post displayPostById(int id);
	public boolean isEmailExists(String email);
	


}
