package com.kh.snack;

import lombok.Data;

@Data
public class SnackVo {
    private Long no;  // null 처리를 원활히 하기위하여 wrapper 클래스 Long 타입 사용
    // wrapper 클래스로 선언하면 NULL값 할당 가능 (그냥 int 이런 타입은 null값 할당 불가)
    private String name;
    private Integer price;
    private String brand;
    private String expirationDate;
}
