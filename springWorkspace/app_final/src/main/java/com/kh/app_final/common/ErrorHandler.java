package com.kh.app_final.common;

import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

@RestControllerAdvice
@Slf4j
public class ErrorHandler {

    @ExceptionHandler(Exception.class)
    public ResponseEntity<ErrorRespVo> handleException(Exception e, HttpServletResponse resp){
        log.info(e.getMessage());

        ErrorRespVo errorRespVo = new ErrorRespVo("에러발생.. 관리자에게 문의하세요.");

        resp.setStatus(500);
        return ResponseEntity.status(500).body(errorRespVo);
    }

    // 이너 클래스
    @RequiredArgsConstructor
    @Getter
    class ErrorRespVo{
        private final String msg;

    }

}
