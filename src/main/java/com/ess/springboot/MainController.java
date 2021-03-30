package com.ess.springboot;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ess.springboot.dao.IMemberDao;
import com.ess.springboot.dao.IProductDao;
import com.ess.springboot.dto.MemberDto;
import com.ess.springboot.dto.ProductDto;

@Controller
@ComponentScan(basePackages = "com.ess.springboot.dao")
public class MainController {
	
	@Autowired
	private IMemberDao memberDao;
	@Autowired
	private IProductDao productDao;
	
	@RequestMapping("/")
	public String root() throws Exception {
		return "redirect:admin_member_list";
	}
	//회원 리스트
	@RequestMapping("/admin_member_list")
	public String admin_member_list(Model model)
	{
		model.addAttribute("list", memberDao.member_list());
		return "admin/admin_member_list";
	}
	//회원 수정 화면
	@RequestMapping("/admin_member_modify_form")
	public String admin_member_modify_form(HttpServletRequest request, Model model)
	{
		String member_id = request.getParameter("member_id");
		model.addAttribute("dto", memberDao.member_view(member_id));
		return "admin/admin_member_modify";
	}
	//회원 검색
	@RequestMapping("/admin_member_modify_find")
	public String admin_member_modify_find(HttpServletRequest request, Model model)
	{
		System.out.println("start find id");
		String member_id = request.getParameter("member_id");
		System.out.println("find id : "+request.getParameter("member_id"));
		model.addAttribute("list", memberDao.member_modify_find(member_id));
		return "admin/admin_member_list";
	}
	//회원 수정
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
	//회원 삭제
	@RequestMapping("/admin_member_delete")
	public String admin_member_delete(HttpServletRequest request, Model model)
	{
		memberDao.member_delete(request.getParameter("member_id"));
		System.out.println("delete : "+request.getParameter("member_id"));
		return "redirect:admin_member_list";
	}
	//상품 목록
	@RequestMapping("/admin_product_list")
	public String admin_product_list(Model model)
	{
		model.addAttribute("list", productDao.product_list());
		return "admin/admin_product_list";
	}
	//상품 검색
	@RequestMapping("/admin_product_find")
	public String admin_product_find(HttpServletRequest request, Model model)
	{
		System.out.println("start find prd");
		String prd_no = request.getParameter("prd_no");
		System.out.println("find prd : "+request.getParameter("prd_no"));
		model.addAttribute("list", productDao.product_find(prd_no));
		return "admin/admin_product_list";
	}
	//상품 수정 화면
	@RequestMapping("/admin_product_modify_form")
	public String admin_product_modify_form(HttpServletRequest request, Model model)
	{
		String prd_no = request.getParameter("prd_no");
		model.addAttribute("dto", productDao.product_view(prd_no));
		return "admin/admin_product_modify";
	}
	//상품 수정
	@RequestMapping("/admin_product_modify")
	public String admin_product_modify(HttpServletRequest request, Model model)
	{
		System.out.println("start prd modify");
		ProductDto dto = new ProductDto();
		dto.setPrd_no(Integer.parseInt(request.getParameter("prd_no")));
		dto.setPrd_name(request.getParameter("prd_name"));
		dto.setPrd_price(Integer.parseInt(request.getParameter("prd_price")));
		dto.setPrd_type(request.getParameter("prd_type"));
		dto.setPrd_team(request.getParameter("prd_team"));
		dto.setPrd_img1(request.getParameter("prd_img1"));
		dto.setPrd_img2(request.getParameter("prd_img2"));
		dto.setPrd_img3(request.getParameter("prd_img3"));
		productDao.product_modify(dto);
		System.out.println("modify : "+dto.getPrd_no());
		return "redirect:admin_product_list";
	}
	@RequestMapping("/admin_product_add")
	public String admin_product_add()
	{
		return "admin/admin_product_add";
	}
	
	@RequestMapping("/admin_order_list")
	public String admin_order_list()
	{
		return "admin/admin_order_list";
	}
}
