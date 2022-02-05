<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MusicTree</title>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"/>
	<link rel="stylesheet" href="${path}/static/css/main.css"/>
	<link rel="stylesheet" href="${path}/static/css/login.css"/>
</head>
<body>
	<c:import url="../Top.jsp" />
	
	<div class="content">
		<div class="title">회원가입</div>
		
		<form id="registerForm" method="POST" action="">
			<div class="formItem">
				<label for="userid">아이디</label>
				<input type="text" name="userid" id="userid" placeholder="아이디를 입력하세요." autofocus />
				<p class="err iderr">아이디를 입력해주세요.</p>
			</div>
			
			<div class="formItem">
				<label for="userpw">비밀번호</label>
				<input type="password" name="userpw" id="userpw" placeholder="비밀번호를 입력하세요."/>
				<p class="err pwerr">비밀번호를 입력해주세요.</p>
			</div>
			
			<div class="formItem">
				<label for="pwchk">비밀번호 확인</label>
				<input type="password" id="pwchk" placeholder="비밀번호를 한 번 더 입력하세요."/>
				<p class="err chkerr">비밀번호가 일치하지 않습니다.</p>
			</div>
			
			<div class="formItem">
				<label for="username">이름</label>
				<input type="text" name="username" id="username" placeholder="이름을 입력하세요."/>
				<p class="err nameerr">이름을 입력해주세요.</p>
			</div>
			
			<div class="formItem">
				<label for="useremail">이메일</label>
				<input type="text" name="useremail" id="useremail" placeholder="이메일을 입력하세요."/>
				<p class="err emailerr">이메일을 입력해주세요.</p>
			</div>
			
			<button type="button" class="registerBtn" onclick="chkForm();">회원가입</button>
		</form>
	</div>
	
	<c:import url="../footer.jsp" />
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
			$(function(){
				// 아이디 입력 여부
				$("#userid").keyup(function(){
					if($("#userid").val() == ""){
						$("#userid").css("border-color","#ff4d78");
						$(".iderr").show();
					} else{
						$("#userid").css("border-color","#dddddd");
						$(".iderr").hide();
					}
				})
				
				// 비밀번호 입력 여부
				$("#userpw").keyup(function(){
					$("#pwchk").val("");
					
					if($("#userpw").val() == ""){
						$("#userpw").css("border-color","#ff4d78");
						$(".pwerr").show();
						
					} else{
						$("#userpw").css("border-color","#dddddd");
						$(".pwerr").hide();
					}
				})
				
				// 비밀번호 확인 입력여부
				$("#pwchk").keyup(function(){
					if($("#pwchk").val() == "" || $("#userpw").val() !== $("#pwchk").val()){
						$("#pwchk").css("border-color","#ff4d78");
						$(".chkerr").show();
					} else{
						$("#pwchk").css("border-color","#dddddd");
						$(".chkerr").hide();
					}
				})
				
				// 이름 입력여부
				$("#username").keyup(function(){
					if($("#username").val() == ""){
						$("#username").css("border-color","#ff4d78");
						$(".nameerr").show();
					} else{
						$("#username").css("border-color","#dddddd");
						$(".nameerr").hide();
					}
				})
				
				// 이메일 입력여부
				$("#useremail").keyup(function(){
					var pattern = '^[A-Za-z0-9]+@[A-za-z0-9]+\.[A-za-z0-9]+$';
					var email = $("#useremail").val();
					/*
					!pattern.test(email) => pattern.test(email) == false
					pattern.test(email) => pattern.test(email) == true
					*/
					if(email == "" || !pattern.test(email)){
						$("#useremail").css("border-color","#ff4d78");
						$(".emailerr").show();
					} else{
						$("#useremail").css("border-color","#dddddd");
						$(".emailerr").hide();
					}
				})
			})
		})
		
		function chkForm(){
			
			var err = 0;
			
			if($("#userid").val() == ""){
				$("#userid").css("border-color","#ff4d78");
				$(".iderr").show();
				
				err++;
			}
			if($("#userpw").val() == ""){
				$("#userpw").css("border-color","#ff4d78");
				$(".pwerr").show();
				
				err++;
			}
			if($("#pwchk").val() == ""){
				$("#pwchk").css("border-color","#ff4d78");
				$(".chkerr").show();
				
				err++;
			}
			if($("#username").val() == ""){
				$("#username").css("border-color","#ff4d78");
				$(".nameerr").show();
				
				err++;
			}
			
			if($("#useremail").val() == ""){
				$("#useremail").css("border-color","#ff4d78");
				$(".emailerr").show();
				
				err++;
			}
			
			if(err > 0){
				return false;
			} else{
				$("#registerForm").submit();
			}
		}
	</script>
	
</body>
</html>