package com.gura.spring.go;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CLM_Controller {
	
	@RequestMapping("/movie")
	public String goMovie(){
		return "movie";
	}
	
	@RequestMapping("/store")
	public String goStore(){
		return "store";
	}
	
	@RequestMapping("/theater")
	public String goTheater(){
		return "theater";
	}

}
