package com.ustcinfo.uip.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

//JPA标识
@Entity
@Table(name = "uip_service")
public class Service extends IdEntity {

	private String name;
	private String code;
	private String define;
	private Template template;

	// JSR303 BeanValidator的校验规则
	@NotBlank
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	// JSR303 BeanValidator的校验规则
	@NotBlank
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	// JSR303 BeanValidator的校验规则
	@NotBlank
	public String getDefine() {
		return define;
	}

	public void setDefine(String define) {
		this.define = define;
	}

	// JPA 基于USER_ID列的多对一关系定义
	@ManyToOne
	@JoinColumn(name = "template_id")
	public Template getTemplate() {
		return template;
	}

	public void setTemplate(Template template) {
		this.template = template;
	}

}
