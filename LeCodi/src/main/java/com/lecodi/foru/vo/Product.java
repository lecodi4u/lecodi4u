package com.lecodi.foru.vo;

public class Product {				//제품
	
	private int productcode;		//제품 번호
	private int ordernumber;		//주문 번호
	private int productamount;		//재고
	private int price;				//가격
	private String cloth_category;	//카테고리
	private String manufaturedDate;	//생산 일자
	private int discountrate;		//할인율
	private int cloth_size;			//옷 사이즈
	private String color;			//옷 색상
	private String imageaddress;	//이미지 저장 주소
	
	public Product() {
	}

	public Product(int productcode, int ordernumber, int productamount, int price, String cloth_category,
			String manufaturedDate, int discountrate, int cloth_size, String color, String imageaddress) {
		this.productcode = productcode;
		this.ordernumber = ordernumber;
		this.productamount = productamount;
		this.price = price;
		this.cloth_category = cloth_category;
		this.manufaturedDate = manufaturedDate;
		this.discountrate = discountrate;
		this.cloth_size = cloth_size;
		this.color = color;
		this.imageaddress = imageaddress;
	}

	public int getProductcode() {
		return productcode;
	}

	public void setProductcode(int productcode) {
		this.productcode = productcode;
	}

	public int getOrdernumber() {
		return ordernumber;
	}

	public void setOrdernumber(int ordernumber) {
		this.ordernumber = ordernumber;
	}

	public int getProductamount() {
		return productamount;
	}

	public void setProductamount(int productamount) {
		this.productamount = productamount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getCloth_category() {
		return cloth_category;
	}

	public void setCloth_category(String cloth_category) {
		this.cloth_category = cloth_category;
	}

	public String getManufaturedDate() {
		return manufaturedDate;
	}

	public void setManufaturedDate(String manufaturedDate) {
		this.manufaturedDate = manufaturedDate;
	}

	public int getDiscountrate() {
		return discountrate;
	}

	public void setDiscountrate(int discountrate) {
		this.discountrate = discountrate;
	}

	public int getCloth_size() {
		return cloth_size;
	}

	public void setCloth_size(int cloth_size) {
		this.cloth_size = cloth_size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getImageaddress() {
		return imageaddress;
	}

	public void setImageaddress(String imageaddress) {
		this.imageaddress = imageaddress;
	}

	@Override
	public String toString() {
		return "Product [productcode=" + productcode + ", ordernumber=" + ordernumber + ", productamount="
				+ productamount + ", price=" + price + ", cloth_category=" + cloth_category + ", manufaturedDate="
				+ manufaturedDate + ", discountrate=" + discountrate + ", cloth_size=" + cloth_size + ", color=" + color
				+ ", imageaddress=" + imageaddress + "]";
	}

}
