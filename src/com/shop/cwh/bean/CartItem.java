package com.shop.cwh.bean;


public class CartItem {
	
	private Product product; //购物项中商品信息
	private int count;       //购买某种商品数量
	private String size;   //产品尺寸
	private String color;
	@SuppressWarnings("unused")
	private int subtotal; //购买某种商品小计
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getSubtotal(){
		if(product!=null){
			return count*product.getSale_price();
		}
		return 0;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
}
