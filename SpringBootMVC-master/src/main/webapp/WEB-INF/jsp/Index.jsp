<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>StudyBuddy</title>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/StudyBuddy.css"/>"/>
    </head>
    <body>
        <div class="header-container">
            <h2 class="header-1">StudyBuddy</h1>
        </div>
        <div class="start-screen-container">
            <h1 class="header-2">Welcome back!</h1>
            <%-- We have yet to link the buttons and do the forms properly, currently just a placeholder--%>
            <%-- However user has been linked --%>
            <div>
                <form action="/">
                    <input type="submit" value="See grade progress">
                </form>
                <form action="/">
                    <input type="submit" value="See calendar">
                </form>
                <form action="/">
                    <input type="submit" value="See notes">
                </form>
                <form action="/user">
                    <input type="submit" value="See user">
                </form>
            </div>
        </div>
    </body>
</html>
