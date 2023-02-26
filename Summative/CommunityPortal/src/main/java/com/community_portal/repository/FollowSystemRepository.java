package com.community_portal.repository;



import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.community_portal.entity.FollowSystem;

public interface FollowSystemRepository extends CrudRepository<FollowSystem, Long>{
	@Query(value="SELECT count(id) FROM followsystem WHERE userA = :userA and userB = :userB",nativeQuery = true)
	public int checkRelation(@Param("userA") long userA,@Param("userB") long userB);
	
	@Query(value="SELECT id FROM followsystem WHERE userA = :userA and userB = :userB",nativeQuery = true)
	public long getRelation(@Param("userA") long userA,@Param("userB") long userB);
}
