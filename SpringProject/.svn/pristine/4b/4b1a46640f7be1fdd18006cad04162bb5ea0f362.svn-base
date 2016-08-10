package reservate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import reservate.bean.ReservateDTO;

@Transactional
@Component("reservationDAO")
public class ReservationDAOMybatis implements ReservationDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public ReservateDTO getReserveInfo(String email1) {
		System.out.println("1");
		return sqlSession.selectOne("reserveSQL.getReserveInfo",email1);
	}

	@Override
	public List<ReservateDTO> getReserveEmail() {
		return sqlSession.selectList("reserveSQL.getReserveEmail");
	}
	
	
}
