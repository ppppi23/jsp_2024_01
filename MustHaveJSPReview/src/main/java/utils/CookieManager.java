package utils;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieManager {

	// 지정한 이름, 값, 유지 기간 조건으로 새로운 쿠키를 생성
	public static void makeCookie(HttpServletResponse response, String cName, String cValue, int cTime) {
		
		Cookie cookie = new Cookie(cName, cValue);
		cookie.setPath("/");
		cookie.setMaxAge(cTime);
		response.addCookie(cookie);
	}
	
	// 지정한 이름의 쿠키를 찾아 그 값을 반환함
	public static String readCookie(HttpServletRequest request, String cName) {
		String cookieValue = "";
		
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
  			String cookieName = c.getName();
  			if(cookieName.equals(cName)) {
  				cookieValue = c.getValue();
  			}
			}
		}
		return cookieValue;
	}
	
	// 지정한 이름의 쿠키를 삭제함
	public static void deleteCookie(HttpServletResponse response, String cName) {
		makeCookie(response, cName, "", 0);
		
	}
	
	
}
