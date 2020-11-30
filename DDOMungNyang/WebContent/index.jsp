<%@ page import="com.login.dto.LoginDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Dopetrope by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>DDO:MUNGNYANG</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">
			<!-- 로그인/회원가입 버튼 -->
			<section id="starter">
			<div id="menu">
<%
   LoginDTO entity = (LoginDTO)session.getAttribute("logOK");
   if(entity == null)
   {
%>
				<button id="login_btn" onclick="location.href='/bbs/login/login.jsp' ">로그인</button>
				<button id="register_btn" onclick="location.href='/bbs/login/register.jsp' ">회원가입</button>
<%
   }else{
%>
				<button id="logout_btn">로그아웃</button>
				<button id="profile_btn">내정보</button>
<%                         
   }
%>
				</div>
			 </section>
				
		
			<!-- Header -->
				<section id="header">
					
					<!-- Logo -->
						<h1><a href="/bbs/index.jsp">DDO:MUNGNYANG</a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="/bbs/index.jsp">ABOUT US</a></li>
								<li>
									<a href="dog.html">강아지분양</a>
									<!-- <ul>
										<li><a href="#">Lorem ipsum dolor</a></li>
										<li><a href="#">Magna phasellus</a></li>
										<li><a href="#">Etiam dolore nisl</a></li>
										<li>
											<a href="#">Phasellus consequat</a>
											<ul>
												<li><a href="#">Magna phasellus</a></li>
												<li><a href="#">Etiam dolore nisl</a></li>
												<li><a href="#">Veroeros feugiat</a></li>
												<li><a href="#">Nisl sed aliquam</a></li>
												<li><a href="#">Dolore adipiscing</a></li>
											</ul>
										</li>
										<li><a href="#">Veroeros feugiat</a></li>
									</ul> -->
								</li>
								<li><a href="cat.html">고양이 분양</a></li>
								<li><a href="abandoned.html">유기동물 분양</a></li>
								<li><a href="service.html">서비스</a></li>
								<li><a href="qna.html">Q&A</a></li>
							</ul>
						</nav>

					<!-- Banner -->
						<section id="banner">
							<header>
								
								
							</header>
						</section>

         <!-- Main -->
            <section id="main">
               <div class="container">
                  <div class="row">
                     <div class="col-12">
                        <!-- Blog -->
                           <section>
                              <header class="major">
                                 <h2>또멍냥</h2>
                              </header>
                              <div class="row">
                                 <div class="col-6 col-12-small">
                                    <section class="box">
                                       <a href="#" class="image featured"><img src="images/event.jpg" alt="" /></a>
                                       <header>
                                          <h3>또멍냥의 겨울맞이 이벤트</h3>
                                          <p>2020년 연말을 또멍냥과 함께</p>
                                       </header>
                                       <p>또멍냥에서 반려동물 입양하시는 모든분들께 반려견의 건강을 위한 덴티껌과 반려묘의 피부를 위한 간식 5종세트를 무료로드리고 있습니다. 연말연시 반려동물과 따뜻하게 보내시라고 추첨을 통하여 "코타츠"를 드립니다~ 많은참여 부탁드려요</p>
                                       <footer>
                                          <ul class="actions">
                                             <li><a href="#" class="button icon solid fa-file-alt">Continue Reading</a></li>
                                             <li><a href="#" class="button alt icon solid fa-comment">33 comments</a></li>
                                          </ul>
                                       </footer>
                                    </section>
                                 </div>
                                 <div class="col-6 col-12-small">
                                    <section class="box">
                                       <a href="#" class="image featured"><img src="images/reward.jpg" alt="" /></a>
                                       <header>
                                          <h3>반려동물분양사이트 선호도 1위</h3>
                                          <p>"또멍냥" 올해도 반려동물분양사이트 선호도 1위를 차지</p>
                                       </header>
                                       <p>제 200회 글로벌 분양 대상 또멍냥이 반려동물 분양사이트 부분 선호도1위를 차지했습니다. 5년연속 선호도 1위를 달성하여 반려동물분양사이트 부문 1위를 놓치지않으며 고객님들의 열화와 같은 성원에 늘 감사드립니다. 앞으로도 반려동물의 행복과 건강을 위해 노력하는 또멍냥이 되도록 노력하겠습니다.   </p>
                                       <footer>
                                          <ul class="actions">
                                             <li><a href="#" class="button icon solid fa-file-alt">Continue Reading</a></li>
                                             <li><a href="#" class="button alt icon solid fa-comment">33 comments</a></li>
                                          </ul>
                                       </footer>
                                    </section>
                                 </div>
                              </div>
                           </section>

                     </div>
                  </div>
               </div>
            </section>


         <!-- Footer -->
            <section id="footer">
               <div class="container">
                  <div class="row">
                     <div class="col-8 col-12-medium">
                        <section id ="footer">
                           <header>
                              <h2>Blandit nisl adipiscing</h2>
                           </header>
                           <ul class="dates">
                              <li>
                                 <span class="date">Jan <strong>27</strong></span>
                                 <h3><a href="#">Lorem dolor sit amet veroeros</a></h3>
                                 <p>Ipsum dolor sit amet veroeros consequat blandit ipsum phasellus lorem consequat etiam.</p>
                              </li>
                              <li>
                                 <span class="date">Jan <strong>23</strong></span>
                                 <h3><a href="#">Ipsum sed blandit nisl consequat</a></h3>
                                 <p>Blandit phasellus lorem ipsum dolor tempor sapien tortor hendrerit adipiscing feugiat lorem.</p>
                              </li>
                              <li>
                                 <span class="date">Jan <strong>15</strong></span>
                                 <h3><a href="#">Magna tempus lorem feugiat</a></h3>
                                 <p>Dolore consequat sed phasellus lorem sed etiam nullam dolor etiam sed amet sit consequat.</p>
                              </li>
                              <li>
                                 <span class="date">Jan <strong>12</strong></span>
                                 <h3><a href="#">Dolore tempus ipsum feugiat nulla</a></h3>
                                 <p>Feugiat lorem dolor sed nullam tempus lorem ipsum dolor sit amet nullam consequat.</p>
                              </li>
                              <li>
                                 <span class="date">Jan <strong>10</strong></span>
                                 <h3><a href="#">Blandit tempus aliquam?</a></h3>
                                 <p>Feugiat sed tempus blandit tempus adipiscing nisl lorem ipsum dolor sit amet dolore.</p>
                              </li>
                           </ul>
                        </section>
                     </div>
                     <div class="col-4 col-12-medium">
                        <section>
                           <header>
                              <h2>What's this all about?</h2>
                           </header>
                           <a href="#" class="image featured"><img src="images/pic10.jpg" alt="" /></a>
                           <p>
                              This is <strong>Dopetrope</strong> a free, fully responsive HTML5 site template by
                              <a href="http://twitter.com/ajlkn">AJ</a> for <a href="http://html5up.net/">HTML5 UP</a> It's released for free under
                              the <a href="http://html5up.net/license/">Creative Commons Attribution</a> license so feel free to use it for any personal or commercial project &ndash; just don't forget to credit us!
                           </p>
                           <footer>
                              <ul class="actions">
                                 <li><a href="#" class="button">Find out more</a></li>
                              </ul>
                           </footer>
                        </section>
                     </div>
                     <div class="col-4 col-6-medium col-12-small">
                        <section>
                           <header>
                              <h2>Tempus consequat</h2>
                           </header>
                           <ul class="divided">
                              <li><a href="#">Lorem ipsum dolor sit amet sit veroeros</a></li>
                              <li><a href="#">Sed et blandit consequat sed tlorem blandit</a></li>
                              <li><a href="#">Adipiscing feugiat phasellus sed tempus</a></li>
                              <li><a href="#">Hendrerit tortor vitae mattis tempor sapien</a></li>
                              <li><a href="#">Sem feugiat sapien id suscipit magna felis nec</a></li>
                              <li><a href="#">Elit class aptent taciti sociosqu ad litora</a></li>
                           </ul>
                        </section>
                     </div>
                     <div class="col-4 col-6-medium col-12-small">
                        <section>
                           <header>
                              <h2>Ipsum et phasellus</h2>
                           </header>
                           <ul class="divided">
                              <li><a href="#">Lorem ipsum dolor sit amet sit veroeros</a></li>
                              <li><a href="#">Sed et blandit consequat sed tlorem blandit</a></li>
                              <li><a href="#">Adipiscing feugiat phasellus sed tempus</a></li>
                              <li><a href="#">Hendrerit tortor vitae mattis tempor sapien</a></li>
                              <li><a href="#">Sem feugiat sapien id suscipit magna felis nec</a></li>
                              <li><a href="#">Elit class aptent taciti sociosqu ad litora</a></li>
                           </ul>
                        </section>
                     </div>
                     <div class="col-4 col-12-medium">
                        <section>
                           <header>
                              <h2>Vitae tempor lorem</h2>
                           </header>
                           <ul class="social">
                              <li><a class="icon brands fa-facebook-f" href="#"><span class="label">Facebook</span></a></li>
                              <li><a class="icon brands fa-twitter" href="#"><span class="label">Twitter</span></a></li>
                              <li><a class="icon brands fa-dribbble" href="#"><span class="label">Dribbble</span></a></li>
                              <li><a class="icon brands fa-tumblr" href="#"><span class="label">Tumblr</span></a></li>
                              <li><a class="icon brands fa-linkedin-in" href="#"><span class="label">LinkedIn</span></a></li>
                           </ul>
                           <ul class="contact">
                              <li>
                                 <h3>Address</h3>
                                 <p>
                                    Untitled Incorporated<br />
                                    1234 Somewhere Road Suite<br />
                                    Nashville, TN 00000-0000
                                 </p>
                              </li>
                              <li>
                                 <h3>Mail</h3>
                                 <p><a href="#">someone@untitled.tld</a></p>
                              </li>
                              <li>
                                 <h3>Phone</h3>
                                 <p>(800) 000-0000</p>
                              </li>
                           </ul>
                        </section>
                     </div>
                     <div class="col-12">

                        <!-- Copyright -->
                           <div id="copyright">
                              <ul class="links">
                                 <li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                              </ul>
                           </div>

                     </div>
                  </div>
               </div>
            </section>

      </div>

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>

   </body>
</html>