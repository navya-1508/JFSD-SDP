package SpringBoot_S15.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import SpringBoot_S15.model.Problem;

public interface ProblemRepository extends JpaRepository<Problem, Integer> {

}
