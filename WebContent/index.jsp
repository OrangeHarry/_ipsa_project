<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
   Hyperspace by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>


<head>
   <title>IPSA 공유 오피스 </title>
   <meta charset="utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
   <link rel="stylesheet" href="css/main.css" />
   <noscript>
      <link rel="stylesheet" href="css/noscript.css" />
   </noscript>
   <link rel="stylesheet" href="css/font-stylesheet.css">
   <style>
      #sidebar {
         background-color: black;
      }

      .preview {
         position: relative;
         right: 0;
         bottom: 0;
         top: 0;
         left: 0;
         min-width: 100%;
         min-height: 100%;
         width: 100%;
         /* height: 100%; */
         z-index: -100;
         /*background: url(polina.jpg) no-repeat;*/
         background-size: cover;
      }


      #one {
         background-image: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url("images/logo.png");
         background-repeat: no-repeat;
         background-position: center;
         /* opacity: 0.3; */
      }

      #three {
         background-image: linear-gradient(rgba(255, 255, 255, 0.8), rgba(255, 255, 255, 0.8)), url("images/pic01.jpg");
         background-size: 100%;
      }

      #logo {
         background-image: url('images/logo.png');
         background-repeat: no-repeat;
         background-size: 105px;
         background-position: top center;
      }

      #loginbutton {
         background-position: bottom;
      }

      .overlay {
         text-align: center;
         position: absolute;
         height: 50%;
         width: 100%;
         z-index: 2;

      }
   </style>
</head>

<body class="is-preload">

   <!-- Sidebar 사이드 메뉴-->
   <section id="sidebar">
      <div class="inner" id="logo">
         <nav>
            <ul>
               <li><a href="#intro">IPSA 홈</a></li>
               <li><a href="#one">IPSA 소개</a></li>
               <li><a href="#two">지점 상세</a></li>
               <li><a href="#three">서비스 오피스</a></li>
               <li><a href="board.html">자주 묻는 질문</a></li>
               <!--승인님 페이지 연결-->

            </ul>
         </nav>
   <c:if test="${empty Member or empty Member.email }">
      <a id="loginbutton" class="button scrolly" href="<%=request.getContextPath() %>loginpage.jsp">로그인/회원가입</a>
   </c:if>
   
   <c:if test="${!empty Member and !empty Member.email }">

      <a  class="button scrolly" href="<%=request.getContextPath() %>write7.jsp">마이페이지</a>   
      <a  class="button scrolly"  href="<%=request.getContextPath() %>/auth/logout.do">로그아웃</a>   
   </c:if>

      </div>
   </section>

   <!-- Wrapper -->
   <div id="wrapper">

      <!-- IPSA 홈 -->
      <div class="row">
         <section id="intro" class="wrapper style1 fullscreen fade-up col-lg-12">
            <video class="preview" autoplay loop muted style="z-index: 1;" width="100%">
               <source src="intro.mp4" type="video/mp4">

            </video>
            <div class="overlay">
               <h1 style="font-size: 90px">IPSA</h1>
               <!--<p style="background-color: rgba(0,0,0,0.3);">프리미엄 공유 오피스</p>-->
               <a href="#one" class="button scrolly"> IPSA 소개 </a>
               <!--<ul class="actions">
                           <li></li>
                        </ul>-->

            </div>
            </video>
         </section>
      </div>
      <!-- 입사 소개 -->
      <div class="row" style="position: relative; top:30px">
         <section id="one" class="wrapper style3 fade-up col-lg-12">
            <div class="inner" style="text-align: center;">
               <h2>IPSA 소개 </h2>
               <p>대기업부터 스타트업까지, 팀의 모두가 능력을 발휘할 수 있는 최적의 업무공간을 찾아보세요.</p>
               <div class="features">
                  <section>
                     <span class="icon solid major fa-code"></span>
                     <h3>내가 설계하는 업무공간</h3>
                     <p>우리 회사만의 업무공간을 설계해보세요! 필요한 사무 가구를 인원수에 맞춰 제공하며
                        회사의 독립공간을 직접 설계하여 사용할 수 있습니다.
                     </p>
                  </section>
                  <section>
                     <span class="icon solid major fa-lock"></span>
                     <h3>보안성</h3>
                     <p>프리미엄 공유 오피스 IPSA는 동종 업계 최고의 보안성을 자랑합니다.</p>
                  </section>
                  <section>
                     <span class="icon solid major fa-cog"></span>
                     <h3>사무실 시설 관리 서비스</h3>
                     <p>관리비, 냉난방, 청소, 프린트, 인터넷, 보안설비, 사무 가구 구매 등 시설 관리 서비스를 무상 제공합니다.</p>
                  </section>
                  <section>
                     <span class="icon solid major fa-desktop"></span>
                     <h3>24시간 상담 및 모니터링</h3>
                     <p> IPSA에서는 24시간 상담 및 모니터링으로 고객의 니즈에 즉각 피드백을 제공합니다.</p>
                  </section>
                  <section>
                     <span class="icon solid major fa-link"></span>
                     <h3>입주사 네트워킹</h3>
                     <p>다양한 입주사 간의 네트워킹 서비스를 제공합니다. 협력으로 더 큰 가치를 창출해 보세요!</p>
                  </section>
                  <section>
                     <span class="icon major fa-gem"></span>
                     <h3>프리미엄급 업무 시설 제공</h3>
                     <p>IPSA는 최고급 프리미엄 업무시설과, 필라테스 존, 어린이 집, 수영장, 직원식당을 제공합니다.</p>
                  </section>
               </div>
            </div>
         </section>
      </div>
      <!-- 지점 상세 -->
      <section id="two" class="wrapper style2 spotlights">
         <section>
            <a href="#" class="image" style="background-image: url('images/pic01.jpg'); background-position: center center; z-index=1;">
               <c:if test="${empty Member or empty Member.email }">
               <img src="images/pic01.jpg" alt="" data-position="center center" />             
                  </c:if>
         </a>
            <div class="content">
               <div class="inner">
                  <h2>강남 지점</h2>
                  <p>강남역 도보 2분 <BR>최상의 입지조건 IPSA 강남지점을 만나보세요.</p>
                  <ul class="actions">
                     <li><a href="/review/list3.do" class="button">지점 소개</a></li>
                  </ul>
               </div>
            </div>
         </section>
         <section>
            <a href="#" class="image" style="background-image: url('images/pic02.jpg'); background-position: center center;">
               <c:if test="${empty Member or empty Member.email }">
               <img src="images/pic02.jpg" alt="" data-position="center center" />             
                  </c:if>
            <!--<img src="images/pic02.jpg" alt="" data-position="top center" />  --></a>
            <div class="content">
               <div class="inner">
                  <h2>종로 지점</h2>
                  <p>서울의 경제적 중심지 종로<br>경제상권과 의류상권의 중심지인 종로에서 IPSA와 함께 여러분의 꿈을 키워가세요 </p>
                  <ul class="actions">
                     <li><a href="/review/list2.do" class="button">지점 소개</a></li>
                  </ul>
               </div>
            </div>
         </section>
         <section>
            <a href="#" class="image" style="background-image: url('images/pic03.jpg'); background-position: center center;">
               <c:if test="${empty Member or empty Member.email }">
               <img src="images/pic03.jpg" alt="" data-position="center center" />             
                  </c:if>
            <!--<img src="images/pic03.jpg" alt="" data-position="25% 25%" />  --></a>
            <div class="content">
               <div class="inner">
                  <h2>구로 지점</h2>
                  <p>구로디지털단지역 도보 2분<br>IT 성지이자 창조경제의 본산인 서울디지털단지(G밸리)에서 IPSA와 함께 성장하세요</p>
                  <ul class="actions">
                     <li><a href="/review/list4.do" class="button">지점 소개</a></li>
                  </ul>
               </div>
            </div>
         </section>
      </section>



      <!-- 서비스오피스 -->
      <section id="three" class="wrapper style1 fade-up" style="background-color: whitesmoke;">
         <div class="inner" style="text-align: center; color: black;">
            <h2 style="color: black;">서비스 오피스</h2>
            <p>IPSA 와 함께하고 있는 친구들을 소개합니다.</p>
            <div class="row">
               <div class="col-md-3">
                  <a href="https://www.daangn.com/"><img src="images/당근마켓1.png"
                        style="width: 120px; height: 120px; margin-top: 40px;"></a>
               </div>
               <div class="col-md-3">
                  <a href="https://www.tistory.com/"><img src="images/티스토리.png"
                        style="width: 200px;  margin-top: 70px;"></a>
               </div>
               <div class="col-md-3">
                  <a href="http://torder.io/"><img src="images/티오더.png"
                        style="width: 200px; margin-top: 15px;"></a>
               </div>
               <div class="col-md-3">
                  <a href="https://ohou.se/"><img src="images/오늘의집.png"
                        style=" height: 113px; margin-top: 40px;"></a>
               </div>
            </div>
            <div class="row" style="margin-top: 30px;">
               <div class="col-md-3">
                  <a href="https://a-bly.com/"><img src="images/에이블리.png"
                        style="width: 200px; height: 200px;"></a>
               </div>
               <div class="col-md-3">
                  <a href="https://www.wadiz.kr/web/main"><img src="images/와디즈.png"
                        style="width: 200px; height: 200px;"></a>
               </div>
               <div class="col-md-3">
                  <a href="https://www.musinsa.com/"><img src="images/무신사.png"
                        style="width: 230px; margin-top: 17px;"></a>
               </div>
               <div class="col-md-3">
                  <a href="https://www.ggumim.co.kr/"><img src="images/집꾸미기.png"
                        style=" height: 205px; margin-left: 35px"></a>
               </div>
            </div>


         </div>
   </div>
   <!--<div class="inner">
                     <h2>자주 묻는 질문</h2>
                     <p>Phasellus convallis elit id ullamcorper pulvinar. Duis aliquam turpis mauris, eu ultricies erat malesuada quis. Aliquam dapibus, lacus eget hendrerit bibendum, urna est aliquam sem, sit amet imperdiet est velit quis lorem.</p>
                     <div class="split style1">
                        <section>
                           <form method="post" action="#">
                              <div class="fields">
                                 <div class="field half">
                                    <label for="name">Name</label>
                                    <input type="text" name="name" id="name" />
                                 </div>
                                 <div class="field half">
                                    <label for="email">Email</label>
                                    <input type="text" name="email" id="email" />
                                 </div>
                                 <div class="field">
                                    <label for="message">Message</label>
                                    <textarea name="message" id="message" rows="5"></textarea>
                                 </div>
                              </div>
                              <ul class="actions">
                                 <li><a href="" class="button submit">Send Message</a></li>
                              </ul>
                           </form>
                        </section>
                        <section>
                           <ul class="contact">
                              <li>
                                 <h3>Address</h3>
                                 <span>12345 Somewhere Road #654<br />
                                 Nashville, TN 00000-0000<br />
                                 USA</span>
                              </li>
                              <li>
                                 <h3>Email</h3>
                                 <a href="#">user@untitled.tld</a>
                              </li>
                              <li>
                                 <h3>Phone</h3>
                                 <span>(000) 000-0000</span>
                              </li>
                              <li>
                                 <h3>Social</h3>
                                 <ul class="icons">
                                    <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                                    <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                                    <li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
                                    <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                                    <li><a href="#" class="icon brands fa-linkedin-in"><span class="label">LinkedIn</span></a></li>
                                 </ul>
                              </li>
                           </ul>
                        </section>
                     </div>
                  </div>-->

   </section>

   </div>

   <!-- Footer -->
   <footer class="footer" style="padding-bottom: 0px;">
      <div class="row">
         <div class="col-md-3 info-big">
            <a href="index.jsp">
               <img src="images/logo.png" style="height: 150px;">
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

   <!-- Scripts -->
   <script src="js/jquery.min.js"></script>
   <script src="js/jquery.scrollex.min.js"></script>
   <script src="js/jquery.scrolly.min.js"></script>
   <script src="js/browser.min.js"></script>
   <script src="js/breakpoints.min.js"></script>
   <script src="js/util.js"></script>
   <script src="js/main.js"></script>

</body>

</html>