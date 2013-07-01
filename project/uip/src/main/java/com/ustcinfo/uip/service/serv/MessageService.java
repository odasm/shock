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

import com.ustcinfo.uip.entity.Message;
import com.ustcinfo.uip.repository.MessageDao;

//Spring Bean的标识.
@Component
// 默认将类中的所有public函数纳入事务管理.
@Transactional(readOnly = true)
public class MessageService {

	private MessageDao messageDao;

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
	private Specification<Message> buildSpecification(
			Map<String, Object> searchParams) {
		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		Specification<Message> spec = DynamicSpecifications.bySearchFilter(
				filters.values(), Message.class);
		return spec;
	}

	public Page<Message> getMessage(Map<String, Object> searchParams,
			int pageNumber, int pageSize, String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize,
				sortType);
		Specification<Message> spec = buildSpecification(searchParams);

		return messageDao.findAll(spec, pageRequest);
	}

	@Transactional(readOnly = false)
	public void saveMessage(Message entity) {
		messageDao.save(entity);
	}

	@Autowired
	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	public List<Message> getAllMessage() {
		return (List<Message>) messageDao.findAll();
	}

	@Transactional(readOnly = false)
	public void deleteAllMessage() {
		messageDao.deleteAll();
	}
}
