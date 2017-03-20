<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<pname>Pets Application</pname>
</head>
<body>
	<center>
		<h1>Pets Management</h1>
        <h2>
        	<a href="new">Add New Pet</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All Pets</a>
        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Pets</h2></caption>
            <tr>
                <th>ID</th>
                <th>Pet_name</th>
                <th>Favrite_color</th>
                <th>CatsOrDogs</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="pet" items="${listPet}">
                <tr>
                    <td><c:out value="${pet.id}" /></td>
                    <td><c:out value="${pet.pname}" /></td>
                    <td><c:out value="${pet.fcolor}" /></td>
                    <td><c:out value="${pet.cod}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${pet.id}' />">Edit</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${pet.id}' />">Delete</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
