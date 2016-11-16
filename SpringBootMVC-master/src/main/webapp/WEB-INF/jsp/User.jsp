<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

	<head>
		<title>User Information</title>
	</head>
	<body>
		<h1>User Information</h1>
		<div class="user-container">
			<p>First name: ${fname}</p>
			<p>Last name: ${lname}</p>
			<p>Email: ${email}</p>
			<p>Current course: ${course}</p>
		</div>
    </body>

</html>