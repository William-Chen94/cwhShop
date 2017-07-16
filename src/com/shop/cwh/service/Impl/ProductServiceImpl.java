package com.shop.cwh.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.shop.cwh.service.ProductService;
import com.shop.cwh.bean.Product;
import com.shop.cwh.dao.ProductDao;

@Transactional
@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Resource
	private ProductDao productDao;


	@Override
	public Product findByProductId(Integer product_id) {
		
		return productDao.findByProductId(product_id);
		
	}
	
	@Override
	public List<Product> findByTypeId(Integer type_id, Integer page) {

		return productDao.findByTypeId(type_id, page);
	}

	@Override
	public List<Product> findByName(String searchInput ,Integer page) {
		// TODO Auto-generated method stub
		return productDao.findByName(searchInput ,page);
	}

	@Override
	public Integer CountPageProductPageByName(String searchInput) {
		Integer count = productDao.CountPageProductPageByName(searchInput);
		return count;
	}
	
	@Override
	public Integer CountPageProductPage(Integer type_id) {
		Integer count = productDao.CountPageProductFromPage(type_id);
		return count;
	}

}
