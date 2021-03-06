<%@page import="kr.smhrd.mapper.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h2>Spring MVC BOARD</h2>
		<div class="panel panel-default">
			<div class="panel-heading">Board Insert</div>
			<div class="panel-body">

				<!-- POJO (Board Controller)에 boardUpdate.do라는 요청이 들어온다면 
				일치하는 idx를 찾아서 게시판을 수정한 후 게시글 목록을 보는 boardList.jsp로 이동시키는
				기능을 직접! 구현해보세요 -->
				<form action="boardUpdate.do" method="post">
						<input type="hidden" name="idx" value="${vo.idx}">
					<table class="table table-boardered tabled-hover">
						<tr>
							<td>제목</td>
							<td><input name="title" class="form-control" type="text"
								value="${vo.title }"></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td>${vo.writer }</td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea name="contents" class="form-control" rows="5">${vo.contents }</textarea></td>
						</tr>
					</table>
					<a href="boardList.do"><button type="button"
							class="btn btn-info btn-sm">뒤로가기</button> </a>
					<button type="submit" class="btn btn-success btn-sm">수정</button>
					<a href="boardDelete.do?idx=${vo.idx}"><button type="button" class="btn btn-warning btn-sm">삭제</button> </a>
				<!-- POJO에 boardDelete.do요청이 들어오면 해당 게시글 삭제 후
				boardList.jsp로 이동하는 기능을 구현하시오 -->
				</form>

				<div class="panel-body">지능형 IoT 이정명</div>
			</div>
		</div>
	</div>
</body>
</html>