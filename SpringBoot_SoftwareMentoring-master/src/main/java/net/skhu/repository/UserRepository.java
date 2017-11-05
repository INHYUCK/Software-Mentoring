package net.skhu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.skhu.dto.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	// JPA query creation 기능에 의해 이 메소드가 자동으로 구현된다.
	User findOneByUserId(String userId);

}