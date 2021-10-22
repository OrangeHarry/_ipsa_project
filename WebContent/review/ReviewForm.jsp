<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review</title>
<style>
	ul{
		padding;0;
	}
	li{
	list-style:none;
	}
	label{
	float:left;
	text-align:right;
	width:100px;
	}
	
	</style>
</head>
<body>
	<jsp:include page="/Header.jsp"/>
	<h1>Review</h1>
	<form action="add.do" method="post">
	<ul>
	<li><label for="name">이름</label>
	<input id="name" name="name" type="text" placeholder="이름" size="50">
	</li>
	<li><label for="content">내용</label>
	<textarea id="content" name="content" rows="5" cols="40"></textarea>
	</li>
	<!-- <li><label for="RegDate">등록일</label>
	<input id="RegDate" name="RegDate" type="text" placeholder="예)2013-01-01">
	</li> -->
	<li>
				<label for="branch">지점선택</label>
				<select id="branch" name="branch">
					<option value="0" ${review.branch==0?"selected":""}>강남점</option>
					<option value="1" ${review.branch==1?"selected":""}>종로점</option>
					<option value="2" ${review.branch==2?"selected":""}>구로점</option>
				</select>
			</li>
	</ul>
	<div class="bt_wrap">
	<input type="submit" value="추가" >
	<input type="reset" value="취소">
	</div>
	</form>
	
</body>
</html>