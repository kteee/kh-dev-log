package com.kh.app0123.member;

import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final MemberDao dao;
    private final BCryptPasswordEncoder encoder;

    public void join(MemberVo vo) {
        // 암호화된 데이터가 회원가입됨
        vo.setPwd(encoder.encode(vo.getPwd()));
        dao.join(vo);
    }
}
