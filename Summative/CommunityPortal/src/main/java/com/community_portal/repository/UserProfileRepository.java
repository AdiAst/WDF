package com.community_portal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.community_portal.entity.UserProfile;

public interface UserProfileRepository extends CrudRepository<UserProfile, Long>{
	@Query(value="Select userID from userprofile order by userID desc limit 1",nativeQuery = true)
	public int getLatestId();
	@Query(value="SELECT * FROM userprofile right join city on userprofile.cityID = city.cityID WHERE firstname LIKE :keyword"
			+ " OR lastname LIKE :keyword OR cityName like :keyword OR countryName like :keyword",nativeQuery = true)
	public List<UserProfile> search(@Param("keyword") String keyword);
}
