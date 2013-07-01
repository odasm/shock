package com.ustcinfo.uip.soap;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HTTP;
import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

/**
 * WebService客户端调用通用方法，通过HttpClient发送SOAP报文请求，获取请求响应报文
 * 
 * @since TP-NEOP 1.0
 * @version 1.0 2011-5-5
 * @author ycxiong
 * @since 2011-6-12 返回的xml，如果包含了<?xml...>则将其替换为""
 */
public class SoapClient {
	private static final Logger logger = Logger.getLogger(SoapClient.class);
	public static final int DEFAULT_CONN_TIMEOUT = 10;
	public static final int DEFAULT_READ_TIMEOUT = 30;

	private HttpClient httpClient;
	private HttpParams httpParams;

	public SoapClient(HttpClient client) {
		this.httpClient = client;
		this.httpParams = httpClient.getParams();
	}

	/**
	 * 创建默认的SoapClient实例，连接超时=5秒，读取超时=5秒
	 * 
	 * @return SoapClient
	 */
	public static SoapClient createSoapClient() {
		return createSoapClient(DEFAULT_CONN_TIMEOUT, DEFAULT_READ_TIMEOUT);
	}

	/**
	 * 创建SoapClient实例
	 * 
	 * @param connTimeout
	 *            连接超时， 单位：秒
	 * @param readTimeout
	 *            读取超时， 单位：秒
	 * @return SoapClient
	 */
	public static SoapClient createSoapClient(int connTimeout, int readTimeout) {
		HttpClient httpClient = createHttpClient(connTimeout, readTimeout);
		return new SoapClient(httpClient);
	}

	public static SoapClient createSoapClient(HttpClient httpClient) {
		return new SoapClient(httpClient);
	}

	public void closeConnection() {
		if (httpClient != null) {
			httpClient.getConnectionManager().shutdown();
			httpClient = null;
		}
	}

	/**
	 * 创建HttpClient实例。 HttpClient连接超时时间为1000，读取数据超时时间为1000
	 * 
	 * @param connTimeout
	 *            连接超时， 单位：秒
	 * @param readTimeout
	 *            读取超时， 单位：秒
	 */
	public static HttpClient createHttpClient(int connTimeout, int readTimeout) {
		DefaultHttpClient httpClient = new DefaultHttpClient();
		HttpParams httpParams = httpClient.getParams();
		HttpConnectionParams.setConnectionTimeout(httpParams,
				connTimeout * 1000);
		HttpConnectionParams.setSoTimeout(httpParams, readTimeout * 1000);
		return httpClient;
	}

	public static HttpClient createHttpClient(HttpParams httpParams) {
		DefaultHttpClient httpClient = new DefaultHttpClient(httpParams);
		return httpClient;
	}

	/**
	 * WebSerice客户端发送SOAP报文请求，返回请求响应报文，报文格式为字符串 默认采用UTF-8编码格式
	 * 
	 * @param uri
	 *            WebSerice请求服务端地址
	 * @param soapRequestMsg
	 *            SOAP请求报文
	 * @return 返回SOAP响应报文
	 * @throws IOException
	 */
	public String sendSoapRequest(String uri, String soapRequestMsg)
			throws IOException, ConnectTimeoutException {
		logger.info("http接口地址为：" + uri);
		logger.info("http报文为：" + soapRequestMsg);
		return sendSoapRequest(uri, soapRequestMsg, HTTP.UTF_8);
	}

	public String sendSoapRequest(String uri, String soapRequestMsg,
			String charset) throws IOException, ConnectTimeoutException {
		if (uri == null || soapRequestMsg == null) {
			throw new IllegalArgumentException("uri or soapRequestMsg is null");
		}

		HttpPost httpPost = new HttpPost(uri);
		httpPost.addHeader("Content-Type", "text/xml; charset=utf-8");
		httpPost.addHeader("SOAPAction", "");
		HttpEntity entity = new StringEntity(soapRequestMsg, charset);
		httpPost.setEntity(entity);

		ResponseHandler<String> responseHandler = new BasicResponseHandler();
		String responseBody = getHttpClient()
				.execute(httpPost, responseHandler);
		// return extractResponse(responseBody);
		return responseBody;
	}

	/**
	 * 从返回的Soap应答中提取报告
	 * 
	 * @param envelopeResponse
	 * @return 应答报文
	 */
	@SuppressWarnings("unchecked")
	public String extractResponse(String envelopeResponse) {
		Document doc = null;
		try {
			doc = DocumentHelper.parseText(envelopeResponse);
		} catch (DocumentException e) {
			logger.error("Soap响应格式非法" + e);
			return envelopeResponse;
		}

		// 由于返回的报文会有命名空间，直接使用xPath无法定位，采用单个元素定位法
		// http://licg1234.blog.163.com/blog/static/1390823332011369483630/
		Element elemEnvelope = doc.getRootElement();
		Element elemBody = elemEnvelope.element("Body");
		if (elemBody != null) {
			List<Element> list = elemBody.elements();
			for (Element elem : list) {
				Element elemReturn = elem.element("return");
				if (elemReturn != null) {
					// 如果是叶子节点，表示接口返回的类型为字符串
					if (elemReturn.isTextOnly()) {
						return elemReturn.getText();
					} else {
						return elemReturn.asXML();
					}
				} else {
					return elem.asXML();
				}
			}
			// 不确定是否返回return，如果没有子结点，则直接返回Body结点
			// .replace("&gt;", ">").replace("&lt;", "<").replace("&quot;",
			// "\"").replace("<?xml version=\"1.0\" encoding=\"UTF-8\"?>", "")
			return elemBody.asXML();
		}
		return envelopeResponse;
	}

	/**
	 * @return the httpClient
	 */
	public HttpClient getHttpClient() {
		if (httpClient == null) {
			httpClient = createHttpClient(httpParams);
		}
		return httpClient;
	}

	/**
	 * @param httpClient
	 *            the httpClient to set
	 */
	public void setHttpClient(HttpClient httpClient) {
		this.httpClient = httpClient;
	}

	public static void main(String[] args) throws Exception {
		StringBuilder sb = new StringBuilder();
		String str = null;
		BufferedReader br = new BufferedReader(new InputStreamReader(
				new FileInputStream("E:\\JX_INAS\\2.txt")));
		while ((str = br.readLine()) != null) {
			sb.append(str);
			sb.append("\n");
		}
		System.out.println("sb=" + sb.toString());
		String cmd = sb.toString();
		// String str1 = "<soapenv:Envelope><soapenv:Header><m:MessageID
		// >123468</m:MessageID></soapenv:Header></soapenv:Envelope>";
		String url = "http://134.224.97.159:8080/spg";
		SoapClient soapClient = SoapClient.createSoapClient(1000, 1000);
		System.out.println("--------");
		String soapResponse = soapClient.sendSoapRequest(url, cmd);
		System.out.println("receive a response:" + soapResponse);
	}
}
