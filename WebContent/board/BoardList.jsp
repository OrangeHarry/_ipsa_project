<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>

<body>
   <jsp:include page="/Header.jsp"/>
   <h1>게시판 목록</h1>
   <p><a href="add.do">새 글 작성</a></p>
   <table border="1">
      <tr>
         <th>번호</th>
         <th>지점</th>
         <th>작성자</th>
         <th>제목</th>
         <th>내용</th>
         <th>예약원하는 날짜</th>
         <th></th>
      </tr>
      <c:forEach var="board" items="${board }">  
		<tr>
            <td>${board.no}</td>
				<c:if test="${board.select == 1 }">
					<td>강남점</td>
				</c:if>
				<c:if test="${board.select == 2 }">
					<td>종로점</td>
				</c:if>
				<c:if test="${board.select == 3 }">
					<td>구로점</td>
				</c:if>
			<td>${board.name}</td>
            <td>${board.title}</td>
            <td>${board.content}</td>
            <td>${board.reservation}</td>
            <td><a href="delete.do?no=${board.no }">[삭제]</a></td>
         </tr>
      </c:forEach>
   </table>
   <jsp:include page="/Tail.jsp"/>
</body>
</html>