package com.kh.myapp01;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan
public class Myapp01Application {

	public static void main(String[] args) {
		SpringApplication.run(Myapp01Application.class, args);
	}

}
