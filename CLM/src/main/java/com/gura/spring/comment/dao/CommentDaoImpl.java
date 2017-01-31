package com.gura.spring.comment.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.spring.comment.dto.CommentDto;

@Repository
public class CommentDaoImpl implements CommentDao {
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(CommentDto dto) {
		System.out.println("dao");
		session.insert("clm_comment.insert", dto);
	}

	@Override
	public List<CommentDto> getList(int ref_group) {
		List<CommentDto> list = session.selectList("clm_comment.getList", ref_group);
		return list;
	}

	@Override
	public int getSequence() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteComment(int num) {
		session.delete("clm_comment.deleteComment", num);
	}

	@Override
	public CommentDto getData(int num) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
