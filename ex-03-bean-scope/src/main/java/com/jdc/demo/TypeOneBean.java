package com.jdc.demo;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Component;

@Component
public class TypeOneBean implements InitializingBean, DisposableBean{

	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println("Initializing Type One Bean");
		
	}

	@Override
	public void destroy() throws Exception {
		System.out.println("Destroying Type One Bean");
		
	}

}
