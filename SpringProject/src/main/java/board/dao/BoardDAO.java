package board.dao;

import java.util.List;
import java.util.Map;

import board.bean.BoardDTO;
import board.bean.NoticeDTO;
import board.bean.QnaDTO;
import board.bean.RecommandDTO;
import board.bean.mainListBeforeDTO;
import board.bean.mainListDTO;
import board.bean.mainListTwoDTO;
import board.bean.employeeDTO;

public interface BoardDAO {

	public void boardWrite(BoardDTO boardDTO);

	public List<BoardDTO> getBoardList(Map<String, Integer> map);

	public int getTotalArticle();

	public void hitUpdate(int seq);

	public BoardDTO getBoard(int seq);

	public List<mainListDTO> getSearch(Map<String, String> map);

	public int getTotalSearchArticle(Map<String, String> map);

	public List<RecommandDTO> getRecommandBoard();

	public List<mainListDTO> getMainInfo();

	public List<mainListBeforeDTO> getBeforeMain(List<mainListDTO> mainList);

	public List<BoardDTO> getCboardList();

	public List<employeeDTO> getEmpList();

	public List<mainListDTO> getDetailInfo(String package_seq);

	public List<mainListDTO> getFirstGrade(String firstGrade);

	public List<mainListDTO> getTwoGrade(String twoGrade);

	public List<mainListDTO> geThreeGrade(String threeGrade);

	public List<mainListDTO> getFourGrade(String fourGrade);

	public List<mainListDTO> getFiveGrade(String fiveGrade);

	// Q&A start
	public void qnaboardWrite(QnaDTO qnaDTO);

	public List<QnaDTO> getQnaBoardList(Map<String, Integer> map);

	public int getQnaTotalArticle();
	// -----------------------------------------------

	public int getFirst(String firstGrade);

	public int getTwo(String twoGrade);

	public int getThree(String threeGrade);

	public int getFour(String fourGrade);

	public int getFive(String fiveGrade);

	// Notice start
	public List<NoticeDTO> getNoticeBoardList(Map<String, Integer> map);

	public int getNoticeTotalArticle();
	// ---------------------------------------------------------

	public List<BoardDTO> boardSearch(Map<String, String> map);

	public int getRownumber();

	public List<BoardDTO> getHitBoardList(Map<String, Integer> map);

	public void freeReply(Map<String, String> map);

	public BoardDTO getFreeBoard(int fseq);

	public List<BoardDTO> getReplyList();

}
