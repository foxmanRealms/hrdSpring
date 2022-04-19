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
			<div class="panel-heading">Join Insert</div>
			<div class="panel-body">

				<form class="form-horizontal" method="post" action="joinInsert.do">

					<!-- join.jsp에서 회원정보를 입력하면 회원정보는 joinInsert.do라는 곳으로 넘어간다
					joinInsert.do 요청받는 곳에서 받아들인 회원정보를 회원가입 시키시오.
					회원가입이 완료되었다면 login.jsp로 이동시키시오
					힌트. 만들어야하는 파일 들
					MemberVO,MemberMapper.java,MemberMapper.xml
					  -->


					<table style="width: 400px; text-align: center; margin: auto;"
						class="table table-hover table-bordered">
						<tr>
							<td>아이디</td>
							<td><input name="id" class="form-control" type="text"></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input name="pw" class="form-control" type="password"></td>
						</tr>
						<tr>
							<td>닉네임</td>
							<td><input name="nick" class="form-control" type="text"></td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td><input name="phone" class="form-control" type="text"></td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="reset" class="btn btn-success btn-sm">취소</button>
								<button type="submit" class="btn btn-info btn-sm">회원가입</button>
							</td>
						</tr>

					</table>


				</form>

			</div>
			<div class="panel-body">지능형 IoT 이정명</div>
		</div>
	</div>

</body>
</html>