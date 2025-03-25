package com.kh.app0304jpa.board;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Transactional
public class BoardService {

    private final BoardRepository boardRepository;

    // insert
    public void insert(BoardDto dto) {
        BoardEntity entity = toEntity(dto);
        boardRepository.save(entity);
    }

    // select by no
    public BoardEntity getBoardByNo(Long no) {
        return boardRepository.findById(no).orElse(null);
        // 여기서의 id는 기본키
    }

    // select All
    public List<BoardEntity> getBoardAll() {
        return boardRepository.findAll();
    }

    // update
    public void updateBoard(Long no, String title, String content){
        BoardEntity dbEntity = boardRepository.findById(no).orElse(null);
        // 옵셔널 객체는 값이 없을 때를 대비해서 어떤 값을 리턴할지를 정할 수 있음
        dbEntity.setTitle(title);
        dbEntity.setContent(content);
    }

    // delete
    public void deleteBoard(Long no){
        boardRepository.deleteById(no);
    }

    // dto를 엔티티로 바꾸기
    private BoardEntity toEntity(BoardDto dto){
        BoardEntity entity = new BoardEntity();
        entity.setNo(dto.getNo());
        entity.setTitle(dto.getTitle());
        entity.setContent(dto.getContent());
        entity.setEnrollDate(dto.getEnrollDate());
        entity.setModifyDate(dto.getModifyDate());
        return entity;
    }

    // 엔티티를 dto로 바꾸기
    private BoardDto toDto(BoardEntity entity) {
        BoardDto dto = new BoardDto();
        dto.setNo(entity.getNo());
        dto.setTitle(entity.getTitle());
        dto.setContent(entity.getContent());
        dto.setEnrollDate(entity.getEnrollDate());
        dto.setModifyDate(entity.getModifyDate());
        return dto;
    }
}
