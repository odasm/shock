package com.ustcinfo.uip.web.serv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ustcinfo.uip.entity.Message;
import com.ustcinfo.uip.service.serv.MessageService;

@Controller
@RequestMapping(value = "/message")
public class MessageController {
	@Autowired
	private MessageService messageService;

	@RequestMapping(method = RequestMethod.GET)
	public String list(Model model) {
		List<Message> messages = messageService.getAllMessage();
		model.addAttribute("messages", messages);
		return "serv/messageList";
	}

	@RequestMapping(value = "delete")
	public String delete(RedirectAttributes redirectAttributes) {
		messageService.deleteAllMessage();
		redirectAttributes.addFlashAttribute("message", "清除日志成功");
		return "serv/messageList";
	}
}
