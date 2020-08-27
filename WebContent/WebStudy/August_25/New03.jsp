<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
body{
margin-top:100px;
}
</style>
<title>게시판 - 목록</title>
</head>
<body>
	<div class="container">
		<div class="list-box">
		<table class="table table-border">
			<thead class="thead-dark">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>작성일시</th>
			</tr>
			</thead>
			<tbody>
			<%  SimpleDateFormat format = new SimpleDateFormat ("yyyy-mm-dd HH:mm:ss");
				String name[] = {"사카다 킨토키", "카구라", "시무라 신파치", "사다하루", "콘도 이사오", "히지카타 토시로", "오키타 소고", "야마자키 사가루", "카츠라 코타로", "엘리자베스", "타카스기 신스케", "카무이"};
				for(int i=0; i<=12; i++){
					Random random = new Random();
					int randomInt = random.nextInt(12);
					String randomName = name[randomInt];
					
					
					Date now = new Date();
					String today = format.format(now);
					
					String randomTitle = "안녕하세요";
			%>
				<tr>
				<td><%=i %></td>
				<td><a href= "firstProject/WebStudy/August_25/New03.jsp"> <%= randomTitle %> </td>
				<td><%=randomName %></td>
				<td><%=today %></td>
				</tr>
			<%
				}
			%>
			</tbody>
		</div>
	</div>
</body>
</html>