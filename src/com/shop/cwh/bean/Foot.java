package com.shop.cwh.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * 用户足迹记录表
 * 外键有两个
 * 1.用户帐号
 * 2.商品编号
 * 
 */
@Entity
@Table(name = "foot")
public class Foot {
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private int foot_id;	
	@JoinColumn(name = "user_account")
	@ManyToOne
	private User user;
	@JoinColumn(name = "product_id")
	@ManyToOne
	private Product product;
	
	public int getFoot_id() {
		return foot_id;
	}
	public void setFoot_id(int foot_id) {
		this.foot_id = foot_id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	

}

