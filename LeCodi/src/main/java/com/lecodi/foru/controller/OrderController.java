package com.lecodi.foru.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("order")
public class OrderController {
	
	/**
	 * 전체 주문하기
	 * 사용자가 로그인 중일 경우 회원 주문 페이지로
	 * 로그인이 안 된 경우 두 가지로 분류 -> 로그인/비회원 주문
	 */
	@RequestMapping(value = "orderForm", method = RequestMethod.GET)
	public String orderForm(HttpSession session){
		if(session == null){	// 비로그인
			return "order/checkMember";
		}
		return "order/orderForm";
	}
	
	
	/**
	 * 비회원 주문 페이지로 이동
	 */
	@RequestMapping(value = "nonmemOrder")
	public String nonmemOrderForm(){
		return "order/nonmemOrder";
	}
	
	
	/**
	 * 결제 화면으로 전송
	 */
	@RequestMapping(value = "payment", method = RequestMethod.GET)
	public String pay(){
		return "order/payment";
	}
	
	
	/**
	 * 주문 내역 목록 확인
	 */
	@RequestMapping(value = "orderList", method = RequestMethod.GET)
	public String orderList(){
		return "order/orderList";
	}
	
	
	/**
	 * 주문 상세 페이지
	 */
	@RequestMapping(value = "orderPage", method = RequestMethod.GET)
	public String orderPage(){
		return "order/orderPage";
	}

	

}
