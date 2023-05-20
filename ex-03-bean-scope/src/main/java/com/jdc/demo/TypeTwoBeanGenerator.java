package com.jdc.demo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class TypeTwoBeanGenerator {
	
	@Bean(initMethod = "initBean", destroyMethod = "destroyBean")
	TypeTwoBean typetwobean() {
		return new TypeTwoBean();
	}
	
}
