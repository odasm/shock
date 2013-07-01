package com.ustcinfo.uip.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import com.ustcinfo.uip.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
