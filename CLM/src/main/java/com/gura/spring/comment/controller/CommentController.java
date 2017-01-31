package com.gura.spring.comment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring.comment.dto.CommentDto;
import com.gura.spring.comment.service.CommentService;

@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	@RequestMapping("comment_insert")
	public void insert(@ModelAttribute CommentDto dto){
		System.out.println("controller");
		commentService.insert(dto);
	}
}
