<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 등록</title>
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
   width:60px;
   }
   </style>
</head>
<body>
   <jsp:include page="/Header.jsp"/>
   <h1>게시판 등록</h1>
   <form action="add.do" method="post">
   <ul>
   <li>
   <label for="select">지점</label>
      <select id="select" name="select">
         <option value="0" ${board.select==0?"selected":""}>선택</option>
          <option value="1" ${board.select==1?"selected":""}>강남점</option>
         <option value="2" ${board.select==2?"selected":""}>종로점</option>
         <option value="3" ${board.select==3?"selected":""}>구로점</option>
      </select>
   </li>
   <li>
   <label for="name">작성자</label>
   <input id="name" name="name" type="text" size="50">
   </li>
   <li>
   <label for="title">제목</label>
   <input id="title" name="title" type="text" size="50">
   </li>
   <li><label for="content">내용</label>
   <textarea id="content" name="content" rows="5" cols="40"></textarea>
   </li>
   <li>
      <label for="reservation">예약 원하는 날짜</label>
   <input id="reservation" name="reservation" type="text" placeholder="예)2013-01-01">
   </li>
   </ul>
   
   <input type="submit" value="추가">
   <input type="reset" value="취소">
   </form>
   
</body>
</html>