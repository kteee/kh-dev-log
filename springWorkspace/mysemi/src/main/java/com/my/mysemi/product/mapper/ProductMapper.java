package com.my.mysemi.product.mapper;

import com.my.mysemi.product.vo.ProductVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.ui.Model;

import java.util.List;

@Mapper
public interface ProductMapper {

    @Select("""
            SELECT
                P.NO
                , P.ITEM_CODE
                , I.ITEM_NAME
                , P.NAME
                , P.SERIAL_NUMBER
                , P.PRICE
                , P.WARRANTY_PERIOD
                , P.RECEIVED_DATE
                , P.FACTORY_NAME
                , P.ITEM_IMAGE
                , P.FACTORY_LOCATION
                , P.ENROLL_DATE
                , P.MODIFY_DATE
                , P.DEL_YN
            FROM PRODUCT_REGISTRATION P
            JOIN PRODUCT_INQUIRY I ON (P.ITEM_CODE = I.NO)
            """)
    List<ProductVo> productList(Model model);
}
