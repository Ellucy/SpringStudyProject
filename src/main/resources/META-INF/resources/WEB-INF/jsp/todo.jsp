<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>Add Todos Page</title>
		<link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet" >
	</head>
	<body>
	    <div class="container">
		    <h2>Enter Todo Details</h2>
		    <form method="post">
		        <label for="description">Description</label>
		        <input type="text" name="description" />
		        <input type="submit" class="btn btn-primary">
		    </form>
		</div>
		<script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>
        <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
	</body>
</html>
