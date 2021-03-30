package com.ess.springboot.dto;

import lombok.Data;

@Data
public class ProductDto {
	private int prd_no;
	private String prd_name;
	private String prd_type;
	private String prd_team;
	private int prd_price;
	private String prd_img1;
	private String prd_img2;
	private String prd_img3;
}
