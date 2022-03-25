<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- if태그는 if~else if~elesif가 없다. -->
<c:if test="true">	<%-- if태그로 test=""안에 값이 참이면 안에 값이 실행된다. --%>
	무조건 실행 <br>
</c:if>

<c:if test="${param.name == 'toto'}"> <%-- param.name = request.getParameter("name") --%>
	당신의 이름은 ${param.name }입니다. <br>
</c:if>

<c:if test="${param.age >= 20}"> <%-- param.age = request.getParameter("age") --%>
	당신의 나이는 20세 이상입니다. <br>
</c:if>
