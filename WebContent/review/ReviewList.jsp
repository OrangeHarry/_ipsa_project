<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review</title>
</head>
<body>
	<jsp:include page="/Header.jsp"/>
	<h1>Review</h1>
	<p><a href="add.do">리뷰쓰기</a></p>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>지점명</th>
			<th>이름</th>
			<th>내용</th>
		<th>지점</th>
		<th>지점</th>
		</tr>
		<c:forEach var="review" items="${reviews }">
			<tr>
				<td>${review.no}</td>
				<c:if test="${review.branch == 0 }">
					<td>강남점</td>
				</c:if>
				<c:if test="${review.branch == 1 }">
					<td>종로점</td>
				</c:if>
				<c:if test="${review.branch == 2 }">
					<td>구로점</td>
				</c:if>
				<td><a href="update.do?no=${review.no }">${review.name }</a></td>
				<td>${review.content}</td>
				<td>${review.regDate }</td>
				<td><a href="delete.do?no=${review.no }">[삭제]</a></td>
			</tr>
		</c:forEach>
	</table>
	<jsp:include page="/Tail.jsp"/>
</body>
</html>