package cn.com.starit.sor.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import cn.com.starit.sor.entity.Test;

public interface TestDao extends PagingAndSortingRepository<Test, Long>{
	@Modifying
	@Query("update Test set name='123' ")
	int getAny();
	
}
