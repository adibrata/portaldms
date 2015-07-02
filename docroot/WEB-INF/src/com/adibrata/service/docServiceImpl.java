package com.adibrata.service;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.adibrata.model.docInquiry;
import com.adibrata.service.docService;

public class docServiceImpl implements docService {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) 
    {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public void saveUser(docInquiry user) {
		sessionFactory.getCurrentSession().save(user);
	}
	@SuppressWarnings("unchecked")
	public List<docInquiry> listUser(){
		List<docInquiry> list=null;
		Query queryResult = sessionFactory.getCurrentSession().createQuery("from tableDocument ");  
		list = queryResult.list(); 
		return list;
	}
}