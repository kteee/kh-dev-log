package com.my.mysemi.product.controller;

import com.my.mysemi.product.service.ProductService;
import com.my.mysemi.product.vo.ProductVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("product")
@RequiredArgsConstructor
public class ProductController {

    private final ProductService service;

    // 품목 목록 조회
    @GetMapping("list")
    public String productList(Model model) {

        List<ProductVo> productVoList = service.productList(model);

        if(productVoList == null) {
            return "redirect:/error";
        }

        model.addAttribute("productVoList", productVoList);
        System.out.println("voList = " + productVoList);
        return "product/productList";
    }

}
