package com.community_portal.repository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.community_portal.entity.User;

public interface UserRepository extends CrudRepository<User, Long>{
	@Query(value="Select * from userlogin where userEmail = :keyword",nativeQuery = true)
	public User getByEmail(@Param("keyword") String keyword);
	
}
