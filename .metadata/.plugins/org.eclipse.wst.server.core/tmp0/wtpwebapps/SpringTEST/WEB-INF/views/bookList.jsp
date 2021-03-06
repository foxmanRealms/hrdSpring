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
		<h1>보유 도서 현황</h1>

		<div class="panel-heading">
			<div id="bookView" style="width: 100%;"></div>

		</div>
		<div class="panel-body">
			<table class="table table-hover table-">
				<tr class="active">
					<td>번호</td>
					<td>제목</td>
					<td>작가</td>
					<td>출판사</td>
					<td>ISBN</td>
					<td>보유도서수</td>
				</tr>
				<c:forEach var="vo" items="${list}" varStatus="i">

					<tr>
						<td>${i.count}</td>
						<td>${vo.title}</td>
						<td>${vo.author}</td>
						<td>${vo.company}</td>
						<td>${vo.isbn}</td>
						<td>${vo.count}</td>

					</tr>
				</c:forEach>

			</table>
		</div>
		<div class="panel-body"></div>
	</div>
	<div>
		<div class="container">
			<h2>도서 입력</h2>
			<div class="panel-heading"></div>
			<div class="panel-body">

				<form class="form-horizontal" method="post" action="bookInsert.do">
					<div class="form-group">
						<label class="control-label col-sm-2" for="title">제목:</label>
						<div class="col-sm-10">
							<input type="text" name="title" id="title">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="author">작가:</label>
						<div class="col-sm-10">
							<input id="contents" name="author"></input>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="company">출판사:</label>
						<div class="col-sm-10">
							<input type="text" name="company" id="company">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="isbn">ISBN:</label>
						<div class="col-sm-10">
							<input type="text" name="isbn" id="isbn">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="count">보유도서 수:</label>
						<div class="col-sm-10">
							<input type="text" name="count" id="count">
							 <br>
							<button type="submit" class="btn btn-info btn-sm">등록</button>
						</div>
					</div>

				</form>

			</div>


		</div>
	</div>


</body>
</html>