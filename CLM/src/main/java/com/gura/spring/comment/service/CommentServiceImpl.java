package com.gura.spring.comment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gura.spring.comment.dao.CommentDao;
import com.gura.spring.comment.dto.CommentDto;

@Component
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentDao commentDao;

	@Override
	public void insert(CommentDto dto) {
		System.out.println("service");
		commentDao.insert(dto);
	}
	
	
}
