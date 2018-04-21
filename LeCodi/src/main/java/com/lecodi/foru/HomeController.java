package com.lecodi.foru;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lecodi.foru.vo.Cart;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "main";
	}
	
	
//	/**
//	 * 코디 페이지로 이동
//	 * @return codiTool
//	 */
//	@RequestMapping(value = "codi", method = RequestMethod.GET)
//	public String codiTool(){
//		return "codiTool";
//	}
//	
//	
//	/**
//	 * 장바구니로 이동
//	 * @return cartPage
//	 */
//	@RequestMapping(value = "cart", method = RequestMethod.GET)
//	public String cartPage(HttpSession session){
////		ArrayList<Stirng> cart = (ArrayList<String>) session.getAttribute("cart"); //장바구니에 담긴 상품 코드를 통해 상품의 정보를 가져옴
////		ArrayList<cart> cartList = dao.getProduct(cart);
////		session.setAttribute("cartList", cartList);
//		String id = (String) session.getAttribute("loginId");
//		
//		
//		return "cart/cartPage";
//	}
//	
//	
//	/**
//	 * 장바구니 비우기
//	 * 장바구니 세션 비우고 장바구니 페이지로 리턴
//	 * @return cartPage
//	 */
//	@RequestMapping(value = "emptyCart", method = RequestMethod.GET)
//	public String emptyCart(HttpSession session){
//		return "cart/cartPage";
//	}
//	
//	
//	/**
//	 * 선택 상품 장바구니에서 삭제
//	 */
//	@RequestMapping(value = "deleteGoods", method = RequestMethod.GET)
//	public String deleteGoods(HttpSession session){
//		return "cart/cartPage";
//	}
	
}
