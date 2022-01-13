<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MusicTree</title>
<link rel="stylesheet" href="${contextpath}/static/css/main.css"/>
</head>
<body>
	<div class="topMenu">
		<div>로그인</div>
		<div>회원가입</div>
		<div>마이페이지</div>
	</div>
	
	<div style="width:100%; height:1px; background-color:#eeeeee; margin-top:12px;"></div>
	
	<div class="Top">
		<div class="logo">
			<img src="${contextpath}/static/img/MusicTree_logo@2x.png"/>
		</div>
		
		<div class="searchBox">
			<input type="text" class="searchInput" />
			<img src="${contextpath}/static/img/ic_search@2x.png"/>
		</div>
	</div>
	
	<div style="width:100%; height:1px; background-color:#eeeeee;"></div>
	
	<div class="menu">
		<ul>
			<li><span>MusicTree</span>차트</li>
			<li>최신음악</li>
			<li>장르</li>
			<li>플레이리스트</li>
			<li>아티스트</li>
		</ul>
	</div>
	
	<div style="width:100%; height:1px; background-color:#eeeeee;"></div>
	
	<div class="content">
		<div class="MusicBox">
			<div class="C_title">최신 음악</div>
			<div class="SlideBox">
				<div class="Music_item">
					<img src="${contextpath}/static/img/MusicCover1@2x.png"/>
					<div class="MusicInfo">
						<div class="M_title">12312</div>
						<div class="Name">12312</div>
						<img src="${contextpath}/static/img/ic_play_white@2x.png" class="playBtn"/>
					</div>
				</div>
			</div>
		</div>
	
	</div>
	
</body>
</html>