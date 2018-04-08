package com.lecodi.foru;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
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
	
	
	/**
	 * 코디 페이지로 이동
	 * @return codiTool
	 */
	@RequestMapping(value = "codi", method = RequestMethod.GET)
	public String codiTool(){
		return "codiTool";
	}
	
	
	/**
	 * 장바구니로 이동
	 * @return cartPage
	 */
	@RequestMapping(value = "cart", method = RequestMethod.GET)
	public String cartPage(){
		return "cart/cartPage";
	}
	
	
	/**
	 * 장바구니 비우기
	 * 장바구니 세션 비우고 장바구니 페이지로 리턴
	 * @return cartPage
	 */
	@RequestMapping(value = "emptyCart", method = RequestMethod.GET)
	public String emptyCart(){
		return "cart/cartPage";
	}
	
	
	/**
	 * 선택 상품 장바구니에서 삭제
	 */
	@RequestMapping(value = "deleteGoods", method = RequestMethod.GET)
	public String deleteGoods(){
		return "cart/cartPage";
	}
	
}
