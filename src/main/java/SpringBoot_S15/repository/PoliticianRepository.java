package SpringBoot_S15.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import SpringBoot_S15.model.Politician;
@Repository
public interface PoliticianRepository extends JpaRepository<Politician, Integer> {
	@Query("select p from Politician p where p.email=?1 and p.password=?2")
	public Politician checkPoliticianLogin(String mail,String password);


}
