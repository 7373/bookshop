package com.bookshop.entity;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class Book implements java.io.Serializable {

	// Fields

	private String name;
	private String writer;
	private String publish;
	private String pubdate;
	private String isbn;
	private String contents;
	private String image;
	private String shoppingcardId;
	private Integer price;
	private Integer count;

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** minimal constructor */
	public Book(String writer) {
		this.writer = writer;
	}

	/** full constructor */
	public Book(String writer, String publish, String pubdate, String isbn,
			String contents, String image, String shoppingcardId,
			Integer price, Integer count) {
		this.writer = writer;
		this.publish = publish;
		this.pubdate = pubdate;
		this.isbn = isbn;
		this.contents = contents;
		this.image = image;
		this.shoppingcardId = shoppingcardId;
		this.price = price;
		this.count = count;
	}

	// Property accessors

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWriter() {
		return this.writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPublish() {
		return this.publish;
	}

	public void setPublish(String publish) {
		this.publish = publish;
	}

	public String getPubdate() {
		return this.pubdate;
	}

	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}

	public String getIsbn() {
		return this.isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getShoppingcardId() {
		return this.shoppingcardId;
	}

	public void setShoppingcardId(String shoppingcardId) {
		this.shoppingcardId = shoppingcardId;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getCount() {
		return this.count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

}