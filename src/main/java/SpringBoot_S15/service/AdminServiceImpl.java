package SpringBoot_S15.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SpringBoot_S15.model.Admin;
import SpringBoot_S15.model.Person;
import SpringBoot_S15.model.Problem;
import SpringBoot_S15.repository.AdminRepository;
import SpringBoot_S15.repository.PersonRepository;
import SpringBoot_S15.repository.ProblemRepository;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private PersonRepository personRepository;
	@Autowired
	private AdminRepository adminRepository;
	

	@Override
	public List<Person> viewAllCitizens() {
		
		return personRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String username, String password) {
		
		return adminRepository.checkAdminLogin(username, password);
	}

	@Override
	public long personcount() {
		return personRepository.count();
	}

	@Override
	public String deleteCitizen(int id) {
	personRepository.deleteById(id);
	return "Citizen Deleted Sucessfully";
		
	}

	@Override
	public Person viewCitizenById(int id) {
		return personRepository.findById(id).get(); 
	}

	

}
