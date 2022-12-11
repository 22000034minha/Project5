package com.example;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo) {
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }


    public int deleteBoard(int seq) {
        int delete = sqlSession.delete("Board.deleteBoard", seq);
        return delete;
    }


    public int updateBoard(BoardVO vo) {
        int update = sqlSession.update("Board.updateBoard", vo);
        return update;
    }

    class BoardRowMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setTitle(rs.getString("title"));
            vo.setNickname(rs.getString("nickname"));
            vo.setSinger(rs.getString("singer"));
            vo.setAlbum(rs.getString("album"));
            vo.setPlaytime(rs.getString("playtime"));
            vo.setGenre(rs.getString("genre"));
            vo.setComment(rs.getString("comment"));
            return vo;
        }
    }

    public BoardVO getBoard(int seq) {
        BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
        return one;
    }

    public List<BoardVO> getBoardList() {
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }

}
