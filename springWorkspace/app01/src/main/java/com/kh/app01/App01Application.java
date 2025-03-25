package com.kh.app01;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@SpringBootApplication(scanBasePackages = "com.kh.app01")
public class App01Application {
	public static void main(String[] args) {
		SpringApplication.run(App01Application.class, args);
	}
//
}
