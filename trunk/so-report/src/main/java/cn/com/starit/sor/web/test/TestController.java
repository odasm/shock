package cn.com.starit.sor.web.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.com.starit.sor.service.test.TestService;

@Controller
@RequestMapping(value = "/test")
public class TestController {
	@Autowired
	private TestService testService;

	@RequestMapping(method = RequestMethod.GET)
	public String test1(Model model) {
		model.addAttribute("test",testService.getTest());
		return "test/test1";
	}
}
