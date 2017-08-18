package com.bookshop.entity;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders implements java.io.Serializable {

	// Fields

	private Integer id;
	private String shoppingcartid;
	private String buyer;
	private Integer count;
	private String bookname;
	private Integer price;

	// Constructors

	/** default constructor */
	public Orders() {
	}

	/** full constructor */
	public Orders(String shoppingcartid, String buyer, Integer count,
			String bookname, Integer price) {
		this.shoppingcartid = shoppingcartid;
		this.buyer = buyer;
		this.count = count;
		this.bookname = bookname;
		this.price = price;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getShoppingcartid() {
		return this.shoppingcartid;
	}

	public void setShoppingcartid(String shoppingcartid) {
		this.shoppingcartid = shoppingcartid;
	}

	public String getBuyer() {
		return this.buyer;
	}

	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}

	public Integer getCount() {
		return this.count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getBookname() {
		return this.bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

}