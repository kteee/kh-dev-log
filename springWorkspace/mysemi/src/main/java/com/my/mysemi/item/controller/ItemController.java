package com.my.mysemi.item.controller;

import com.my.mysemi.item.service.ItemService;
import com.my.mysemi.item.vo.ItemVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("item")
@RequiredArgsConstructor
public class ItemController {

    private final ItemService service;

    // 품목 목록 조회
    @GetMapping("list")
    public String itemList(Model model) {

        List<ItemVo> itemVoList = service.itemList(model);

        if(itemVoList == null) {
            return "redirect:/error";
        }

        model.addAttribute("itemVoList", itemVoList);
        System.out.println("voList = " + itemVoList);
        return "item/itemList";
    }

}
