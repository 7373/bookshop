package com.bookshop.DAO;

import java.util.List;


import com.bookshop.entity.*;

public interface CartDAO {
	public void save(Shoppingcart cart);
	public void update(Shoppingcart cart);
	public Shoppingcart  find(String name);
	public void delete(String... names);
	public List<Shoppingcart> list();
	public Shoppingcart findShoppingCarByName(String name);
	public void removeShoppingCar(String name);
	public boolean isExist(String name);
	public Shoppingcart findShoppingCarById(String id);
	
}
