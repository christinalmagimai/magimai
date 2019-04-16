package com.main.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages ="com.main")
@EnableWebMvc
@Import(value={LoginSecurityConfig.class})
public class LoginApplicationConfig {
@Bean
public ViewResolver viewResolver(){
	InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
	internalResourceViewResolver.setPrefix("/WEB-INF/pages/");
	internalResourceViewResolver.setSuffix(".jsp");
	return internalResourceViewResolver;
}
}