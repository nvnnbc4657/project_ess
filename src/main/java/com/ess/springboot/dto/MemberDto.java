package com.ess.springboot.dto;

import lombok.Data;

@Data
public class MemberDto 
{
	private int member_no;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_phone;
	private String member_email;
	private String member_address;
	private int member_pay;
}
