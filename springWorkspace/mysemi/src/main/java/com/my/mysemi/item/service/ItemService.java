package com.my.mysemi.item.service;

import com.my.mysemi.item.mapper.ItemMapper;
import com.my.mysemi.item.vo.ItemVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ItemService {

    private final ItemMapper mapper;

    public List<ItemVo> itemList(Model model) {
        return mapper.itemList(model);
    }
}
