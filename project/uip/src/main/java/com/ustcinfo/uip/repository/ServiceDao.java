package com.ustcinfo.uip.repository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import com.ustcinfo.uip.entity.Service;

public interface ServiceDao extends PagingAndSortingRepository<Service, Long>,
		JpaSpecificationExecutor<Service> {
	
	@Query("from Service c where c.code=:code")
	public Service getService(@Param("code") String code);
}
