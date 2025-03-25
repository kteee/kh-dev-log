package com.kh.app05;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan // 없어도 잘되는 것으로 판명,,
public class App05Application {

	public static void main(String[] args) {
		SpringApplication.run(App05Application.class, args);
	}

}
