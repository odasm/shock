package com.ustcinfo.uip.rest;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.ustcinfo.uip.entity.Message;
import com.ustcinfo.uip.entity.Service;
import com.ustcinfo.uip.service.serv.MessageService;
import com.ustcinfo.uip.service.serv.ServService;
import com.ustcinfo.uip.soap.SoapClient;

/**
 * Task的Restful API的Controller.
 * 
 * @author calvin
 */
@Controller
@RequestMapping(value = "/api/esb")
public class SoapController {

	@Autowired
	private ServService servService;
	@Autowired
	private MessageService messageService;

	@RequestMapping(value = "/{code}", method = RequestMethod.GET, produces = MediaType.APPLICATION_XML_VALUE)
	@ResponseBody
	public ResponseEntity<?> get(@PathVariable("code") String code)
			throws ClientProtocolException, IOException {
		System.out.println(code);
		Service service = servService.getService(code);
		String url = service.getDefine();
		HttpClient httpclient = new DefaultHttpClient();
		HttpGet get = new HttpGet(url + "?wsdl");
		HttpResponse response = httpclient.execute(get);
		String result = "";
		if (response.getStatusLine().getStatusCode() == HttpStatus.OK.value()) {
			result = EntityUtils.toString(response.getEntity());
			System.out.println(result);
			result = result.replaceAll(url,
					"http://127.0.0.1:8080/uip/api/esb/" + code);
		}
		return new ResponseEntity(result, HttpStatus.OK);
	}

	@RequestMapping(value = "/{code}", method = RequestMethod.POST, produces = MediaType.APPLICATION_XML_VALUE)
	@ResponseBody
	public ResponseEntity<?> post(@PathVariable("code") String code)
			throws ClientProtocolException, IOException {
		System.out.println(code);
		Service service = servService.getService(code);
		String url = service.getDefine();

		ServletRequestAttributes sra = (ServletRequestAttributes) (RequestContextHolder
				.getRequestAttributes());
		HttpServletRequest request = sra.getRequest();
		BufferedReader br = request.getReader();
		StringBuilder sb = new StringBuilder();
		while (true) {
			String tem = null;
			tem = br.readLine();
			if (tem == null) {
				break;
			} else {
				sb = sb.append("\n" + tem);
			}
		}
		String serviceId = UUID.randomUUID().toString();
		Message message = new Message();
		message.setServInstanceId(serviceId);
		message.setService(service);
		message.setFlag(2l);
		message.setFromIp(request.getRemoteAddr());
		message.setOrderId(1l);
		message.setCreateTime(new Date());
		message.setMessage(sb.toString());
		messageService.saveMessage(message);
		String result = SoapClient.createSoapClient().sendSoapRequest(url,
				sb.toString());
		Message message1 = new Message();
		message1.setServInstanceId(serviceId);
		message1.setService(service);
		message1.setFlag(2l);
		message1.setCreateTime(new Date());
		message1.setOrderId(2l);
		message1.setMessage(result);
		messageService.saveMessage(message1);
		return new ResponseEntity(result, HttpStatus.OK);
	}
}
