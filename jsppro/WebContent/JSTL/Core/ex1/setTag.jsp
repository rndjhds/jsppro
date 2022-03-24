<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- taglib은 사용자정의 태그어 -->
<!-- 코어태그를 사용하기 위해서 prefix="c"설정 -->
<!-- uri="http://java.sun.com/jsp/jstl/core"도 설정해줘야 한다. -->

<c:set var="num1" value="${20}" />
<c:set var="num2">
10.5
</c:set>
<c:set var="today" value="<%= new java.util.Date() %>" />

<html>
	<head>
		<title>set 태그와 remove 태그</title>
	</head>

	<body>
		<%
			String str = "JSP변수";
			request.setAttribute("st", str); 
		
		%>
		<!-- 표현식언어에 쓸수 있는 것은 JSTL에서 코어태그로 생성된변수나 공유가된 변수만 입력할수 있다. -->
		변수 : str1 = <%=str %> <br>	<!-- JSP변수 -->
		변수 : str2 = ${str} <br>	<!-- 출력안됨 : 일반적인 JSP변수는 사용 불가능-->
		변수 : str3 = ${st} <br>	<!-- JSP변수 : 공유된 변수는 사용 가능-->
		<%
			String s = (String)request.getAttribute("st");
		%>
		변수 : str4 = <%=s %> <br>
		
		변수 num1 = ${num1} <br>
		변수 num2 = ${num2} <br>
		num1 + num2 = ${num1 + num2} <br>
		오늘은 ${today} 입니다.

		<c:remove var="num1" scope="page" />

		<p>
		삭제한 후의 num1 = ${num1} <br>
		삭제한 후의 num1 + num2 = ${num1 + num2}
	</body>
</html>
