package com.shop.cwh.bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * 商品的实体对象
 */
@Table(name = "orderitem")
@Entity
public class Orderitem {
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private Integer item_id;
	private Integer count;
	private int subtotal;

	// 商品外键:对象
	@JoinColumn(name = "product_id")
	@ManyToOne
	private Product product;

	// 订单外键:对象
	@JoinColumn(name = "order_id")
	@ManyToOne(cascade={CascadeType.ALL},fetch = FetchType.LAZY)
	private Order order;

	public Integer getItem_id() {
		return item_id;
	}

	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public int getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(int subtotal) {
		this.subtotal = subtotal;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	
	
}
