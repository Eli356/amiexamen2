
<%@page import="com.emergentes.modelo.Categoria"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%
 List<Categoria> avisos =(List<Categoria>)request.getAttribute("avisos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1 style="margin-left: 0,5cm;">CATEGORIAS</h1>
        <p><a  href="CategoriaController?action=add" >Nuevo</a></p>
        <table border="1" >
            <tr>
                <th>Id</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <c:forEach var="item" items="${avisos}">
                            
            <tr>
                <td>${item.id}</td>
                <td>${item.categoria}</td>
                <td><a href="CategoriaController?action=edit&id=${item.id}">Editar</a></td>
                <td><a href="CategoriaController?action=delete&id=${item.id}">Eliminar</a></td>
              
            </tr>
            </c:forEach>

        </table>
    </body>
</html>
