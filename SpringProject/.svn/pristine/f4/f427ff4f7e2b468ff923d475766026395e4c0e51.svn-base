package board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import board.bean.BoardDTO;
import board.bean.NoticeDTO;
import board.bean.QnaDTO;
import board.bean.RecommandDTO;
import board.bean.employeeDTO;
import board.bean.mainListBeforeDTO;
import board.bean.mainListDTO;
import board.bean.mainListTwoDTO;

@Transactional
@Component("boardDAO")
public class BoardDAOMybatis implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void boardWrite(BoardDTO boardDTO) {
		sqlSession.insert("boardSQL.boardWrite", boardDTO);
	}

	@Override
	public List<BoardDTO> getBoardList(Map<String, Integer> map) {
		return sqlSession.selectList("boardSQL.getBoardList", map);
	}

	@Override
	public void hitUpdate(int seq) {
		sqlSession.update("boardSQL.hitUpdate", seq);
	}

	@Override
	public BoardDTO getBoard(int seq) {
		return sqlSession.selectOne("boardSQL.getBoard", seq);
	}
	
	@Override
	public List<BoardDTO> boardSearch(Map<String, String> map) {
		return sqlSession.selectList("boardSQL.boardSearch",map);
	}

	@Override
	public int getTotalSearchArticle(Map<String, String> map) {
		return sqlSession.selectOne("boardSQL.getTotalSearchArticle", map);
	}

	@Override
	public List<RecommandDTO> getRecommandBoard() {
		return sqlSession.selectList("boardSQL.getRecommandBoard");
	}

	@Override
	public int getTotalArticle() {
		return sqlSession.selectOne("boardSQL.getTotalArticle");
	}

	@Override
	public List<mainListDTO> getMainInfo() {
		return sqlSession.selectList("boardSQL.getMainInfo");
	}

	@Override
	public List<mainListBeforeDTO> getBeforeMain(List<mainListDTO> mainList) {
		return sqlSession.selectList("boardSQL.getBeforeMain", mainList);
	}

	@Override
	public List<BoardDTO> getCboardList() {
		return sqlSession.selectList("boardSQL.getCboardList");
	}

	@Override
	public List<employeeDTO> getEmpList() {
		return sqlSession.selectList("boardSQL.getEmpList");
	}

	@Override
	public List<mainListDTO> getDetailInfo(String package_seq) {
		return sqlSession.selectList("boardSQL.getDetailInfo", package_seq);
	}

	@Override
	public List<mainListDTO> getSearch(Map<String, String> map) {
		return sqlSession.selectList("boardSQL.getSearch", map);
	}

	@Override
	public List<mainListDTO> getFirstGrade(String firstGrade) {
		return sqlSession.selectList("boardSQL.getFirstGrade", firstGrade);
	}

	@Override
	public List<mainListDTO> getTwoGrade(String twoGrade) {
		return sqlSession.selectList("boardSQL.getTwoGrade", twoGrade);
	}

	@Override
	public List<mainListDTO> geThreeGrade(String threeGrade) {
		return sqlSession.selectList("boardSQL.geThreeGrade", threeGrade);
	}

	@Override
	public List<mainListDTO> getFourGrade(String fourGrade) {
		return sqlSession.selectList("boardSQL.getFourGrade", fourGrade);
	}

	@Override
	public List<mainListDTO> getFiveGrade(String fiveGrade) {
		return sqlSession.selectList("boardSQL.getFiveGrade", fiveGrade);
	}

	// Q&A list
	@Override
	public List<QnaDTO> getQnaBoardList(Map<String, Integer> map) {
		return sqlSession.selectList("boardSQL.getQnaBoardList", map);
	}

	@Override
	public void qnaboardWrite(QnaDTO qnaDTO) {
		sqlSession.insert("boardSQL.qnaboardWrite", qnaDTO);
	}

	@Override
	public int getQnaTotalArticle() {
		return sqlSession.selectOne("boardSQL.getQnaTotalArticle");
	}

	@Override
	public int getFirst(String firstGrade) {
		return sqlSession.selectOne("boardSQL.getFirst", firstGrade);
	}

	@Override
	public int getTwo(String twoGrade) {
		return sqlSession.selectOne("boardSQL.getTwo", twoGrade);
	}

	@Override
	public int getThree(String threeGrade) {
		return sqlSession.selectOne("boardSQL.getThree", threeGrade);
	}

	@Override
	public int getFour(String fourGrade) {
		return sqlSession.selectOne("boardSQL.getFour", fourGrade);
	}

	@Override
	public int getFive(String fiveGrade) {
		return sqlSession.selectOne("boardSQL.getFive", fiveGrade);
	}

	// notice list
	@Override
	public List<NoticeDTO> getNoticeBoardList(Map<String, Integer> map) {
		return sqlSession.selectList("boardSQL.getNoticeBoardList", map);
	}

	@Override
	public int getNoticeTotalArticle() {
		return sqlSession.selectOne("boardSQL.getNoticeTotalArticle");
	}

	@Override
	public int getRownumber() {
		return sqlSession.selectOne("boardSQL.getRownumber");
	}

	// freeboard 인기순 정렬
	@Override
	public List<BoardDTO> getHitBoardList(Map<String, Integer> map) {
		return sqlSession.selectList("boardSQL.getHitBoardList",map);
   }

	//freeboard 댓글관련
	@Override
	public void freeReply(Map<String, String> map) {
		sqlSession.update("boardSQL.freeReply", map);
	}

	@Override
	public BoardDTO getFreeBoard(int fseq) {
		return sqlSession.selectOne("boardSQL.getFreeBoard",fseq);
	}

	@Override
	public List<BoardDTO> getReplyList() {
		return sqlSession.selectList("boardSQL.getReplyList");
	}

}
