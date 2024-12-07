package SpringBoot_S15.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import SpringBoot_S15.model.Person;
@Repository
public interface PersonRepository extends JpaRepository<Person, Integer>{
@Query("select p from Person p where p.email=?1 and p.password=?2")
public Person checkPersonLogin(String mail,String password);
public Person findByEmail(String email);



}
