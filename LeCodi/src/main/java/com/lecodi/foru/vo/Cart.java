package com.lecodi.foru.vo;

public class Cart {				//장바구니
	
	private String cartdate;	//카트에 담은 날짜
	private String userid;		//아이디
	private int productcode;	//제품 코드
	private int cartmount;		//카트에 담은 수량
	
	public Cart() {
	}

	public Cart(String cartdate, String userid, int productcode, int cartmount) {
		this.cartdate = cartdate;
		this.userid = userid;
		this.productcode = productcode;
		this.cartmount = cartmount;
	}

	public String getCartdate() {
		return cartdate;
	}

	public void setCartdate(String cartdate) {
		this.cartdate = cartdate;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getProductcode() {
		return productcode;
	}

	public void setProductcode(int productcode) {
		this.productcode = productcode;
	}

	public int getCartmount() {
		return cartmount;
	}

	public void setCartmount(int cartmount) {
		this.cartmount = cartmount;
	}

	@Override
	public String toString() {
		return "Cart [cartdate=" + cartdate + ", userid=" + userid + ", productcode=" + productcode + ", cartmount="
				+ cartmount + "]";
	}
	
	

}
