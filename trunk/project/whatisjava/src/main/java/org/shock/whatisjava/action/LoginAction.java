package org.shock.whatisjava.action;

import java.util.List;

import org.shock.whatisjava.bean.Name;
import org.shock.whatisjava.dao.NameDao;

public class LoginAction extends BaseAction {

	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String findAll() throws Exception {
		
		NameDao nd = new NameDao();
		Object o = nd.queryAllName();
		String result =JsonUtils.turn2Json(o);
		return result;
	}
}
