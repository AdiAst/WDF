package com.community_portal;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.community_portal.entity.UserProfile;

public interface UserProfileRepository extends CrudRepository<UserProfile, Long>{
	@Query(value="Select userID from userprofile order by userID desc limit 1",nativeQuery = true)
	public int getLatestId();
	@Query(value="SELECT * FROM userprofile WHERE firstname LIKE :keyword"
			+ " OR lastname LIKE :keyword",nativeQuery = true)
	public List<UserProfile> search(@Param("keyword") String keyword);
}
