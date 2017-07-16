package com.shop.cwh.service;


import com.shop.cwh.bean.Product;

import java.util.List;

public interface ProductService {
	public List<Product> findByTypeId(Integer type_id,Integer page);

	public Integer CountPageProductPage(Integer type_id);

	public Product findByProductId(Integer product_id);

	public List<Product> findByName(String searchInput ,Integer page);

	public Integer CountPageProductPageByName(String searchInput);


}
