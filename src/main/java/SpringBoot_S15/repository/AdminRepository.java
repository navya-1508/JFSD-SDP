package SpringBoot_S15.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import SpringBoot_S15.model.Admin;
@Repository
public interface AdminRepository extends JpaRepository<Admin, String>{
//	@Query("select a from Admin where a.username=?1 and a.password=?2")
//	public Admin checkAdminLogin(String username,String password);
	
	@Query("SELECT a FROM Admin a WHERE a.username = :username AND a.password = :password")
	Admin checkAdminLogin(@Param("username") String username, @Param("password") String password);


}
