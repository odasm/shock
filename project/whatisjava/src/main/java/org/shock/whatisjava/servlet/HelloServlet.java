package org.shock.whatisjava.servlet;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.util.Hashtable;;

public class HelloServlet implements Servlet {

	public HelloServlet() {
		System.out.println("hahahahha");
	}

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	public void init(ServletConfig arg0) throws ServletException {
		System.out.println(this + "init(......)");
		// TODO Auto-generated method stub

	}

	//    
	public void service(ServletRequest arg0, ServletResponse arg1)
			throws ServletException, IOException {
		String str = "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:impl=\"http://impl.server.pf.ws.bj.oss.ztesoft.com/\">"
			+"   <soapenv:Header>"
			+"      <Esb>"
			+"         <Route>"
			+"            <Time>2012-03-19 13:33:53</Time>"
			+"            <EsbId>04643783361bad8f0136297286e40146</EsbId>"
			+"         </Route>"
			+"      </Esb>"
			+"   </soapenv:Header>"
			+"   <soapenv:Body>"
			+"      <impl:methodInvokeResponse>"
			+"         <return><![CDATA["
			+"<InterfaceMsg><DispatchOrderInfo><OtherInfo><IS_SUCCESS>9999</IS_SUCCESS><ErrorCode>9999</ErrorCode><ErrorDesc>ProductItemID:2008078005-2817没有可以操作的定单!</ErrorDesc></OtherInfo></DispatchOrderInfo></InterfaceMsg>]]></return>"
			+"      </impl:methodInvokeResponse>"
			+"   </soapenv:Body>"
			+"</soapenv:Envelope>";
		System.out.println(this + "service()");
		// TODO Auto-generated method stub
//		System.out.println(arg0.getLocalName());
		HttpServletRequest request = (HttpServletRequest) arg0;	
		System.out.println(arg0);
//		System.out.println(new String(parse(request)));
		PrintWriter out = arg1.getWriter();
		out.print(str);
		/*out.println("<html>");
		out.println("<head><title>Hello</title></head>");
		out.println("<body>");
		out.println("request.getRemoteAddr():" + request.getRemoteAddr()
				+ "<br/>");
		out.println("request.getHeader(\"remote.addr\"):"
				+ request.getHeader("remote.addr") + "<br/>");
		out.println("request.getHeader(\"X-Real-IP\"):"
				+ request.getHeader("X-Real-IP") + "<br/>");
		out.println("request.getHeader(\"X-Forwarded-For\"):"
				+ request.getHeader("X-Forwarded-For") + "<br/>");
		out.println("</body>");
		out.println("</html>");*/
	}
	
	private byte[] parse(HttpServletRequest request) throws IOException {

        final int NONE = 0;
        final int DATAHEADER = 1;
        final int FILEDATA = 2;
        final int FIELDDATA = 3;

        final int MXA_SEGSIZE = 1000 * 1024 * 10;//ÿ��������� 10M

        String contentType = request.getContentType();// ������Ϣ����
        String fieldname = ""; // �?������
        String fieldvalue = ""; // �?���ֵ
        String filename = ""; // �ļ���
        String boundary = ""; // �ֽ��
        String lastboundary = ""; // �����
        String filePath = "";
        Hashtable<String, String> formfields = new Hashtable<String, String>();
        int filesize = 0; // �ļ�����

        int pos = contentType.indexOf("boundary=");

        if (pos != -1) { // ȡ�÷ֽ��ͽ����
            pos += "boundary=".length();
            boundary = "--" + contentType.substring(pos);
            lastboundary = boundary + "--";
        }
        int state = NONE;
        // �õ����������reqbuf
        DataInputStream in = new DataInputStream(request.getInputStream());
        // ��������Ϣ��ʵ���͵�b����
        int totalBytes = request.getContentLength();
        String message = "";
        if (totalBytes > MXA_SEGSIZE) {//ÿ�����10mʱ
            message = "Each batch of data can not be larger than " + MXA_SEGSIZE / (1000 * 1024)
                    + "M";
            return null;
        }
        byte[] b = new byte[totalBytes];
        in.readFully(b);
        in.close();
        String reqContent = new String(b, "UTF-8");//
        BufferedReader reqbuf = new BufferedReader(new StringReader(reqContent));

        boolean flag = true;
        int i = 0;
        while (flag == true) {
            String s = reqbuf.readLine();
            if ((s == null) || (s.equals(lastboundary)))
                break;

            switch (state) {
                case NONE:
                    if (s.startsWith(boundary)) {
                        state = DATAHEADER;
                        i += 1;
                    }
                    break;
                case DATAHEADER:
                    pos = s.indexOf("filename=");
                    if (pos == -1) { // ���?������ֽ����4
                        pos = s.indexOf("name=");
                        pos += "name=".length() + 1;
                        s = s.substring(pos);
                        int l = s.length();
                        s = s.substring(0, l - 1);
                        fieldname = s;
                        state = FIELDDATA;
                    } else { // ���ļ�������4
                        String temp = s;
                        pos = s.indexOf("filename=");
                        pos += "filename=".length() + 1;
                        s = s.substring(pos);
                        int l = s.length();
                        s = s.substring(0, l - 1);// ȥ������Ǹ���š�
                        filePath = s;
                        pos = s.lastIndexOf("\\");
                        s = s.substring(pos + 1);
                        filename = s;
                        // ���ֽ�������ȡ���ļ�����
                        pos = byteIndexOf(b, temp, 0);
                        b = subBytes(b, pos + temp.getBytes().length + 2, b.length);// ȥ��ǰ��Ĳ���
                        int n = 0;
                        /**
                         * ����boundary������ Content-Disposition: form-data; name="bin";
                         * filename="12.pdf" Content-Type: application/octet-stream
                         * Content-Transfer-Encoding: binary ���ַ�
                         */
                        while ((s = reqbuf.readLine()) != null) {
                            if (n == 1)
                                break;
                            if (s.equals(""))
                                n++;

                            b = subBytes(b, s.getBytes().length + 2, b.length);
                        }
                        pos = byteIndexOf(b, boundary, 0);
                        if (pos != -1)
                            b = subBytes(b, 0, pos - 1);

                        filesize = b.length - 1;
                        formfields.put("filesize", String.valueOf(filesize));
                        state = FILEDATA;
                    }
                    break;
                case FIELDDATA:
                    s = reqbuf.readLine();
                    fieldvalue = s;
                    formfields.put(fieldname, fieldvalue);
                    state = NONE;
                    break;
                case FILEDATA:
                    while ((!s.startsWith(boundary)) && (!s.startsWith(lastboundary))) {
                        s = reqbuf.readLine();
                        if (s.startsWith(boundary)) {
                            state = DATAHEADER;
                            break;
                        }
                    }
                    break;
            }
        }
        return b;

    }
	
	  // �ֽ������е�INDEXOF������STRING���е�INDEXOF����
    public static int byteIndexOf(byte[] b, String s, int start) {
        return byteIndexOf(b, s.getBytes(), start);
    }

    // �ֽ������е�INDEXOF������STRING���е�INDEXOF����
    public static int byteIndexOf(byte[] b, byte[] s, int start) {
        int i;
        if (s.length == 0) {
            return 0;
        }
        int max = b.length - s.length;
        if (max < 0)
            return -1;
        if (start > max)
            return -1;
        if (start < 0)
            start = 0;
        search: for (i = start; i <= max; i++) {
            if (b[i] == s[0]) {
                int k = 1;
                while (k < s.length) {
                    if (b[k + i] != s[k]) {
                        continue search;
                    }
                    k++;
                }
                return i;
            }
        }
        return -1;
    }

    // ���ڴ�һ���ֽ���������ȡһ���ֽ�����
    public static byte[] subBytes(byte[] b, int from, int end) {
        byte[] result = new byte[end - from];
        System.arraycopy(b, from, result, 0, end - from);
        return result;
    }

    // ���ڴ�һ���ֽ���������ȡһ���ַ�
    public static String subBytesString(byte[] b, int from, int end) {
        return new String(subBytes(b, from, end));
    }
}
