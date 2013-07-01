package com.ustcinfo.uip.soap;

import javax.jws.WebService;
import javax.validation.Validator;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.ustcinfo.uip.entity.User;
import com.ustcinfo.uip.service.account.AccountService;
import com.ustcinfo.uip.soap.response.GetUserResult;
import com.ustcinfo.uip.soap.response.base.WSResult;
import com.ustcinfo.uip.soap.response.dto.UserDTO;

/**
 * WebService服务端实现类.
 * 
 * 为演示方便，直接调用了Dao层.客户端实现见功能测试用例.
 * 
 * @author calvin
 */
// serviceName指明WSDL中<wsdl:service>与<wsdl:binding>元素的名称,
// endpointInterface属性指向Interface类全称.
@WebService(serviceName = "AccountService", endpointInterface = "com.ustcinfo.uip.soap.AccountSoapService", targetNamespace = WsConstants.NS)
public class AccountSoapServiceImpl implements AccountSoapService {

	private static Logger logger = LoggerFactory
			.getLogger(AccountSoapServiceImpl.class);

	@Autowired
	private AccountService accountService;

	@Autowired
	private Validator validator;

	/**
	 * @see AccountSoapService#getUser(Long)
	 */
	@Override
	public GetUserResult getUser(Long id) {
		GetUserResult result = new GetUserResult();
		try {

			Validate.notNull(id, "id参数为空");

			User user = accountService.getUser(id);

			Validate.notNull(user, "用户不存在(id:" + id + ")");

			UserDTO dto = new UserDTO();
			dto.setId(user.getId());
			dto.setLoginName(user.getLoginName());
			dto.setName(user.getName());
			result.setUser(dto);

			return result;

		} catch (IllegalArgumentException e) {
			return handleParameterError(result, e);
		} catch (RuntimeException e) {
			return handleGeneralError(result, e);
		}
	}

	private <T extends WSResult> T handleParameterError(T result, Exception e,
			String message) {
		logger.error(message, e.getMessage());
		result.setError(WSResult.PARAMETER_ERROR, message);
		return result;
	}

	private <T extends WSResult> T handleParameterError(T result, Exception e) {
		logger.error(e.getMessage());
		result.setError(WSResult.PARAMETER_ERROR, e.getMessage());
		return result;
	}

	private <T extends WSResult> T handleGeneralError(T result, Exception e) {
		logger.error(e.getMessage());
		result.setDefaultError();
		return result;
	}
}
