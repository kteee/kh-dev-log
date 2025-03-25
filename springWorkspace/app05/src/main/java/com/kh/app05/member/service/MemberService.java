package com.kh.app05.member.service;

import com.kh.app05.member.dao.MemberDao;
import com.kh.app05.member.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class MemberService {
    // 서비스는 dao를 의존하고 있음
    // 서비스한테 dao 의존성 주입하기
    private final MemberDao dao;

    // 스프링이 자동 커밋해주는데,,
    // 만약 롤백시키고 싶다면 이 메서드가 에러날 때 예외 던지게 하면 됨
    // 그걸 또 자동으로 해주는게 @Transactional 임
    // 매서드 레벨이서 붙일 수 도 있고 클래스 레벨에서 붙일 수 도 있음
    // @Transactional
    public int join(MemberVo vo) {
        return dao.join(vo);
    }

    public MemberVo login(MemberVo vo) {
        return dao.login(vo);
    }
}
