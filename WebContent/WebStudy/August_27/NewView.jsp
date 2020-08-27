<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Random"%>
<%@ page import="java.util.Date"%>
<!-- 최적화를 위해 *가 아니라 Random, Date 따로따로 선언해주었음. -->
<%@ page import="java.text.SimpleDateFormat"%>
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
body {
	margin-top: 100px;
}
</style>
<title>게시판 글쓰기</title>
</head>
<body>
	<div class="container">
		<div class="view-box">
			<div class="card">
				<div class="card-header">요로즈야 긴토키의 하루</div>
				<div class="card-body">
					<p class="card-text">사카타 긴토키의 스토커상</p>
					<p>
					오늘도 긴짱의 동태눈깔은 빛이났다.<br>
					오늘도 긴상을 죽도를 들고다녔다.<br>
					저 죽도로 사람을 죽일수나 있는걸까..?<br>
					긴상이 죽도로 전투하는 모습을 멀리저 지켜봤다. 캇코요캇타<br>
					너무 힘들어 죽을 것 같지만 긴상의 휘날리는 머리카락과 땀을 보며<br>
					오늘 하루도 살아있길 잘했다.. 라고 생각해 보았다.
					</p>
				</div>
				<div class="card-footer">
						<a href="/WebStudy/August_27/NewEdit.jsp" class="btn btn-warning">수정</a>
						<button type="button" class="btn btn-danger"
							data-target="#deleteModal" data-toggle="maodal">삭제</button>
					<div class="float-right">
						<a href="/WebStudy/August_25/NewList.jsp" class="btn btn-primary">목록</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="card" style="margin-top:20px;">

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
					<button type="button" class="btn btn-warning">수정</button>
					<button type="button" class="btn btn-danger">삭제</button>
				<div class="float-right">
					<button type="button" class="btn btn-primary">등록</button>
				</div>
			</div>	
		</div>
	</div>
	
	<form id="deleteForm" method="post" action="/WebContent/board/form.jsp">
		<input type="hidden" name="board_id" />
	</form>
	
	<div class="container">
		<div class="modal" tabindex="-1" id="deleteModal">
			<div class="modal-dialog">
				<div class="modal-header">
					<h5 class="modal-title">게시물 삭제</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="close">
						<span aria-hidden="true">&times;</span>
					</button>
					<div class="modal-body">
						<p>삭제하시면 되돌릴 수 없습니다. 정말 삭제하시겠습니까?</p>
					</div>
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
</body>
</html>