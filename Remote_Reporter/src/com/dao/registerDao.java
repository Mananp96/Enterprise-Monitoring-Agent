package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class registerDao {

	@Autowired
	SessionFactory sessionFactory;

	public void insert(Object rvo) {
		try {
			Session session = sessionFactory.openSession();
			session.save(rvo);
			Transaction tr = session.beginTransaction();
			tr.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
