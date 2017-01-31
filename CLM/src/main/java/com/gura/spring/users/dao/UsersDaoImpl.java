package com.gura.spring.users.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.spring.users.dto.UsersDto;

//component 스캔시 bean 으로 만들기 위한 어노테이션
@Repository
public class UsersDaoImpl implements UsersDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(UsersDto dto) {
		session.insert("users.insert", dto);
		
	}
	// 인자로 전달된 아이디에 해당하는 비밀번호를 리턴해주는 메소드
	@Override			// parameterType = "String"
	public String getPassword(String signid) {
		System.out.println(signid);
		String password = session.selectOne("users.getPwd", signid);
		System.out.println("dao pwd:  "+password);
		return password;
	}

	@Override
	public void update(UsersDto dto) {
		session.update("users.update", dto);
	}

	@Override
	public void delete(String id) {
		session.delete("users.delete", id);		
	}

	@Override
	public boolean canUseId(String id) {
		//인자로 전달된 아이디를 DB에서 select 해본다.
		String selectedId = session.selectOne("users.isExistId", id);
		if(selectedId==null){//없으면 
			return true;	//사용가능
		}else{
			return false;
		}
	}

	@Override
	public UsersDto getData(String id) {
		UsersDto dto = session.selectOne("users.getData", id);
		return dto;
	}

}
