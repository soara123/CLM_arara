package com.gura.spring.comment.dao;

import java.util.List;

import com.gura.spring.comment.dto.CommentDto;

public interface CommentDao {
	public void insert(CommentDto dto);
	public List<CommentDto> getList(int ref_group);
	public int getSequence();
	public void deleteComment(int num);
	public CommentDto getData(int num);
}
