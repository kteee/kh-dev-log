package com.kh.snack;

import com.kh.snack.response.SnackDeleteResponse;
import com.kh.snack.response.SnackDetailResponse;
import com.kh.snack.response.SnackEnrollResponse;
import com.kh.snack.response.SnackListResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

// RestController = Responsebody + Controller 합친거
@RestController
@RequestMapping("snack")
@RequiredArgsConstructor
@Slf4j
public class SnackController {

    private final SnackService service;

    // public SnackController(SnackService service) {
    //      this.service = service;
    // }

    // 과자 등록
    @PostMapping
    public SnackEnrollResponse enrollSnack(@ModelAttribute SnackVo vo) {
        int result = service.enrollSnack(vo);
        // 제이슨 형식으로 result : 1 이런식으로 키-밸류 형식으로 넘어가게 할거임
        SnackEnrollResponse response = new SnackEnrollResponse();
        response.setResult(result);
        // response 객체 그냥 던지면 스프링이 알아서 제이슨으로 바꿔줌
        // 스프링에 내장된 잭슨 라이브러리를 이용하여 스프링이 알아서 제이슨문자열로 변환해줌
        return response;
    }

    // 과자 상세조회
    @GetMapping("{no}")
    public SnackDetailResponse getSnackByNo(@PathVariable Long no){
        SnackVo vo = service.getSnackByNo(no);
        SnackDetailResponse response = new SnackDetailResponse();
        response.setData(vo);
        return response;
    }

    // 과자 목록조회
    @GetMapping
    public SnackListResponse getSnackList() {
        List<SnackVo> voList = service.getSnackList();
        SnackListResponse response = new SnackListResponse();
        response.setData(voList);
        return response;
    }

    // 과자 삭제
    @DeleteMapping
    public SnackDeleteResponse deleteSnack(String no) {
        int result = service.deleteSnack(no);
        SnackDeleteResponse response = new SnackDeleteResponse();
        response.setResult(result);
        return response;
    }
}
