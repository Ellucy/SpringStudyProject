<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<title>Add Todos Page</title>
		<link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet" >
	</head>
	<body>
	    <div class="container">
		    <h2>Enter Todo Details</h2>
		    <form:form method="post" modelAttribute="todo">
		        <label for="description">Description</label>
		        <form:input type="text" path="description" required="required" />
		        <form:input type="hidden" path="id" />
		        <form:input type="hidden" path="done" />
		        <input type="submit" class="btn btn-primary">
		    </form:form>
		</div>
		<script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>
        <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
	</body>
</html>
