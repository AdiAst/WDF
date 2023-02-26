package com.community_portal.repository;

import org.springframework.data.repository.CrudRepository;

import com.community_portal.entity.Threads;

public interface ThreadsRepository extends CrudRepository<Threads, Long> {

}
