package com.kh.snack;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
@Slf4j
public class SnackService {

    private final SnackMapper mapper;

    public int enrollSnack(SnackVo vo) {
        return mapper.insert(vo);
    }

    public SnackVo getSnackByNo(Long no) {
        return mapper.getSnackByNo(no);
    }

    public List<SnackVo> getSnackList() {
        return mapper.getSnackList();
    }

    public int deleteSnack(String no) {
        return mapper.deleteSnack(no);
    }
}
