package com.adibrata.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.adibrata.model.docInquiry;

public interface docService {
	@Transactional
	public void saveUser(docInquiry user) ;
	@Transactional
	public List<docInquiry> listUser() ;
}