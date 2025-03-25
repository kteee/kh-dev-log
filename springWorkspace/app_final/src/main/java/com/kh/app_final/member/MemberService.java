package com.kh.app_final.member;

import com.kh.app_final.jwt.JwtUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@RequiredArgsConstructor
public class MemberService {

    private final BCryptPasswordEncoder encoder;
    private final MemberMapper mapper;
    private final JwtUtil jwtUtil;

    public void join(MemberVo vo) {
        String encodedPwd = encoder.encode(vo.getPwd());
        vo.setPwd(encodedPwd);
        mapper.join(vo);
    }

    public String login(MemberVo vo) {
        MemberVo dbVo = findUserById(vo.getId());
        // match
        boolean isMatch = encoder.matches(vo.getPwd(), dbVo.getPwd());
        System.out.println("isMatch = " + isMatch);
        if(!isMatch) {
            throw new IllegalStateException("로그인 실패");
        }
        
        return jwtUtil.createJwtToken(dbVo.getNo(), dbVo.getId(), dbVo.getNick(), "ROLE_USER");
    }

    public MemberVo findUserById(String id) {
        return mapper.findUserById(id);
    }
}
