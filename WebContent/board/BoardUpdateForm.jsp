<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>게시판 수정</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/css.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/serviceoffice_stylesheet.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/serviceoffice_style.js">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-stylesheet.css">
</head>

    
<body>
    <header id="header">
        <div class="wrap_group">
            <div>
                <a href="<%=request.getContextPath()%>/index.jsp">
                    <h1>IPSA</h1>
                </a>
            </div>
            <div class="navbar_menu">
              <ul class="top_navbar">
                    <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/write7.jsp'"><a
                        href="#">마이페이지</a></div>
                    <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/member/update.do'"><a
                            href="#">회원정보 수정</a></div>
                    <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/board/add.do'"><a
                            href="#">문의하기</a></div>
                            <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/board/list.do'"><a
                                href="#">문의내역</a></div>
                            <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/review/add.do'"><a
                                href="#">리뷰하기</a></div>
                                <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/review/list.do'"><a
                                    href="#">리뷰내역</a></div>
                </ul>
            </div>
        </div>
    </header>

        <div class="board_title">
            <strong>나의 문의 내역</strong>
        </div>
      <form action="update.do" method="post">
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="info">
                    <dl>
                        <dt>이름</dt>
                        <dd><input type="text" id="name" name="name" value="${board.name }"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" id="title" name="title" value="${board.title }"></dd>
                    </dl>
                </div>
                    <div class="info">
                    <dl>
                        <dt>희망 날짜</dt>
                        <dd><input type="text" id="reservation" name="reservation" value="${board.reservation }"></dd>
                    </dl>
               <dl>
                  <dt>지점 선택</dt>
                  <dd>
                  <select id="select" name="select" style="height:50px; width:80px; font-size:20px">
                     <option value="0" ${board.select==0?"selected":""}>선택</option>
                     <option value="1" ${board.select==1?"selected":""}>강남점</option>
                     <option value="2" ${board.select==2?"selected":""}>종로점</option>
                     <option value="3" ${board.select==3?"selected":""}>구로점</option>
                  </select>
                  </dd>
               </dl>
            </div>
                        <div class="cont">
                            <textarea id="content" name="content">${board.content }</textarea>
                        </div>
          
            <div class="bt_wrap">
             <!--<input type="submit" value="수정">-->
                 <input type="reset" value="삭제" onclick="location.href='delete.do?no=${board.no}'">
                <input type="reset" value="취소" onclick="location.href='list.do'">    
            </div>
        </div>
    </div>
    </form>
    <footer class="footer" style="padding-bottom: 0px;">
        <div class="row">
            <div class="col-md-3 info-big">
                <a href="index.jsp">
                    <img src="<%=request.getContextPath()%>/images/logo.png" style="height: 150px;">
                </a>
            </div>
            <div class="col-md-5">
                <h2><strong>We support your success</strong></h2>
                <p></p>
                <p style="font-size: large;">Office IPSA where you can focus on your work. We provide the best work
                    environment.
                    Join us to go higher. It will be the most wonderful experience of your life. thank you.</p>
            </div>
            <div class="col-md-3" style="text-align: left; font-size: 
            medium;">
                <p><strong>IPSA(주) | 대표자 : 양승인</strong></p>
                <p>
                    사업자등록번호 : 123-4567-89<br>
                    서울특별시 강남구 역삼동 819-3 삼오빌딩 5층<br>
                    강남점 | 구로점 | 종로점<br>
                    전화 : 02-333-4445<br>
                    이메일 : hhm12345@naver.com
                </p>
            </div>
    </footer>
</body>

</html>