package com.ib.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.board.dto.BoardDTO;
import com.ib.dto.IbDTO;

public class IbDAO {
	private static SqlSessionFactory factory;
	private static IbDAO instance;

	static {
		try {
			String resource = "mybatis/mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// ----------------------------------------------------------------
	public static IbDAO getInstance() {
		if (instance == null) {
			synchronized (IbDAO.class) {
				instance = new IbDAO();
			}
		}
		return instance;
	}

	// ----------------------------------------------------------------
	public int getTotalArticle() { // 총 게시물수
		SqlSession session = factory.openSession();
		int n = session.selectOne("mybatis.IbMapper.getTotalArticle");
		session.close();
		return n;
	}

	// -----------------------------------------------------------------
	public int boardInsert(BoardDTO dto) {
		SqlSession session = factory.openSession();
		int n = 0;
		try {
			n = session.insert("mybatis.IbMapper.imageInsert", dto);
			if (n > 0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}
		return n;
	}

	// petid에 해당하는 데이터 가져오기-----------------------------------------------------
	public IbDTO getImage(int petid) {
		SqlSession session = factory.openSession();
		IbDTO dto = session.selectOne("mybatis.IbMapper.getImage", petid);
		session.close();
		return dto;
	}

	// 등록했을때 불러오기
	public List<IbDTO> getImageList(Map<String, Integer> map) {
		SqlSession session = factory.openSession();
		List<IbDTO> list = session.selectList("mybatis.IbMapper.getImageList", map);
		session.close();
		return list;
	}
}
