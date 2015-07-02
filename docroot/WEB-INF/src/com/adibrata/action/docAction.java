package com.adibrata.action;

import java.util.ArrayList;
import java.util.List;

import com.adibrata.service.docService;
import com.adibrata.model.docInquiry;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class docAction extends ActionSupport   implements ModelDriven<docInquiry> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4587665276501838677L;
	
	private docInquiry user;
	private List<docInquiry> userList = new ArrayList<docInquiry>();
	
	private String title;
	private String extension;
	private String version;
	private String userName;
    private String createDate;
    private String modifiedDate;
    private String description;
    private int readCount;
    
    public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(String modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public docService getUserDao() {
		return userDao;
	}

	public void setUserDao(docService userDao) {
		this.userDao = userDao;
	}
    
	private List<String> validateErrors;
	private docService userDao;
	
	public docAction(docService userDao) {
		this.userDao = userDao;
	}
	
	@Override
	public String execute() throws Exception {

		user = new docInquiry();
		userList = userDao.listUser();
		System.out.println("List users"+userDao.listUser());
		return SUCCESS;
	}

	 

	
	public List<String> getValidateErrors() {
		return validateErrors;
	}

	public docInquiry getUser() {
		return user;
	}

	public void setUser(docInquiry user) {
		this.user = user;
	}

	public void setValidateErrors(List<String> validateErrors) {
		this.validateErrors = validateErrors;
	}

	
	public void setUserList(List<docInquiry> userList) {
		this.userList = userDao.listUser();
	}
	public List<docInquiry> getUserList() {
		return userList;
	}

	@Override
	public docInquiry getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	
	
}