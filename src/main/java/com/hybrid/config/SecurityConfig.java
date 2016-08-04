package com.hybrid.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		auth.inMemoryAuthentication()
			.withUser("admin")
			.password("1234")
			.roles("ADMIN");
	
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
			.antMatchers("/index.jsp").permitAll()
			.antMatchers("/**").hasRole("ADMIN")	 //** =>하위디렉토리까지 즉 모든 디렉토리에 다 적용
			.and()
			.formLogin()
			.loginPage("/login.jsp").permitAll()
			.and()
			.logout()
			.logoutSuccessUrl("/index.jsp"); // or "/"만 줘도 index.jsp로 넘어감
		
	}	
}
