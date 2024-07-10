package utils;

import java.io.PrintWriter;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.jsp.JspWriter;

public class JSFunction {

	public static void alertLocation(String msg, String url, JspWriter out) {
		try {
			String script = "<script>"
										+ "	alert('" + msg + "');"
										+ "	location.href='" + url + "';"
										+ "</script>";
			out.print(script);
		} catch(Exception e) {}
	} // alertLocation
	
	
	// 메시지 알림창을 띄운 후 이전 페이지로 돌아감
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script = "<script>"
										+ "	alert('" + msg + "');"
										+ "	history.back();"
										+ "</script>";
			out.print(script);
		} catch(Exception e) {}
	} // alertBack
	
	
	//메시지 알림창을 띄운 후 location.href 에 저장된 URL로 이동
	public static void alertLocation(HttpServletResponse resp, String msg, String url, JspWriter out) {
		try {
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = resp.getWriter();
			String script = "<script>"
										+ "	alert('" + msg + "');"
										+ "	location.href='" + url + "';"
										+ "</script>";
			
			writer.print(script);
		} catch(Exception e) {}
	
	}
	
  //메시지 알림창을 띄운 후 이전 페이지로 돌아감
  	public static void alertBack(HttpServletResponse resp, String msg) {
  		try {
  			resp.setContentType("text/html; charset=UTF-8");
  			PrintWriter writer = resp.getWriter();
  			String script = "<script>"
  										+ "	alert('" + msg + "');"
  										+ "	history.back();"
  										+ "</script>";
  			
  			writer.print(script);
  		} catch(Exception e) {}
  	} // alertBack
	
			
			
} // class
