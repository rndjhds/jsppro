<%@ page contentType="text/html;charset=utf-8"%>
<% request.setCharacterEncoding("utf-8");%>

<HTML>
<HEAD>
<TITLE>표현언어의 사용예제2</TITLE>
</HEAD>

<BODY>

<H3>표현언어의 사용예제2 -파라미터값 처리</H3>
<P>
<FORM action="eLEx2.jsp" method="post">
   이름 : <input type="text" name="name" value="${param['name']}">
          <input type="submit" value="확인">
</FORM>

<P>
이름은 : <%=request.getParameter("name") %>	<br>
<!-- EL표현 언어로 출력-->
<!-- param은 EL표현언어의 기본객체 -->
이름은: ${param.name} 입니다. <!-- ${param.name}은 <%=request.getParameter("name")%>;와 같다.-->

</BODY>
</HTML>
