<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문 연습</title>
</head>
<body>

	<c:forEach var="i" begin="1" end="6">
		<h${i}>test</h${i}>
	</c:forEach>
	
</body>
</html>	