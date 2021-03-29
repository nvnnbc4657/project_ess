package com.ess.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import com.ess.springboot.dto.MemberDto;

@Mapper
@Component
public interface IMemberDao {
	public List<MemberDto> member_list();
	public int member_join(int member_no, String member_id, String member_pw, String member_name, String member_phone, String member_email, String member_address);
	public int member_id_find(String member_name, String member_email);
	public int member_pw_find(String member_id, String member_name, String member_email);
	public int member_id_check(String member_id);
	public MemberDto member_view(String member_id);
	public int member_modify(int member_no, String member_id, String member_pw, String member_name, String member_phone, String member_email, String member_address);
	public int member_delete(int member_no);
}
