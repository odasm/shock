package com.ustcinfo.uip.web.serv;

import java.util.Map;

import javax.servlet.ServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springside.modules.web.Servlets;

import com.google.common.collect.Maps;
import com.ustcinfo.uip.entity.Template;
import com.ustcinfo.uip.service.serv.TemplateService;

@Controller
@RequestMapping(value = "/template")
public class TemplateController {

	private static final int PAGE_SIZE = 3;

	private static Map<String, String> sortTypes = Maps.newLinkedHashMap();
	static {
		sortTypes.put("auto", "自动");
		sortTypes.put("name", "名称");
	}

	@Autowired
	private TemplateService templateService;

	@RequestMapping(value = "")
	public String list(
			@RequestParam(value = "sortType", defaultValue = "auto") String sortType,
			@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			Model model, ServletRequest request) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(
				request, "search_");
		Page<Template> templates = templateService.getTemplate(searchParams,
				pageNumber, PAGE_SIZE, sortType);
		model.addAttribute("templates", templates);
		model.addAttribute("sortType", sortType);
		model.addAttribute("sortTypes", sortTypes);
		// 将搜索条件编码成字符串，用于排序，分页的URL
		model.addAttribute("searchParams", Servlets
				.encodeParameterStringWithPrefix(searchParams, "search_"));

		return "serv/templateList";
	}

	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String createForm(Model model) {
		model.addAttribute("template", new Template());
		model.addAttribute("action", "create");
		return "serv/templateForm";
	}

	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String create(@Valid Template newTemplate,
			RedirectAttributes redirectAttributes) {
		templateService.saveTemplate(newTemplate);
		redirectAttributes.addFlashAttribute("message", "创建模板成功");
		return "redirect:/template/";
	}

	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("template", templateService.getTemplate(id));
		model.addAttribute("action", "update");
		return "serv/templateForm";
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(
			@Valid @ModelAttribute("preloadTask") Template template,
			RedirectAttributes redirectAttributes) {
		templateService.saveTemplate(template);
		redirectAttributes.addFlashAttribute("message", "更新模板成功");
		return "redirect:/template/";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable("id") Long id,
			RedirectAttributes redirectAttributes) {
		templateService.deleteTemplate(id);
		redirectAttributes.addFlashAttribute("message", "删除模板成功");
		return "redirect:/template/";
	}

	/**
	 * 使用@ModelAttribute, 实现Struts2
	 * Preparable二次部分绑定的效果,先根据form的id从数据库查出Template对象,再把Form提交的内容绑定到该对象上。
	 * 因为仅update()方法的form中有id属性，因此本方法在该方法中执行.
	 */
	@ModelAttribute("preloadTemplate")
	public Template getTemplate(
			@RequestParam(value = "id", required = false) Long id) {
		if (id != null) {
			return templateService.getTemplate(id);
		}
		return null;
	}

}
