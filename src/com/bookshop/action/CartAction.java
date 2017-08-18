package com.bookshop.action;

import java.util.*;

import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.bookshop.entity.*;
import com.opensymphony.xwork2.ActionContext;
import com.bookshop.DAO.*;

@Controller @Scope("prototype")

public class CartAction {
	@Resource CartDAO cartservice;
	@Resource OrderDAO orderservice;
	@Resource BookDAO bookservice;

	private Shoppingcart cart=new Shoppingcart();
	
	public Shoppingcart getShoppingcart(){
		return cart;
	}
	public void setShoppingcart(Shoppingcart cart){
		this.cart=cart;
	}
	
	private String admin;
	public String getAdmin(){
		return admin;
	}
	public void setAdmin(String admin){
		this.admin=admin;
	}
	
	private String bookname;
	public String getBookname(){
		return bookname;
	}
	public void setBookname(String bookname){
		this.bookname=bookname;
	}
	private String counts;
	public String getCounts(){
		return counts;
	}
	public void setCounts(String counts){
		this.counts=counts;
	}

	private int id;
	public int getId() {
	return this.id;
	}

	public void setId(int id) {
	this.id = id;
	}
	private String buyer;
	public String getBuyer(){
		return buyer;
	}
	public void setBuyer(String buyer){
		this.buyer=buyer;
	}
	private String address;
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	public String addcart(){
	
		
	
	//System.out.println(this.cart.getCount());
	
	if(cartservice.isExist(this.admin))
	{
		System.out.print("username"+admin);
		System.out.print("count"+counts);
		System.out.print("bookname"+bookname);
		
			this.cart=(Shoppingcart)cartservice.findShoppingCarByName(admin);
			this.cart.setState("undeliver");
			Book book=bookservice.find(bookname);
			Orders order=new Orders();
			order.setBookname(book.getName());
			order.setPrice(book.getPrice());
			order.setCount(Integer.parseInt(counts));
			order.setBuyer(admin);
			order.setShoppingcartid(this.cart.getId());
			cartservice.update(cart);
			orderservice.save(order);
			Shoppingcart cart=cartservice.findShoppingCarByName(admin);
			Iterator<Orders> iter=cart.getBks().iterator();
			ActionContext.getContext().getSession().put("iter",iter);
			return "addcart";
		}
		else 
		{System.out.println(this.getShoppingcart());
//			if(this.cart!=null)
//		{
			//System.out.println(this.username+this.bookname+this.cart.getCount());
		this.cart.setUsername(admin);
		this.cart.setState("undeliver");
		cartservice.save(this.cart);
		Book book=bookservice.find(bookname);
		Orders order=new Orders();
		order.setBookname(book.getName());
		order.setPrice(book.getPrice());
		order.setCount(Integer.parseInt(counts));
		order.setBuyer(admin);
		order.setShoppingcartid(this.cart.getId());
		cartservice.update(cart);
		orderservice.save(order);
		Shoppingcart cart=cartservice.findShoppingCarByName(admin);
		Iterator<Orders> iter=cart.getBks().iterator();
		ActionContext.getContext().getSession().put("iter",iter);
		
//		}
	return "addcart";
		}
	}
	public String cardlist(){
	
		String id="1";
		Shoppingcart cart=cartservice.findShoppingCarById(id);
		Iterator<Orders> iter=cart.getBks().iterator();
		ActionContext.getContext().getSession().put("iter",iter);
		return "cardlist";
		
	
	}
	public String carddelete(){
		orderservice.delete(id);
		//String userid="1";
		//Shoppingcart cart=cartservice.findShoppingCarById(userid);
		String id="1";
		Shoppingcart cart=cartservice.findShoppingCarById(id);
		Iterator<Orders> iter=cart.getBks().iterator();
		ActionContext.getContext().getSession().put("iter",iter);
		return "cardlist";
	}
	
	public String cardpay(){
		System.out.print("buyer"+buyer);
		System.out.print(address);
		System.out.print(counts);
		String id="1";
		Shoppingcart cart=cartservice.findShoppingCarById(id);
		cart.setAddress(address);
		cart.setCount(Integer.parseInt(counts));
		cart.setBuyer(buyer);
		cartservice.update(cart);
		ActionContext.getContext().getSession().put("message", "交易成功");
		return "cardpay";
		
	}
	public String cartlist(){
		List<Shoppingcart> ems = cartservice.list();
		ActionContext ac = ActionContext.getContext();
		ac.getSession().put("cart",ems);
		
	
	//	for(Book em: ems)
		//	System.out.println(em.getName()+em.getPublish());
		return "cartlist";
	}
	   public String send(){
		   Shoppingcart cart=cartservice.findShoppingCarByName(admin);
		   cart.setState("deliver");
		   cartservice.update(cart);
		   ActionContext.getContext().getSession().put("result","发货成功");
		   List<Shoppingcart> ems = cartservice.list();
			ActionContext.getContext().getSession().put("cart",ems);
		   return "send";
	   }
	
	}
	


