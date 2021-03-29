package com.ess.springboot;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ess.springboot.dao.IMemberDao;
import com.ess.springboot.dto.MemberDto;

@Controller
@ComponentScan(basePackages = "com.ess.springboot.dao")
public class MainController {
	
	@Autowired
	private IMemberDao memberDao;
	
	@RequestMapping("/")
	public String root() throws Exception {
		return "redirect:admin_member_list";
	}
	
	@RequestMapping("/admin_member_list")
	public String admin_member_list(Model model)
	{
		model.addAttribute("list", memberDao.member_list());
		return "admin/admin_member_list";
	}
	
	@RequestMapping("/admin_member_modify_form")
	public String admin_member_modify_form(HttpServletRequest request, Model model)
	{
		String member_id = request.getParameter("member_id");
		model.addAttribute("dto", memberDao.member_view(member_id));
		return "admin/admin_member_modify";
	}
	
	@RequestMapping("/admin_member_modify")
	public String admin_member_modify(HttpServletRequest request, Model model)
	{
		MemberDto dto = new MemberDto();
		dto.setMember_id(request.getParameter("member_id"));
		dto.setMember_email(request.getParameter("member_email"));
		dto.setMember_name(request.getParameter("member_name"));
		dto.setMember_pw(request.getParameter("member_pw"));
		dto.setMember_phone(request.getParameter("member_phone"));
		memberDao.member_modify(dto);
		System.out.println("modify : "+dto.getMember_id());
		return "redirect:admin_member_list";
	}
	
	@RequestMapping("/admin_member_delete")
	public String admin_member_delete(HttpServletRequest request, Model model)
	{
		memberDao.member_delete(request.getParameter("member_id"));
		System.out.println("delete : "+request.getParameter("member_id"));
		return "redirect:admin_member_list";
	}
}
