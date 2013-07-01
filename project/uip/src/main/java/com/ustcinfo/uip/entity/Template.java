package com.ustcinfo.uip.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

//JPA标识
@Entity
@Table(name = "uip_serv_template")
public class Template extends IdEntity {

	private String name;
	private String template;

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
	public String getTemplate() {
		return template;
	}

	public void setTemplate(String template) {
		this.template = template;
	}

}
