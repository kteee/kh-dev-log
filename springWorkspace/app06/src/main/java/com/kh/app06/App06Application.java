package com.kh.app06;

import com.kh.app06.member.dao.MemberDao;
import com.kh.app06.member.mapper.MemberMapper;
import com.kh.app06.member.member.vo.MemberVo;
import com.kh.app06.member.service.MemberService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class App06Application {

	public static void main(String[] args) {
		SpringApplication.run(App06Application.class, args);
	}

}
