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
							<td><input id="id" style="float: left; width: 230px"
								required="required" name="id" class="form-control" type="text">
								<button type="button" id="idCheck" style="float: left"
									class="btn btn-info btn-sm">중복체크</button> <br> <br> <span
								id="result">아이디 중복확인을 해주세요</span></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input readonly="readonly" name="pw"
								class="form-control join" type="password"></td>
						</tr>
						<tr>
							<td>닉네임</td>
							<td><input readonly="readonly" name="nick"
								class="form-control join" type="text"></td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td><input readonly="readonly" name="phone"
								class="form-control join" type="text"></td>
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


	<script type="text/javascript">
		$('.join').click(function() {
			if (this.getAttribute('readonly') == "readonly") {
				alert('아이디 중복체크를 먼저 해주세요')
			}
		});
		$('#idCheck').click(function() {
			var id = $('#id').val();

			$.ajax({
				url : "idCheck.do",
				type : "post",
				data : {
					"id" : id
				},
				success : loadJson,
				error : function(e) {
					console.log(e);
				}
			});
		});
		/*  
		$('#id').keyup(function(){
			var id=$('#id').val();
					$.ajax({
						url: "idCheck.do",
						type:"post",
						data:{"id":id},
						success : loadJson,
						error : function(e){
							console.log(e);
 */ /* 키 업이벤트로 바꾸는 방식.  키보드를 입력했다가 떼면 발동한다. */
		function loadJson(data) {
			if (data.id == undefined) {
				console.log("아이디 사용가능")
				$('.join').removeAttr('readonly');
				$('#result').text('사용가능한 아이디입니다.')
				$('#result').css('color', 'blue')
			} else {
				console.log("아이디 불가능")
				$('.join').attr('readonly', true)
				$('#result').text('중복된 아이디입니다.')
				$('#result').css('color', 'red')
			}
		};
	</script>

</body>
</html>