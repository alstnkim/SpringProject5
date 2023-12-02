package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int insertBoard(BoardVO vo) {
        String sql = "Insert into BOARD (gender, s_id, title, name, content) values("
              + "'"  + vo.getGender() + "',"
              + "'"  + vo.getS_id() + "',"
              + "'"  + vo.getTitle() + "',"
              + "'"  + vo.getName() + "',"
              + "'"  + vo.getContent() + "')";
        return jdbcTemplate.update(sql);
    }

    // 글 삭제
    public int deleteBoard(int seq) {
        String sql = "delete from BOARD where seq = " + seq;
        return jdbcTemplate.update(sql);
    }

    public int updateBoard(BoardVO vo) {
        String sql = "update BOARD set "
                + "gender='" + vo.getGender() + "',"
                + "s_id='" + vo.getS_id() + "',"
                + "title='" + vo.getTitle() + "',"
                + "name='" + vo.getName() + "',"
                + "content='" + vo.getContent() + "' where seq=" + vo.getSeq();
        return jdbcTemplate.update(sql);
    }

    public BoardVO getBoard(int seq) {
        String sql = "select * from BOARD where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }

    public List<BoardVO> getBoardList() {
        String sql = "select * from BOARD order by seq desc";
        return jdbcTemplate.query(sql,new BoardRowMapper());
    }
}
