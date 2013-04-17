package cn.com.starit.sor.service.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import cn.com.starit.sor.repository.TestDao;

//Spring Bean的标识.
@Component
// 默认将类中的所有public函数纳入事务管理.
@Transactional(readOnly = true)
public class TestService {
	private TestDao testDao;

	public String getTest() {
		return (String)(Integer.toString(testDao.getAny()));
	}

	@Autowired
	public void setTestDao(TestDao testDao) {
		this.testDao = testDao;
	}
}
