package com.hybrid.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hybrid.domain.MemberInfo;

@Controller
@RequestMapping("/member2")
public class MemberController2 {
	
	static Logger log = LoggerFactory.getLogger(MemberController2.class);
	@RequestMapping("/registerForm")
	public String registerForm() {
		log.info("SSSSSSSSSSSSSSSSSSSSSSSS");
		log.info("      registerForm      ");
		log.info("SSSSSSSSSSSSSSSSSSSSSSSS");
		
		return "registerForm";
	}
	
	@RequestMapping("/register")
	public String register(MemberInfo memberInfo) {
		log.info("SSSSSSSSSSSSSSSSSSSSSSSS");
		log.info("        register        ");
		log.info("SSSSSSSSSSSSSSSSSSSSSSSS");
		log.info("id =" + memberInfo.getId());
		log.info("name =" + memberInfo.getName());
		log.info("email =" + memberInfo.getEmail());
		
		return "register";
	}
}
