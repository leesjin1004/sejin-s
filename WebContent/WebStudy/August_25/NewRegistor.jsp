<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
	<style>
	body{
	margin-top : 200px;
	}
	</style>
</head>
<body>
	<div class="container">
		<div class="row justify-content-md-conter">
			<div class="col-md-6">
				<div class="card login-box">
					<div class="card-header">회원가입</div>
					<div class="card-body">
						<form>
							<div class= "form-group">
								<label>이름</label> <input type="text" class="form-control">
							</div>
							<div class= "form-group">
								<label>아이디</label> <input type="text" class="form-control">
							</div>
							<div class= "form-group">
								<label>비밀번호</label> <input type="password" class="form-control">
							</div>
							<div class= "form-group">
								<label>이메일</label> <input type="email" class="form-control">
							</div>
							<div class= "form-group">
								<label>전화번호</label> <input type="text" class="form-control">
							</div>
						</form>
					</div>
					<div class="card-footer">
						<button type="button" class="btn btn-primary">회원가입</button>
						<div class="float-right">
						<button type="button" class="btn btn-light"><a href="/WebStudy/August_25/NewLogin.jsp">로그인</a></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>