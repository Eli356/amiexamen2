<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Libro"%>
<%@page import="java.util.List"%>
<%
 List<Libro> avisos =(List<Libro>)request.getAttribute("avisos");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="margin-left: 3cm;">LIBROS</h1>
        <p><a href="LibroController?action=add">Nuevo</a></p>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Autor</th>
                <th>Dispinible</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <c:forEach var="item" items="${avisos}">
                            
            <tr>
                <td>${item.id}</td>
                <td>${item.nombre}</td>
                <td>${item.autor}</td>
                <td>${item.disponible}</td>
                <td>${item.categoria}</td>
                <td><a href="LibroController?action=edit&id=${item.id}">Editar</a></td>
                <td><a href="LibroController?action=delete&id=${item.id}">Eliminar</a></td>
              
            </tr>
            </c:forEach>

        </table>
    </body>
</html>
