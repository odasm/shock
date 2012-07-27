package org.shock.whatisjava.action;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements ServletRequestAware, ServletResponseAware,
		SessionAware, ServletContextAware {

	protected ActionContext actionCtx = ActionContext.getContext();
	
	private static final long serialVersionUID = 1L;

	protected HttpServletRequest request;

	protected HttpServletResponse response;

	protected ServletContext application;

	protected Map<String, Object> session;

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;

	}

	public void setServletContext(ServletContext application) {
		this.application = application;

	}

	public void setSession(Map<String, Object> session) {
		this.session = session;

	}
	
	protected void put(String name, Object value) {
		actionCtx.put(name, value);
	}

	protected Object get(String name) {
		return actionCtx.get(name);
	}
}
