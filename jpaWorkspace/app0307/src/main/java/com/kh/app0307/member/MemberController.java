package com.kh.app0307.member;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("api/member")
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @PostMapping
    public void join(@RequestBody MemberEntity memberEntity){
        memberService.join(memberEntity);
    }

    @GetMapping
    public List<MemberEntity> getMemberAll(){
        return memberService.getMemberAll();
    }

    @GetMapping("{no}")
    public MemberDto getMemberByNo(@PathVariable Long no){
        return memberService.getMemberByNo(no);
    }

    @GetMapping("search/id/{id}")
    public MemberEntity getMemberById(@PathVariable String id){
        return memberService.getMemberById(id);

    }


    @GetMapping("search/nick/{nick}")
    public MemberEntity getMemberByNick(@PathVariable String nick){
        return memberService.getMemberByNick(nick);
    }

    @DeleteMapping("{no}")
    public void removeMemberByNo(@PathVariable Long no) {
        memberService.removeMemberByNo(no);
    }

    @PutMapping
    public void updateMember(@RequestBody MemberDto memberDto){
        memberService.updateMember(memberDto);
    }
}
