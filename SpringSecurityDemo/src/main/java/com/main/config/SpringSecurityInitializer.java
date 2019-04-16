package com.main.config;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

public class SpringSecurityInitializer extends AbstractSecurityWebApplicationInitializer{

	public SpringSecurityInitializer() {
		super(LoginSecurityConfig.class);
		
	}


}
