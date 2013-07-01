package com.ustcinfo.uip.web.serv;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springside.modules.web.Servlets;

import com.google.common.collect.Maps;
import com.ustcinfo.uip.entity.Service;
import com.ustcinfo.uip.entity.Template;
import com.ustcinfo.uip.service.serv.ServService;
import com.ustcinfo.uip.service.serv.TemplateService;

@Controller
@RequestMapping(value = "/service")
public class ServiceController {

	private static final int PAGE_SIZE = 3;

	private static Map<String, String> sortTypes = Maps.newLinkedHashMap();
	static {
		sortTypes.put("auto", "自动");
		sortTypes.put("name", "名称");
	}
	@Autowired
	private ServService servService;
	@Autowired
	private TemplateService templateService;

	@RequestMapping(value = "")
	public String list(
			@RequestParam(value = "sortType", defaultValue = "auto") String sortType,
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model, ServletRequest request) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		Page<Service> services = servService.getService(searchParams,
				pageNumber, PAGE_SIZE, sortType);
		model.addAttribute("services", services);
		model.addAttribute("sortType", sortType);
		model.addAttribute("sortTypes", sortTypes);
		// 将搜索条件编码成字符串，用于排序，分页的URL
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));

		return "serv/servList";
	}

	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String createForm(Model model) {
		model.addAttribute("service", new Service());
		List<Template> templates = templateService.getAllTemplate();
		model.addAttribute("templates", templates);
		model.addAttribute("action", "create");
		return "serv/servForm";
	}

	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String create(@Valid Service newService,
			RedirectAttributes redirectAttributes) {
		servService.saveService(newService);
		redirectAttributes.addFlashAttribute("message", "服务注册成功");
		return "redirect:/service/";
	}

	@RequestMapping(value = "findOne/{id}", method = RequestMethod.POST)
	public String findOne(@PathVariable("id") Long id, Model model) {
		Template template = templateService.getTemplate(id);
		model.addAttribute("selectTemplate", template);
		model.addAttribute("action", "create");
		return "redirect:/service";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable("id") Long id,
			RedirectAttributes redirectAttributes) {
		servService.deleteService(id);
		redirectAttributes.addFlashAttribute("message", "删除服务成功");
		return "redirect:/service/";
	}
}
