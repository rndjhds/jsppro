<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>forTokens 태그</title></head>
<body>
<!-- 구분자를 사용하여 파싱하는 태그 (String의 split, StringTokenizer) -->
콤마와 점을 구분자로 사용:<br>
<c:forTokens var="token" 
             items="빨강색,주황색.노란색.초록색,파랑색,남색.보라색"
             delims=",.">
${token} 
</c:forTokens>

</body>
</html>
