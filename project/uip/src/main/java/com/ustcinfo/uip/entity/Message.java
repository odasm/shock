package com.ustcinfo.uip.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.hibernate.validator.constraints.NotBlank;

//JPA标识
@Entity
@Table(name = "uip_message")
public class Message extends IdEntity {

	private String servInstanceId;
	private Long orderId;
	private Long flag;
	private String fromIp;
	private String aimAddress;
	private String sender;
	private String message;
	private Service service;
	private Date createTime;

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	// JSR303 BeanValidator的校验规则
	@NotBlank
	public String getServInstanceId() {
		return servInstanceId;
	}

	public void setServInstanceId(String servInstanceId) {
		this.servInstanceId = servInstanceId;
	}

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public Long getFlag() {
		return flag;
	}

	public void setFlag(Long flag) {
		this.flag = flag;
	}

	public String getFromIp() {
		return fromIp;
	}

	public void setFromIp(String fromIp) {
		this.fromIp = fromIp;
	}

	public String getAimAddress() {
		return aimAddress;
	}

	public void setAimAddress(String aimAddress) {
		this.aimAddress = aimAddress;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	// JPA 基于service_id列的多对一关系定义
	@ManyToOne
	@JoinColumn(name = "service_id")
	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

}
