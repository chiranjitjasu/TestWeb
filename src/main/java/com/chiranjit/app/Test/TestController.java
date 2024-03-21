package com.chiranjit.app.Test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

	@GetMapping("/index")
	public String index(Model model) {

		return "index";
	}

	@GetMapping("/blog")
	public String blog(Model model) {

		return "blog";
	}

	@GetMapping("/shop")
	public String shop(Model model) {

		return "shop";
	}

	@GetMapping("/about")
	public String about(Model model) {

		return "about";
	}

}
