package com.ess.springboot;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ess.springboot.dao.IMemberDao;

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
}
