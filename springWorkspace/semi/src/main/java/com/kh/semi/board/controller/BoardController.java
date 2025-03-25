package com.kh.semi.board.controller;

import com.kh.semi.board.service.BoardService;
import com.kh.semi.board.vo.AttachmentVo;
import com.kh.semi.board.vo.BoardVo;
import com.kh.semi.category.vo.CategoryVo;
import com.kh.semi.member.vo.MemberVo;
import com.kh.semi.util.FileUploader;
import com.kh.semi.util.page.PageVo;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
@RequestMapping("board")
public class BoardController {

    @Value("#{pathInfo.getBoardAttachmentPath()}")
    private String path;

    private final BoardService service;

    @GetMapping("cate")
    @ResponseBody
    public List<CategoryVo> cate() {
        return service.cateList();
    }

    // 게시글 작성 화면
    @GetMapping("write")
    public String write(HttpSession session){
        if(session.getAttribute("loginMemberVo") == null) {
            return "redirect:/member/login";
        }
        List<CategoryVo> voList = service.cateList();
        session.setAttribute("cateVoList",voList);

        return "board/write";
    }

    // 게시글 작성 처리
    @PostMapping("write")
    public String write(BoardVo vo, HttpSession session, @RequestParam(name="f") List<MultipartFile> fileList) throws IOException {

        List<String> changeNameList = new ArrayList();

        for(MultipartFile f : fileList) {
            if(f.isEmpty()) { break; }
            String changeName = FileUploader.save(f, path);
            changeNameList.add(changeName);
        }

        MemberVo loginMemberVo = (MemberVo)session.getAttribute("loginMemberVo");
        vo.setWriterNo(loginMemberVo.getNo());
        int result = service.write(vo, changeNameList);

        if(result > 0) {
            return "redirect:/board/list";
        }
        else {
            return "redirect:/error";
        }
    }

    // 게시글 목록 조회 (화면)
    @GetMapping("list")
    public String list(Model model) {
        // List<BoardVo> voList = service.list();
        // model.addAttribute("voList", voList);

        List<CategoryVo> cateVoList = service.cateList();
        model.addAttribute("cateVoList", cateVoList);
        return "board/list";
    }

    // 게시글 목록 조회 (데이터)
    @GetMapping("list/data")
    @ResponseBody
    public HashMap getBoardVoList(@RequestParam(name="pno", defaultValue="1", required = false) int currentPage
                                    , String searchType
                                    , String searchValue)
    {

        int listCount = service.getBoardCnt(searchType, searchValue);
        // int currentPage = Integer.parseInt(pno);
        System.out.println("cCount = " + currentPage);

        int pageLimit = 5;
        int boardLimit = 10;

        PageVo pvo = new PageVo(listCount, currentPage, pageLimit, boardLimit);

        List<BoardVo> boardVoList = service.list(pvo, searchType, searchValue);

        HashMap map = new HashMap();
        map.put("a", boardVoList);
        map.put("b", pvo);

        return map;
    }

    // 게시글 상세 조회
    @GetMapping("detail")
    public String detail(String bno, Model model){
        BoardVo vo = service.getBoardDetail(bno);
        List<AttachmentVo> attachmentVoList = service.getAttachmentVoList(bno);
        model.addAttribute("vo", vo);
        model.addAttribute("attachmentVoList", attachmentVoList);
        return "board/detail";
    }

    // 게시글 삭제
    @GetMapping("delete")
    public String delete(String bno, HttpSession session) {
        int result = service.delete(bno);

        if(result != 1) {
            throw new IllegalStateException("게시글 삭제 실패..");
        }

        session.setAttribute("alertMsg", "게시글 삭제 성공!");
        return "redirect:/board/list";

    }

    // 게시글 수정 (화면)
    @GetMapping("edit")
    public void edit(String bno, Model model){
        BoardVo vo = service.getBoardDetail(bno);
        List<CategoryVo> cateVoList = service.cateList();
        List<AttachmentVo> attachmentVoList = service.getAttachmentVoList(bno);
        model.addAttribute("vo", vo);
        model.addAttribute("cateVoList",cateVoList);
        model.addAttribute("attachmentVoList", attachmentVoList);
    }

    // 게시글 수정 (처리)
    @PostMapping("edit")
    public String edit(BoardVo vo, HttpSession session, @RequestParam(name = "f") List<MultipartFile> fileList) throws IOException {

        List<String> changeNameList  = new ArrayList<>();

        for(MultipartFile f : fileList) {
            if(f.isEmpty()) {
                break;
            }
            String changeName = FileUploader.save(f, path);
            changeNameList.add(changeName);
        }

        service.update(vo, changeNameList);
        session.setAttribute("alertMsg", "게시글 수정 성공!");
        return "redirect:/board/list";
    }

    @PostMapping("attachment/del")
    @ResponseBody
    public int delAttachment(String ano, String fileName) {
        System.out.println("ano = " + ano);
        System.out.println("fileName = " + fileName);
        int result = service.delAttachment(ano);
        File x = new File("D:\\dev\\springbootWorkspace\\semi\\src\\main\\resources\\static\\" + fileName);
        x.delete(); // 실제 파일 삭제하기
        return result;
    }

}
