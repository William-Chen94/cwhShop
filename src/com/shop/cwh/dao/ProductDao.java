package com.shop.cwh.dao;

import java.util.List;

import com.shop.cwh.bean.Product;

public interface ProductDao extends BaseDao<Product>{

	public List<Product> findByTypeId(Integer type_id,Integer page);

	public Integer CountPageProductFromPage(Integer type_id);

	public Product findByProductId(Integer product_id);

	public List<Product> findByName(String searchInput,Integer page);

	public Integer CountPageProductPageByName(String searchInput);


}
