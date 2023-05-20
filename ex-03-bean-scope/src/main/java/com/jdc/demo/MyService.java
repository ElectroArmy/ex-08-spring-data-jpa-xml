package com.jdc.demo;

import org.springframework.stereotype.Component;

@Component
public class MyService {
	
	public MyService() {
		System.out.println();
	}
	
	public void doJob() {
		System.out.println("Working My Service");
	}
}
