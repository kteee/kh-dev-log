package com.kh.app04.home.controller;

import com.kh.app04.home.service.HomeService;
import jakarta.websocket.server.ServerEndpoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    private HomeService service;

    @GetMapping("home")
    public String home() {
        System.out.println("home 컨트롤러 호출됨 ~");

        // new HomeService().home();
        // 이렇게 service 호출하면 되는데 사실 이건 좋은 코드가 아님
        // 내가 호출할 객체를 직접 생성해야함
        // 근데 내가 이걸 직접 생성하지 않고
        // 누군가 외부에서 객체를 만들어주고 내가 그걸 사용해서 부르기만 하면 좋겠음
        // -> 이거를 스프링 Autowired가 해줌
        service.home();

        return "home";
    }
}
