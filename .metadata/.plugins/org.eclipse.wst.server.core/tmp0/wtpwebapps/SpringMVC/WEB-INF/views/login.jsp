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
		<h2>Spring MVC Member</h2>
		<div class="panel panel-default">
			<div class="panel-heading">Login Select</div>
			<div class="panel-body">

				<form class="form-horizontal" method="post" action="loginSelect.do">
					<table style="width:400px; text-align:center; margin:auto;" class="table table-hover table-bordered">
						<!--로그인 버튼을 누르면 loginSelect.do라는 곳으로 id와 pw가 넘어간다
						  loginSelect.do를 요청했을 때 해당하는 id와 pw가 일치하는 회원을 찾았다면
						  해당 회원의 id,pw,nick,phone 정보를 session에 담아 boardList.jsp로 이동
						  -->
						
						<tr>
							<td>아이디</td>
							<td><input name="id" class="form-control" type="text"></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input name="pw"  class="form-control" type="password"></td>
						</tr>
						<tr>
							<td colspan="2">
							<a href="join.do">아직 회원이 아니시면 여기를 클릭해주세요.</a> <br>
								<button type="reset" class="btn btn-success btn-sm">취소</button>
								<button type="submit" class="btn btn-info btn-sm">로그인</button></td>
						</tr>

					</table>


				</form>

			</div>
			<div class="panel-body">지능형 IoT 이정명</div>
		</div>
	</div>

</body>
</html>