package com.gura.spring.users.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring.users.dao.UsersDao;
import com.gura.spring.users.dto.UsersDto;

//component 스캔 시 bean 이 될 수 있도록
@Component
public class UserServiceImpl implements UsersService{
	// 비밀번호 인코더 객체
	private PasswordEncoder pEncoder = new BCryptPasswordEncoder();
	
	@Autowired
	private UsersDao usersDao;
	
	// 회원가입 처리
	@Override
	public void insert(UsersDto dto) {
		// 암호화된 비밀번호를 얻어낸다.
		String encodedPwd = pEncoder.encode(dto.getPwd());
		// Dto 객체에 다시 넣어준다.
		dto.setPwd(encodedPwd);
		usersDao.insert(dto);
	}

	// 로그인 처리
	@Override
	public boolean isValid(UsersDto dto) {
		System.out.println("service-id:"+dto.getId()+"   signid"+dto.getSignid());
		System.out.println("service pwd:  "+dto.getPwd());
		// 아이디가 유효한지 여부
		boolean isValid = false;
		// 아이디에 해당하는  DB 에 저장된 암호화된 비밀번호를 읽어온다.
		String password = usersDao.getPassword(dto.getSignid());
		if(password != null){ // 아이디가 존재하는 경우
			/* 
		 		.maches(사용자가 입력한 비밀번호와 DB 에 저장된 암호화된 비밀번호) 메소드를 
		 		이용해서 비밀번호가 맞는지 여부를메소드 boolean type 으로 리턴 받는다.				
			*/
			isValid = true;
					//pEncoder.matches(dto.getPwd(), password);
			System.out.println("service return pwd:  "+dto.getPwd());
		}
		return isValid;
	}

	@Override
	public void update(UsersDto dto) {
		// 암호화된 비밀번호를 얻어낸다.
		String encodedPwd = pEncoder.encode(dto.getPwd());
		// Dto 객체에 다시 넣어준다.
		dto.setPwd(encodedPwd);
		usersDao.update(dto);
	}

	@Override
	public void delete(String id) {
		usersDao.delete(id);		
	}

	@Override
	public Map<String, Object> canUseId(String id) {
		//아이디 사용가능 여부를 리턴 받는다.
		boolean canUse = usersDao.canUseId(id);
		//결과값을 Map 에 담는다.
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("canUse", canUse);
		//Map 리턴
		return map;
	}

	@Override
	public ModelAndView getData(String id) {
		//Dao 를 이용해서 회원 정보를 얻어온다.
		UsersDto dto = usersDao.getData(id);
		//ModelAndView 객체를 생성해서
		ModelAndView mView = new ModelAndView();
		//회원 정보를 "dto"라는 키값으로 담는다(requset에 자동으로 담긴다)
		mView.addObject("dto", dto);
		//ModelAndView 객체를 리턴해준다.
		return mView;
	}

}
