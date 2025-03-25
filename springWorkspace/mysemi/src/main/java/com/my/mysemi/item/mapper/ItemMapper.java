package com.my.mysemi.item.mapper;

import com.my.mysemi.item.vo.ItemVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.ui.Model;

import java.util.List;

@Mapper
public interface ItemMapper {

    @Select("""
            SELECT
                NO
                , ITEM_NAME
            FROM PRODUCT_INQUIRY
            """)
    List<ItemVo> itemList(Model model);
}
