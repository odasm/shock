package com.ustcinfo.uip.repository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import com.ustcinfo.uip.entity.Message;

public interface MessageDao extends PagingAndSortingRepository<Message, Long>,
		JpaSpecificationExecutor<Message> {
}
