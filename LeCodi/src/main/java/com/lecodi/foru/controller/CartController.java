package com.lecodi.foru.controller;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lecodi.foru.dao.CartDAO;
import com.lecodi.foru.vo.Cart;

@Controller
public class CartController {

	@Autowired
	CartDAO cdao;
	
	/**
	 * 장바구니로 이동
	 * @return cartPage
	 */
	@RequestMapping(value = "cart", method = RequestMethod.GET)
	public String cartPage(HttpSession session){
		String id = (String) session.getAttribute("loginId");
		ArrayList<Cart> cartList = cdao.getList(id);
		session.setAttribute("cartList", cartList);
		return "cart/cartPage";
	}
	
	
	/**
	 * 장바구니 비우기
	 * 장바구니 세션 비우고 장바구니 페이지로 리턴
	 * @return cartPage
	 */
	@RequestMapping(value = "emptyCart", method = RequestMethod.GET)
	public String emptyCart(HttpSession session){
		String id = (String) session.getAttribute("loginId");
		cdao.emptyCart(id);
		return "redirect:./cart";
	}
	
	
	/**
	 * 장바구니에 상품 추가
	 */
	@RequestMapping(value = "addCart", method = RequestMethod.GET)
	public String addCart(HttpSession session, Cart cart){
		String id = (String) session.getAttribute("loginId");
		cart.setUserid(id);
		int result = cdao.addCart(cart);
		session.setAttribute("result", result);
		return "redirect:../";
	}
	
	
	/**
	 * 선택 상품 장바구니에서 삭제
	 */
	@RequestMapping(value = "deleteGoods", method = RequestMethod.GET)
	public String deleteGoods(HttpSession session, int[] codeList){
		String id = (String) session.getAttribute("loginId");
		for(int i : codeList){
			cdao.deleteCart(id, codeList[i]);
		}
		return "redirect:./cart";
	}
	
	
	/**
	 * 장바구니 수정
	 * 수량, 색 변경 등의 업데이트
	 */
	@RequestMapping(value = "updateCart", method = RequestMethod.GET)
	public String updateCart(HttpSession session){
		return "redirect:./cart";
	}
}
