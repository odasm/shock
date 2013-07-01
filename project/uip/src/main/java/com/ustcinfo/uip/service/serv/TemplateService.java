package com.ustcinfo.uip.service.serv;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.persistence.DynamicSpecifications;
import org.springside.modules.persistence.SearchFilter;

import com.ustcinfo.uip.entity.Template;
import com.ustcinfo.uip.repository.TemplateDao;

//Spring Bean的标识.
@Component
// 默认将类中的所有public函数纳入事务管理.
@Transactional(readOnly = true)
public class TemplateService {

	private TemplateDao templateDao;

	public Template getTemplate(Long id) {
		return templateDao.findOne(id);
	}

	@Transactional(readOnly = false)
	public void saveTemplate(Template entity) {
		templateDao.save(entity);
	}

	@Transactional(readOnly = false)
	public void deleteTemplate(Long id) {
		templateDao.delete(id);
	}

	public List<Template> getAllTemplate() {
		return (List<Template>) templateDao.findAll();
	}

	/**
	 * 创建分页请求.
	 */
	private PageRequest buildPageRequest(int pageNumber, int pagzSize,
			String sortType) {
		Sort sort = null;
		if ("auto".equals(sortType)) {
			sort = new Sort(Direction.DESC, "id");
		} else if ("name".equals(sortType)) {
			sort = new Sort(Direction.ASC, "name");
		}

		return new PageRequest(pageNumber - 1, pagzSize, sort);
	}

	/**
	 * 创建动态查询条件组合.
	 */
	private Specification<Template> buildSpecification(
			Map<String, Object> searchParams) {
		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		Specification<Template> spec = DynamicSpecifications.bySearchFilter(
				filters.values(), Template.class);
		return spec;
	}

	public Page<Template> getTemplate(Map<String, Object> searchParams,
			int pageNumber, int pageSize, String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize,
				sortType);
		Specification<Template> spec = buildSpecification(searchParams);

		return templateDao.findAll(spec, pageRequest);
	}

	@Autowired
	public void setTemplateDao(TemplateDao templateDao) {
		this.templateDao = templateDao;
	}
}
