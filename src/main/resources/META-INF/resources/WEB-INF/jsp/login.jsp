<html>
	<head>
		<title>Login page</title>
		<link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet" >
	</head>
	<body>
        <div class="container">
	    <h2 class="mt-3">Log in</h2>
            <pre>${errorMessage}</pre>
            <form method="post">
                <label>Username: </label>
                <input type="text" name="name"></input>
                <label>Password: </label>
                <input type="password" name="password"></input>
                <input type="submit">
            </form>
		</div>
		<script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>
        <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
	</body>
</html>