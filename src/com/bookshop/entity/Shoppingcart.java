package com.bookshop.entity;
import java.util.*;
/**
 * Shoppingcart entity. @author MyEclipse Persistence Tools
 */

public class Shoppingcart implements java.io.Serializable {

	// Fields
    
	private String id;
	private String buyer;
	private String username;
	private String address;
	private int count;
	private String state;
    private Set<Orders> bks;
    public Set<Orders> getBks(){
    	return bks;
    }
    public void setBks(Set<Orders> bks){
    	this.bks=bks;
    }
	// Constructors

	/** default constructor */
	public Shoppingcart() {
	}

	/** full constructor */
	public Shoppingcart(String buyer, String username, String address,
			Integer count,String state,Set<Orders> bks) {
		this.buyer = buyer;
		this.username = username;
		this.address = address;
		this.count = count;
		this.state=state;
		this.bks=bks;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBuyer() {
		return this.buyer;
	}

	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getCount() {
		return this.count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

}