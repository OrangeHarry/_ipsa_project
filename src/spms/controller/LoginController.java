package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.MySqlMemberDAO;
import spms.vo.Member;

/*
 * ������ ��Ʈ�ѷ��鿡�� Servlet�� ���ŵǰ� �Ϲ� Ŭ������ ���ϱ� ������
 * HttpServletRequest, HttpServletResponse �� ServletContext�� ����� �� ����
 * execute �޼ҵ��� �Ű������� String Key���� ������ ��ü���� �ʿ� ��Ƽ� ����
 * */
@Component("/auth/login.do")
public class LoginController implements Controller, DataBinding {
	 MySqlMemberDAO memberDAO = null;
	 
	 public LoginController setMemberDAO(MySqlMemberDAO memberDAO) {
		 this.memberDAO = memberDAO;
		 return this;
	 }
	 
	 @Override
	public Object[] getDataBinders() {
		//key ���� �̸����� �����Ͽ� �ڵ����� �����ؾ� �Ǵ� Ŭ���� Ÿ�� ����
		return new Object[] {
				"loginInfo", spms.vo.Member.class
		};
	}
	 
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		
		Member loginInfo = (Member)model.get("loginInfo");
		if(loginInfo.getId() == null) {
			return "../loginpage.jsp";
		} else {
			Member member = memberDAO.exist(loginInfo.getId(), loginInfo.getPassword());
			
			if(member != null) {
				HttpSession session = (HttpSession)model.get("session");
				session.setAttribute("Member", member);
				
				return "redirect:../index.jsp";
			} else {
				return "/auth/LoginFail.jsp";
			}
		}
	}
}