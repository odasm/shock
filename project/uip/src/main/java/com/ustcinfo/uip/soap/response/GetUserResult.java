package com.ustcinfo.uip.soap.response;

import javax.xml.bind.annotation.XmlType;

import com.ustcinfo.uip.soap.WsConstants;
import com.ustcinfo.uip.soap.response.base.WSResult;
import com.ustcinfo.uip.soap.response.dto.UserDTO;

@XmlType(name = "GetUserResult", namespace = WsConstants.NS)
public class GetUserResult extends WSResult {
	private UserDTO user;

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}
}
