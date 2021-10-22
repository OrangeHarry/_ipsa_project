<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review</title>
<style>
	ul {
		padding : 0;
	}
	li {
		list-style : none;
	}
	label {
		float : left;
		text-align : rigth;
		width : 60px;
	}
</style>
</head>
<body>
	<jsp:include page="/Header.jsp"/>
	<h1>Review</h1>
	<form action="update.do" method="post">
		<ul>
			<li>
				<label for="no">번호</label>
				<input type="text" id="no" name="no" size="5" value="${review.no }" readonly>
			</li>	
			<li>
				<label for="content">내용</label>
				<textarea id="content" name="content" placeholder="내용을 입력하세요" rows="5" cols="40">${review.content }</textarea>
			</li>
			<li>
				<label for="name">이름</label>
				<input type="text" id="name" name="name" size="50" value="${review.name }">
			</li>
			<li>
				<label for="branch">지점선택</label>
				<select id="branch" name="branch">
					<option value="0" ${review.branch==0?"selected":""}>강남점</option>
					<option value="1" ${review.branch==1?"selected":""}>종로점</option>
					<option value="2" ${review.branch==2?"selected":""}>구로점</option>
				</select>
			</li>
		</ul>
		<input type="submit" value="저장">
		<input type="button" value="삭제" onclick="location.href='delete.do?no=${review.no}'">
		<input type="button" value="취소" onclick="location.href='list.do'">
	</form>
	<jsp:include page="/Tail.jsp"/>
</body>
</html>