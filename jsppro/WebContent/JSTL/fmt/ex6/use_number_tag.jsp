<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>formatNumber 태그 사용</title></head>
<body>
<!-- 숫자 타입, 통화타입, 퍼센트 타입등과 같은 타입으로 출력이 가능하다. -->
<c:set var="price" value="10000" />
<fmt:formatNumber value="${price}" type="number" var="numberType" />
숫자: ${numberType} <br>

통화: <fmt:formatNumber value="${price}" type="currency" currencySymbol="$" /><br>

퍼센트: <fmt:formatNumber value="${price}" type="percent" groupingUsed="true" /> <br>
퍼센트: <fmt:formatNumber value="${price}" type="percent" groupingUsed="false" /> <br>

패턴: <fmt:formatNumber value="${price}" pattern="00000,000.00"/>

</body>
</html>
