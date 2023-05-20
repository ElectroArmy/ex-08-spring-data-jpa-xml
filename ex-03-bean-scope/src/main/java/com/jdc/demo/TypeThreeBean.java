package com.jdc.demo;

import java.io.IOException;

import org.springframework.stereotype.Component;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;

@Component
public class TypeThreeBean {
	
	@PostConstruct
	private void init() {
		System.out.println("Initializing Type Three Bean");
	}
	
	@PreDestroy
	private void close() throws IOException {
		System.out.println("Closing Type Three Bean");
	}
}
