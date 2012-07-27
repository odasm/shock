package org.shock.whatisjava.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.shock.whatisjava.bean.Name;



public class NameDao {
	private static Session session = HbnUtil.getSession();
	public void save(Name name){
		session.beginTransaction();// 开始一个事物
		session.save(name);// 保存/插入数据对象
		// s.saveOrUpdate(对象); 保存或更新
		// s.delete(对象); 删除
		// s.createQuery(hql语句); 查询（HQL）
		// s.createSQLQuery(SQL语句) 查询（SQL）

		session.getTransaction().commit();// 从Session中获得事务并完成/提交事务
	}
	public List<Name> queryAllName(){
		String hql="from Name";
        Query query=session.createQuery(hql);
       return  query.list();
	}
	
	public static void main(String[] args) {
		Name name = new Name();
		name.setFirstName("Lee");
		name.setLastName("Sanlai");
		NameDao nd = new NameDao();
		nd.save(name);
	}
}
