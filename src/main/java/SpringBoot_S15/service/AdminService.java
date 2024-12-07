package SpringBoot_S15.service;

import java.util.List;

import SpringBoot_S15.model.Admin;
import SpringBoot_S15.model.Person;
import SpringBoot_S15.model.Problem;

public interface AdminService {
	public List<Person> viewAllCitizens();
	public Admin checkAdminLogin(String username,String password);
	public long personcount();
	public String deleteCitizen(int id);
	public Person viewCitizenById(int id);
	
}
