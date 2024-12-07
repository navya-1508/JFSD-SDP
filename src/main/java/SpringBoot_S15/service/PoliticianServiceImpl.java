package SpringBoot_S15.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SpringBoot_S15.repository.PoliticianRepository;
import SpringBoot_S15.repository.PostRepository;
import SpringBoot_S15.repository.ProblemRepository;
import SpringBoot_S15.model.Person;
import SpringBoot_S15.model.Politician;
import SpringBoot_S15.model.Post;
import SpringBoot_S15.model.Problem;

@Service
public class PoliticianServiceImpl implements PoliticianService{
	@Autowired
	private ProblemRepository problemRepository;
	@Autowired
	private PoliticianRepository politicianRepository;
	@Autowired
	private PostRepository postRepository;
	@Override
	public List<Problem> viewAllProblems() {
		return problemRepository.findAll();
	}
	@Override
	public Problem displayProblemById(int id) {
		return problemRepository.findById(id).get();
	}
	@Override
	public String politicianRegistration(Politician p) {
		politicianRepository.save(p);
		return "Registration Sucess";
	}
	@Override
	public Politician checkPoliticianLogin(String email, String password) {
		return politicianRepository.checkPoliticianLogin(email, password);
		 
	}
	@Override
	public String addPost(Post post) {
		postRepository.save(post);
		return "Post Uploaded Sucessfully";
	}
	@Override
	public String deletePost(int id) {
		postRepository.deleteById(id);
		return "Post Deleted Sucessfully";
	}
	@Override
	public long postcount() {
		return postRepository.count();
	}

}
