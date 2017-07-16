package com.shop.cwh.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.hql.internal.ast.HqlASTFactory;
import org.springframework.stereotype.Repository;


import com.shop.cwh.bean.Product;
import com.shop.cwh.bean.User;
import com.shop.cwh.dao.ProductDao;
import com.shop.cwh.service.ProductService;

@Repository("productDao")
@SuppressWarnings("all")
public class ProductDaoImpl extends BaseDaoImpl<Product>  implements ProductDao  {
	
	@Override
	public List<Product> findByName(String searchInput,Integer page) {
		String hql = "from Product p ";
		hql += "where p.product_name like ? ";
		return Query(searchInput,page,hql);
	}

	private List<Product> Query(String searchInput,Integer page,String hql) {
		int rows = 12;
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, searchInput);
		List list= query.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
		
		List<Product> products = new ArrayList<Product>();
		
		for(int i=0;i<list.size();i++){
			Product product = (Product) list.get(i);
			products.add(product);
		}
		return products;
	}

	public List<Product> findByTypeId(Integer type_id,Integer page) {
		String hql = "from Product p ";
		hql += "where p.type_id=?";
		return Query(type_id,page,hql);
	}
	
	private List<Product> Query(Integer type_id,Integer page,String hql){
		int rows = 12;
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, type_id);
		List list= query.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
		
		List<Product> products = new ArrayList<Product>();
		
		for(int i=0;i<list.size();i++){
			Product product = (Product) list.get(i);
			products.add(product);
		//	System.out.println(product.getProduct_name());
		}
		return products;
	}

	@Override
	public Integer CountPageProductFromPage(Integer type_id) {
		String hql = "select count(*) from Product p ";
		hql += "where p.type_id =?";
		return count(hql, type_id);
	}

	@Override
	public Product findByProductId(Integer proudct_id) {
		String hql = "from Product p where p.product_id=? ";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, proudct_id);
		return (Product)query.uniqueResult(); 
	}

	@Override
	public Integer CountPageProductPageByName(String searchInput) {
		String hql = "select count(*) from Product p ";
		hql += "where  p.product_name like ?";
		return count(hql, searchInput);
	}
	
}
