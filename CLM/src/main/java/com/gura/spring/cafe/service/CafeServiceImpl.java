package com.gura.spring.cafe.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring.cafe.dao.CafeDao;
import com.gura.spring.cafe.dto.CafeDto;
@Component
public class CafeServiceImpl implements CafeService{

	private static final int PAGE_ROW_COUNT=5;
	private static final int PAGE_DISPLAY_COUNT=5;
	@Autowired
	private CafeDao cafeDao;

	@Override
	public ModelAndView getList(HttpServletRequest request, int pageNum) {
		//검색과 관련된 파라미터를 읽어와 본다.
		String keyword=request.getParameter("keyword");
		String condition=request.getParameter("condition");
	      
		//BoardDto 객체를 생성해서
		CafeDto dto= new CafeDto();
		if(keyword != null){ //검색어가 전달된 경우
				if(condition.equals("titlecontent")){ //제목+내용 검색
					dto.setTitle(keyword);
					dto.setContent(keyword);
				}else if(condition.equals("title")){//제목 검색
					dto.setTitle(keyword);
		}else if(condition.equals("writer")){//작성자 검색
			dto.setWriter(keyword);
		}
		// list.jsp 뷰페이지에서 필요한 내용을 request 에 담는다.
			request.setAttribute("condition", condition);
			request.setAttribute("keyword", keyword);
		}
		
		//보여줄 페이지 데이터의 시작 ResultSet row 번호
		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
		//보여줄 페이지 데이터의 끝 ResultSet row 번호
		int endRowNum=pageNum*PAGE_ROW_COUNT;
		//전체 row 의 갯수를 DB 에서 얻어온다.
		int totalRow = cafeDao.getCount();
		//전체 페이지의 갯수 구하기
		int totalPageCount=
				(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
		//시작 페이지 번호
		int startPageNum=
			1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
		//끝 페이지 번호
		int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
		//끝 페이지 번호가 잘못된 값이라면 
		if(totalPageCount < endPageNum){
			endPageNum=totalPageCount; //보정해준다. 
		}
		
		//시작 row 번와 끝 row 번호를 CafeDto에 담는다.
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
				
		//모델앤뷰에 담으면 자동으로 리퀘스트에 담긴다.
		List<CafeDto> list = cafeDao.getList(dto);
		ModelAndView mView=new ModelAndView();
		mView.addObject("list", list);
		mView.addObject("pageNum", pageNum);
		mView.addObject("startPageNum", startPageNum);
		mView.addObject("endPageNum", endPageNum);
		mView.addObject("totalPageCount", totalPageCount);
		return mView;
		
	}
	
	@Override
	public void insert(CafeDto dto) {
		cafeDao.insert(dto);		
	}

	@Override
	public ModelAndView getData(int num) {
		CafeDto dto= cafeDao.getData(num);
		cafeDao.increaseViewCount(num);
		ModelAndView mView = new ModelAndView();
		mView.addObject("dto", dto);
		return mView;
	}

	@Override
	public void update(CafeDto dto) {
		cafeDao.update(dto);		
	}

	@Override
	public void delete(int num) {
		cafeDao.delete(num);
	}

	@Override
	public ModelAndView updateForm(int num) {
		CafeDto dto = cafeDao.getData(num);
		ModelAndView mView =  new ModelAndView();
		mView.addObject("dto", dto);
		return mView;
	}



}
