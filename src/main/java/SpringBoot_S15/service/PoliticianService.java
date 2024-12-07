package SpringBoot_S15.service;

import java.util.List;

import org.springframework.stereotype.Service;

import SpringBoot_S15.model.Person;
import SpringBoot_S15.model.Politician;
import SpringBoot_S15.model.Post;
import SpringBoot_S15.model.Problem;

public interface PoliticianService {
	public String politicianRegistration(Politician p);
	public Politician checkPoliticianLogin(String email,String password);
	public List<Problem> viewAllProblems();
	public Problem displayProblemById(int id);
	public String addPost(Post post);
	public String deletePost(int id);
	public long postcount();

}
