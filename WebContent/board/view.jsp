<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %> 
<%@ page import="java.util.Date" %>        <!-- 최적화를 위해 *가 아니라 Random, Date 따로따로 선언해주었음. -->
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
body {
	margin-top: 100px;
}
</style>
<title>게시판 - 보기</title>
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
				String name[] = {"제니","로제","지수","리사"};
				for(int i = 0; i <= 10; i++){
					Random random = new Random();          //랜덤함수를 쓸려면 <%page import= "java.util.*" %  >를 위에 선언해줘야함
					int randomInt = random.nextInt(4);
					String randomName = name[randomInt];
					
					Date now = new Date();
					String today = format.format(now);
					
					String randomTitle = "안녕하세요";
			%>
				<tr>
				<td><%=i%></td>
				<td><a href="/board/view.jsp"> <%=randomTitle %></a></td>   <!-- 임의로 view파일을 넣어서 작성한 글 페이지로 넘어가도록! -->
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