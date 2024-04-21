<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>List Todos Page</title>
		<link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet" >
	</head>
	<body>
		<div>Welcome ${name}</div>
		<hr>
		<h2>Your todos are:</h2>
		<table>
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
		<script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>
        <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
	</body>
</html>
