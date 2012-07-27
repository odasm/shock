package org.shock.whatisjava.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HbnUtil {
	private static SessionFactory sf = null;
	static{
		try {
			sf = new Configuration().configure()
				.buildSessionFactory();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static Session getSession(){
		Session s= null;
		try {
			s=sf.openSession();
		} catch (HibernateException e) {			
			e.printStackTrace();
		}
		return s;
	}
}
