<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--
   Dopetrope by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>DDO:MUNGNYANG</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/bbs/assets/css/register.css" />
</head>
<body class="homepage is-preload">
	<div id="page-wrapper">
		<!-- 로그인/회원가입 버튼 -->
		<section id="starter">
		<div id="btn_group">
			<button id="login_btn" onclick="location.href='/bbs/index.jsp' ">HOME</button>
			<button id="login_btn" onclick="location.href='/bbs/login/login.jsp'">로그인</button>
		</div>
		</section>


		<!-- Header -->
		<div id="header" class="join_membership" role="banner">
        <h1>
         <a href="/bbs/index.jsp" class="h_logo"><span class="blind">DDO:MUNGNYANG</span></a>
         </h1>
         </div>         
	
		<form id="join_form" action="/bbs/login.do" method="post">
			<div id="container" role="main">
			<div id="content">
				<div class="join_content">
					<div class="row_group">
						<div class="join_row">
							<h3 class="join_title">
								<label for="id">아이디</label>
							</h3>
							<span class ="ps_box int_id">
								<input type="text" class="int" name="id" id="id"
								title = "ID" maxlength = "20" value="${member.id }">
							</span>
							<p style="color: red;">${idError}</p>
						</div>
						<div class="join_row">
							<h3 class="join_title">
								<label for="pwd" id="pwd">비밀번호</label>
							</h3>
							<span class="ps_box_int_pass" id="pwdImg">
								<input type="password" class="int" name="pwd" id="pwd"
								title="비밀번호 입력" aria-describedby="pwdMsg" maxlength="20">
								<span class="lb1">
								<span id="pwdSpan" class ="step_txt"></span>
								</span>
								::after
								</span>
								<p style="color: red;">${pwdError}</p>
							</div>
							<h3 class="col-sm-2 control-label">
								<label for="pwdCheck" id="pwdCheck">비밀번호 확인</label>
							</h3>
							<div class="col-sm-6">
								<input type="password" class="form-control" name="pwdCheck"
									id="pwdCheck">
								<p style="color: red;">${pwdCheckError}</p>
							</div>
						</div>
					</div>
					<div class="row_group">
						<div class="join_row">
							<h3 class="col-sm-2 control-label">
								<label for="name" id="name">이름</label>
							</h3>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="name" id="name"
									value="${member.name }">
								<p style="color: red;">${nameError}</p>
							</div>
						</div>
						<div class="join_row join_birthday">
							<h3 class="join_title">
								<label for="yy">생년월일</label>
							</h3>
							<div class="bir_wrap">
								<div class="bir_yy">
									<span class="ps_box"> <input type="text" id="yy"
										placeholder="년(4자)" aria-label="년(4자)" class="int"
										maxlength="4">
									</span>
								</div>
								<div class="bir_mm">
									<span class="ps_box"> <select id="mm" class="sel"
										aria-label="월">
											<option value="">월</option>
											<option value="01">1</option>
											<option value="02">2</option>
											<option value="03">3</option>
											<option value="04">4</option>
											<option value="05">5</option>
											<option value="06">6</option>
											<option value="07">7</option>
											<option value="08">8</option>
											<option value="09">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
									</select>
									</span>
								</div>
								<div class=" bir_dd">
									<span class="ps_box"> <input type="text" id="dd"
										placeholder="일" aria-label="일" class="int" maxlength="2">
										<label for="dd" class="lbl"></label>
									</span>
								</div>
							</div>
							<span class="error_next_box" id="birthdayMsg"
								style="display: none" aria-live="assertive"></span>
						</div>
						<div class="join_row">
							<h3 class="col-sm-2 control-label">
								<label for="email" id="email">이메일</label>
							</h3>
							<div class="col-sm-6">
								<input type="email" class="form-control" name="email" id="email"
									value="${member.email }">
								<p style="color: red;">${emailError}</p>
							</div>
						</div>
						<div class="join_row">
							<h3 class="col-sm-2 control-label">
								<label for="phone" id="phone">전화번호</label>
							</h3>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="phone" id="phone"
									value="${member.phone }">
							</div>
						</div>
					</div>
					<div class="row_group">
						<div class="join_row">
							<h3 class="col-sm-2 control-label">
								<label for="zip_num" id="zip_num">우편번호</label>
							</h3>
							<div class="col-sm-3">
								<input type="text" id="sample6_postcode" placeholder="우편번호"
									name="zip_num" class="form-control" value="${member.zip_num }">
							</div>
							<div class="adress_button">
								<input type="button" id="adress_button"
									onclick="sample6_execDaumPostcode()" value="우편번호 찾기"
									class="btn btn-primary">
							</div>
							<p style="color: red;">${zip_numError}</p>

							<div class="col-sm-3"></div>
						</div>
						<div class="join_row">
							<h3 class="col-sm-2 control-label">
								<label for="address1" id="address1">주소</label>
							</h3>
							<div class="col-sm-6">
								<input type="text" id="sample6_address" placeholder="주소"
									name="address1" class="form-control"
									value="${member.address1 }">

							</div>
						</div>
						<div class="join_row">
							<div class="col-sm-12">
								<p style="color: red;">${zip_numError}</p>
							</div>
						</div>
						<div class="join_row">
							<h3 class="col-sm-2 control-label">
								<label for="address1" id="address1">상세주소</label>
							</h3>
							<div class="col-sm-6">
								<input type="text" id="sample6_address2" placeholder="상세주소"
									name="address2" class="form-control"
									value="${member.address2 }">
							</div>
						</div>
						<div class="join_row">
							<div class="col-sm-2"></div>
							<div class="col-sm-8">
								<p style="color: red;" class="text-center">${addressError}</p>
							</div>
						</div>
					</div>
					<div class="row_group">
						<div class="join_row">
							<div class="col-sm-12  text-center">
								<input type="hidden" name="ip" value="${GetIpAddress.getIp()}">
								<input type="submit" value="가입하기" class="btn btn-success">
							</div>
						</div>
					</div>

				</div>

			</div>
	</div>
	</form>
	</div>
	<!-- Banner -->
	<section id="banner"> <header> </header> </section>
</body>
</html>