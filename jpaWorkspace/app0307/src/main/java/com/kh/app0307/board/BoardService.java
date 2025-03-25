package com.kh.app0307.board;

import com.kh.app0307.member.MemberDto;
import com.kh.app0307.member.MemberEntity;
import com.kh.app0307.member.MemberRepository;
import jakarta.persistence.EntityManager;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class BoardService {

    private final BoardRepository boardRepository;
    private final MemberRepository memberRepository;

    public void write(BoardDto boardDto) {
        MemberEntity memberEntity = memberRepository.getMemberByNo(boardDto.getWriterNo());
        Board boardEntity = new Board();
        boardEntity.setTitle(boardDto.getTitle());
        boardEntity.setContent(boardDto.getContent());
        boardEntity.setMemberEntity(memberEntity);
        boardRepository.write(boardEntity);
    }

    public Board getBoardByNo(Long no) {
        return boardRepository.getBoardByNo(no);
    }

    public List<Board> getBoardAll() {
        return boardRepository.getBoardAll();
    }

    public void deleteBoard(Long no) {
        Board boardEntity = getBoardByNo(no);
        boardRepository.deleteBoard(boardEntity);
    }

    public void updateBoard(BoardDto boardDto) {
        Board boardEntity = getBoardByNo(boardDto.getNo());
        boardEntity.setTitle(boardDto.getTitle());
        boardEntity.setContent(boardDto.getContent());
    }
}
