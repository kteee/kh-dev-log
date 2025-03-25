package com.kh.app0307.member;

import com.kh.app0307.board.Board;
import com.kh.app0307.board.BoardDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.lang.reflect.Member;
import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;

    public void join(MemberEntity memberEntity) {
        memberRepository.join(memberEntity);
    }

    public List<MemberEntity> getMemberAll() {
        return memberRepository.getMemberAll();
    }

    public MemberDto getMemberByNo(Long no) {
        MemberEntity memberEntity = memberRepository.getMemberByNo(no);
        return new MemberDto(memberEntity);
    }

    public MemberEntity getMemberById(String id) {
        return memberRepository.getMemberById(id);
    }

    public MemberEntity getMemberByNick(String nick) {
        return memberRepository.getMemberByNick(nick);
    }

    public void removeMemberByNo(Long no) {
        MemberEntity memberEntity = memberRepository.getMemberByNo(no);
        memberRepository.removeMemberByNo(memberEntity);
    }

    public void updateMember(MemberDto memberDto) {
        // JPA는 더티 체킹을 통해 1차 캐시랑 영속성 컨텍스트랑 비교함
        MemberEntity entity = memberRepository.getMemberByNo(memberDto.getNo());
        entity.setPwd(memberDto.getPwd());
        entity.setNick(memberDto.getNick());
    }
}
