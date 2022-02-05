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
</head>
<body>
	<c:import url="../Top.jsp" />
	
	<div class="pContent">
		<div class="position">플레이리스트 > 인기 플레이리스트</div>
		<div class="title">인기 플레이리스트</div>
		<div class="playChart">
			<div class="chartlist">
				<div class="listItem">
					<img src="${path}/static/img/MusicCover1@2x.png"/>
					<div class="infoBox">
						<div class="title">신나는 음악</div>
						<div class="count">25곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
				<div class="listItem">
					<img src="${path}/static/img/MusicCover2@2x.png"/>
					<div class="infoBox">
						<div class="title">2022년 인기 음악</div>
						<div class="count">15곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
				<div class="listItem">
					<img src="${path}/static/img/MusicCover3@2x.png"/>
					<div class="infoBox">
						<div class="title">발라드 음악</div>
						<div class="count">30곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
				<div class="listItem">
					<img src="${path}/static/img/MusicCover4@2x.png"/>
					<div class="infoBox">
						<div class="title">조용한 음악</div>
						<div class="count">40곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
				<div class="listItem">
					<img src="${path}/static/img/MusicCover1@2x.png"/>
					<div class="infoBox">
						<div class="title">신나는 음악</div>
						<div class="count">25곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
				<div class="listItem">
					<img src="${path}/static/img/MusicCover2@2x.png"/>
					<div class="infoBox">
						<div class="title">2022년 인기 음악</div>
						<div class="count">15곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
				<div class="listItem">
					<img src="${path}/static/img/MusicCover3@2x.png"/>
					<div class="infoBox">
						<div class="title">발라드 음악</div>
						<div class="count">30곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
				<div class="listItem">
					<img src="${path}/static/img/MusicCover4@2x.png"/>
					<div class="infoBox">
						<div class="title">조용한 음악</div>
						<div class="count">40곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
				<div class="listItem">
					<img src="${path}/static/img/MusicCover1@2x.png"/>
					<div class="infoBox">
						<div class="title">신나는 음악</div>
						<div class="count">25곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
				<div class="listItem">
					<img src="${path}/static/img/MusicCover2@2x.png"/>
					<div class="infoBox">
						<div class="title">2022년 인기 음악</div>
						<div class="count">15곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
				<div class="listItem">
					<img src="${path}/static/img/MusicCover3@2x.png"/>
					<div class="infoBox">
						<div class="title">발라드 음악</div>
						<div class="count">30곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
				<div class="listItem">
					<img src="${path}/static/img/MusicCover4@2x.png"/>
					<div class="infoBox">
						<div class="title">조용한 음악</div>
						<div class="count">40곡</div>
						<img src="${path}/static/img/ic_play_green@2x.png" class="playBtn" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="../footer.jsp" />
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="${path}/static/js/musictree.js"></script>
	<script>
	
	</script>
	
</body>
</html>