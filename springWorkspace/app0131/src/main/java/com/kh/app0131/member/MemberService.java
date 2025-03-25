package com.kh.app0131.member;

import com.kh.app0131.encode.KhEncoder;
import com.kh.app0131.jwt.JwtUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@RequiredArgsConstructor
public class MemberService {

    private final MemberMapper mapper;
    // private final KhEncoder encoder;
    private final BCryptPasswordEncoder encoder;
    private final JwtUtil jwtUtil;

    public int join(MemberVo vo) {
        String rawPwd = vo.getPwd();
        String newPwd = encoder.encode(rawPwd);
        vo.setPwd(newPwd);
        return mapper.join(vo);
    }

    public String login(MemberVo vo) {
        MemberVo dbVo = mapper.findById(vo.getId());
        boolean result = encoder.matches(vo.getPwd(), dbVo.getPwd());
        // 첫번째 파라미터는 rawData
        // 두번째 파라미터는 암호화된 데이터를 넣어줘야함

        if (!result){
            throw new IllegalStateException("로그인 실패..");
        }

        // 토큰 생성
        // String secret = "zzz";
        // String encodedData = encoder.encode(dbVo.getNo() + dbVo.getNick() + secret);
        // String token = "kh " + dbVo.getNo() + "###" + dbVo.getNick() + "###" + encodedData;
        // # 대신 Base64 이용하고 . 으로 구분

        String token = jwtUtil.createToken(dbVo.getNo(), dbVo.getNick(), 1000*60*15);

        return token;
    }
}
