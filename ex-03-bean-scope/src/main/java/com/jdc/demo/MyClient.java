package com.jdc.demo;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class MyClient {
	
	private MyService service;

	public MyClient(MyService service) {
		super();
		this.service = service;
		System.out.println("Create my client");
	}
	
	public void sendRequest() {
		service.doJob();
	}
	
}
