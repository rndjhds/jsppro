<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>numberFormat 태그 사용</title></head>
<body>
<!-- SimpleDateFormat클래스를 대체한다. -->
<c:set var="now" value="<%= new java.util.Date() %>" />
${now} <br>
<c:out value="${now}"/> <br>

<fmt:formatDate value="${now}" type="date" dateStyle="full" /> <br>
<fmt:formatDate value="${now}" type="date" dateStyle="short" /> <br>
<fmt:formatDate value="${now}" type="time" /> <br>
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" /> <br>
<fmt:formatDate value="${now}" pattern="z a h:mm" /> <br>

										<!-- SimpleDateFormat에서 쓴것과 비슷함. -->
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd a hh:mm:ss EEE"/> <br>
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss EEE"/>


</body>
</html>
