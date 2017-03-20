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
		<c:if test="${pet != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${pet == null}">
			<form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
            	<h2>
            		<c:if test="${pet != null}">
            			Edit Pet
            		</c:if>
            		<c:if test="${pet == null}">
            			Add New Pet
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${pet != null}">
        			<input type="hidden" name="id" value="<c:out value='${pet.id}' />" />
        		</c:if>            
            <tr>
                <th>Pet_Name: </th>
                <td>
                	<input type="text" name="pname" size="45"
                			value="<c:out value='${pet.pname}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Favritor_Color: </th>
                <td>
                	<input type="text" name="fcolor" size="45"
                			value="<c:out value='${pet.fcolor}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>CatsOrDogs(1:Cats , 0:Dogs): </th>
                <td>
                	<input type="text" name="cod" size="5"
                			value="<c:out value='${pet.cod}' />"
                	/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Save" />
            	</td>
            </tr>
        </table>
        </form>
    </div>	
</body>
</html>
