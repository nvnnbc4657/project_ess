package com.ess.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import com.ess.springboot.dto.ProductDto;

@Mapper
@Component
public interface IProductDao {
	public List<ProductDto> product_list();
	public ProductDto product_add();
	public ProductDto product_view(String prd_name);
	public int prodcut_delete(String prd_name);
	public List<ProductDto> product_find(String prd_name);
}
