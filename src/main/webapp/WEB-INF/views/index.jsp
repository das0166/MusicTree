<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MusicTree</title>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"/>
<link rel="stylesheet" href="${path}/static/css/main.css"/>
</head>
<body>

<c:import url="./Top.jsp"/>
<div class="content">
	<div class="MusicBox">
		<div class="C_title">최신 음악</div>
		<div class="SlideBox">
			
		</div>
	</div>
	<!-- banner -->
	<div class="banner swiper-container">
		<div class="swiper-wrapper">
			<div class="bannerItem swiper-slide"></div>
			<div class="bannerItem swiper-slide"></div>
			<div class="bannerItem swiper-slide"></div>
		</div>
		
		<div class="swiper-pagination" style="width:70px; bottom:14px; left:14px;"></div>
	</div>
	
	<div class="chartBox">
		<!-- 실시간 차트 -->
		<div class="musicChart">
			<div class="Ctitle">
				실시간 차트
				<div class="moreBtn">
					더보기
					<img src="${path}/static/img/arrow_right@2x.png" onclick="location.href='/chart';"/>
				</div>
			</div>
			<div class="chartlist">
				
			</div>
		</div>
		
		<!-- 최신 앨범 -->
		<div class="albumChart">
			<div class="Ctitle">
				최신 앨범
				<div class="moreBtn">
					더보기
					<img src="${path}/static/img/arrow_right@2x.png" onclick="location.href='/music/album';" />
				</div>
			</div>
			<div class="chartList">
				
			</div>
		</div>
	</div>
	
	<!-- 인기 동영상 -->
	<div class="videoChart">
		<div class="Ctitle">
			인기 동영상
			<div class="moreBtn">
				더보기
				<img src="${path}/static/img/arrow_right@2x.png"/>
			</div>
		</div>
		<div class="chartlist">
			<div class="listItem">
				<iframe src="https://www.youtube.com/embed/-m9JqGDRKDI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="listItem">
				<iframe src="https://www.youtube.com/embed/xNoRmx8GXeY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>	
			<div class="listItem">
				<iframe src="https://www.youtube.com/embed/4GLmT7uv2n4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>	
			<div class="listItem">
				<iframe src="https://www.youtube.com/embed/ujClYsx9hWQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>	
		</div>
	</div>
	
	<div class="bottomMenu">
		<div class="notice">
			<div class="title">
				공지사항
				<div class="moreBtn">
					더보기
					<img src="${path}/static/img/ic_more@2x.png"/>
				</div>
			</div>
			<div class="noticelist">
				<div class="listItem">
					<div class="Mtitle">[2022년 새해 맞이 이벤트]</div>
					<div class="Ndate">2022-01-15</div>
				</div>
				<div class="listItem">
					<div class="Mtitle">[2022년 새해 맞이 이벤트]</div>
					<div class="Ndate">2022-01-15</div>
				</div>
				<div class="listItem">
					<div class="Mtitle">[2022년 새해 맞이 이벤트]</div>
					<div class="Ndate">2022-01-15</div>
				</div>
			</div>
		</div>
		<div style="background-color:#eeeeee; width:1px; height:160px;"></div>
		<div class="custmerCenter">
			<div class="ccTitle">CUSTMER CENTER</div>
			<div class="cNum">031-123-4567</div>
			<div class="cInfo">&#8251; 평일 : 09:00 ~ 18:00<br>(점심시간 12:00~13:00)</div>
			<div class="cInfo">&#8251; 주말(토,일,공휴일) : 미운영</div>
		</div>
	</div>
</div>

<c:import url="./footer.jsp"/>


<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script src="${path}/static/js/musictree.js"></script>

<script>
	$(document).ready(function(){
		
		getArtist();
		getTrack();
		getAlbum("3");
		
		$(".SlideBox").slick({
			variableWidth:true,
			dots:true,
			slideToScroll:1, //슬라이시 움직일 슬라이드 수
			autoplay:true, //자동 슬라이드
			autoplaySpeed:2000, //자동 슬라이드 속도
			infinite:true, //무한 슬라이드
		})
		
		const swiper = new Swiper('.swiper-container',{
			loop:true, //무한 슬라이드
			autoplay: {
				delay:2500
			},
			pagination:{
				el:'.swiper-pagination'
			}
		})
		
	})
</script>
	
</body>
</html>