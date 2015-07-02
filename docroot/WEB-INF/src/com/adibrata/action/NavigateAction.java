package com.adibrata.action;


import java.util.List;
import org.apache.struts2.dispatcher.DefaultActionSupport;
import com.adibrata.service.docService;
import com.adibrata.model.docInquiry;

public class NavigateAction extends DefaultActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4587665276501838677L;
	
	private docService userDao;
	
	public NavigateAction(docService userDao) {
		this.userDao = userDao;
	}
	
	@Override
	public String execute() throws Exception {
		List<docInquiry> userList = userDao.listUser();
		System.out.println("List users"+userDao.listUser());
		String success="success";
			return success;
	}
	
	public String navigateToAddStudentJsp() throws Exception {
		String success="adduser";
			return success;
	}
	
}