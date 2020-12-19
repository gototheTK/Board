package org.board.service;

import java.util.List;

import org.board.domain.BoardVO;
import org.board.mapper.BoardMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{

    //spring 4.3이상에서 자동 처리
    private BoardMapper mapper;

    @Override
    public void register(BoardVO board) {
        // TODO Auto-generated method stub

        log.info("register......." + board);

        mapper.insertSelectKey(board);
        
    }

    @Override
    public BoardVO get(Long bno) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public boolean modify(BoardVO board) {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public boolean remove(Long bno) {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public List<BoardVO> getList() {
        // TODO Auto-generated method stub
        return null;
    }

    

}