package com.ustcinfo.uip.repository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import com.ustcinfo.uip.entity.Template;

public interface TemplateDao extends
		PagingAndSortingRepository<Template, Long>,
		JpaSpecificationExecutor<Template> {
}
