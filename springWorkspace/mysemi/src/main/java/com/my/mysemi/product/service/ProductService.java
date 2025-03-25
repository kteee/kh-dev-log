package com.my.mysemi.product.service;

import com.my.mysemi.item.mapper.ItemMapper;
import com.my.mysemi.product.mapper.ProductMapper;
import com.my.mysemi.product.vo.ProductVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductMapper mapper;

    public List<ProductVo> productList(Model model) {
        return mapper.productList(model);
    }
}
