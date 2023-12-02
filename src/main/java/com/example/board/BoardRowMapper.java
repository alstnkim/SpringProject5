package com.example.board;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardRowMapper implements RowMapper<BoardVO> {

    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO board = new BoardVO();

        board.setSeq(rs.getInt("seq"));
        board.setGender(rs.getString("gender"));
        board.setS_id(rs.getString("s_id"));
        board.setTitle(rs.getString("title"));
        board.setName(rs.getString("name"));
        board.setContent(rs.getString("content"));

        return board;
    }
}
