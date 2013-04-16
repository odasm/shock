package cn.com.starit.sor.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import cn.com.starit.sor.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
