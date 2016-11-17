<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
	<head>
		<title>Notes</title>
	</head>
	<body>
		<h1>Notes</h1>
		<div>
			<sf:form method="POST" commandName="theNotes" action="/notes">
				<h2><sf:input path="title" type="text" placeholder="Enter title"></h2>
				<p><sf:textarea path="note" type="text" placeholder="Write your notes here"></p>
				<input type="submit" value="Submit">
			</sf:form>
		</div>
		<div>
			<c:choose>
				<c:when test="${not empty theNotes}">
					<div class="notes">
						<c:forEach var="note" items="${theNotes}">
							<h2><a href="/notes/${notes.title}">${notes.title}</a></h2>
							<p>${notes.note}</p>
						</c:forEach>
					</div>
				</c:when>
				<c:otherwise>
					<h2>Nothing to show.</h2>
				</c:otherwise>
			</c:choose>
		</div>
	</body>
</html>
