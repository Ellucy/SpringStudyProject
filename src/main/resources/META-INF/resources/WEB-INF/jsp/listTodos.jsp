<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>List Todos Page</title>
		<link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet" >
	</head>
	<body>
	<div class="container">
		<h2 class="mt-4">Your todos are</h2>
		<table class="table">
			<thead>
				<tr>
					<th>id</th>
					<th>Description</th>
					<th>Target date</th>
					<th>Completed?</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.id}</td>
						<td>${todo.description}</td>
						<td>${todo.targetDate}</td>
						<td>${todo.done}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="add-todo" class="btn btn-success">Add Todo</a>
		</div>
		<script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>
        <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
	</body>
</html>
