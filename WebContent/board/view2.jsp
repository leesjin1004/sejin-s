<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!doctype html>
<html lang="en">
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
.view-box {
	margin-top: 100px;
}
</style>

<title>게시판 글쓰기</title>
</head>
<body>

	<div class="container">
	<!-- 글 내용 -->
		<div class="view-box">
		<div class="card">
			<div class="card-header">How you like that?</div>
			<div class="card-body">
				<p class="card-text">제니</p>
				<p class="card-text">보란 듯이 무너졌어 바닥을 뚫고 저 지하까지<br> 
					옷 끝자락 잡겠다고 저 높이 두 손을 뻗어봐도<br>
					다시 캄캄한 이곳에 light up the sky<br>
					네 두 눈을 보며 I’ll kiss you goodbye<br>
					실컷 비웃어라 꼴좋으니까 이제 너희 하나 둘 셋 <br>
					Ha how you like that?
					</p>
			</div>
			<div class="card-footer">
				<a href="/board/list.jsp" class="btn btn-primary">목록</a> 
				
				<div class="float-right">
					<button type="button" class="btn btn-warning">수정</button>
					<button type="button" class="btn btn-danger"
						data-target="#exampleModal" data-toggle="modal">삭제</button>
				</div>
			</div>
		</div>
	</div>
	</div>
	
	<div class="container">
	<div class="card">
		<div class="card-header">댓글</div>
			<div class="card-body">
				<div>
					<form>
						<input type="text" class="form-control">
					</form>
				</div>
			</div>
			<div class="card-footer">
				<button type="button" class="btn btn-primary">등록</button>
				<div class="float-right">
					<button type="button" class="btn btn-warning">수정</button>
					<button type="button" class="btn btn-danger">삭제</button>
				</div>
			</div>
		</div>
		</div>


	<form id="deleteForm" method="post" action="/board/form.jsp">
		<input type="hidden" name="board_id" />
	</form>

<!-- 댓글 -->
	<div class="container">
		<!-- Button trigger modal -->
		<div class="modal" tabindex="-1" id="exampleModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">게시물 삭제</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<p>삭제하시면 되돌릴 수 없습니다. 정말 삭제하시겠습니까?</p>
					</div>
					<div class="modal-footer">
						<div>
							<button type="button" class="btn btn-danger" id="btnDelete"
								style="margin-right: -395px;">삭제</button>
						</div>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>

	<script>
		$('#btnDelete').on('click', function() {
			$('#deleteForm input[name=board_id]').val('삭제되었습니다.');
			$('#deleteForm').submit();
		})
	</script>
</body>
</html>