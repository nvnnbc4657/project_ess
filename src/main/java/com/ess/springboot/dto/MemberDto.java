package com.ess.springboot.dto;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
public class MemberDto {
	private int member_no;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_phone;
	private String member_email;
	private String member_address;
	private int member_pay;
	
	public MemberDto(int member_no, String member_id, String member_pw, String member_name, String member_phone,
			String member_email, String member_address, int member_pay) {
		this.member_no = member_no;
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.member_address = member_address;
		this.member_pay = member_pay;
	}
	
	
}
