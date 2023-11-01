
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Libro"%>
<%
    Libro aviso = (Libro) request.getAttribute("aviso");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo registro</h1>
        <form action="LibroController" method="post">
            <input type="hidden" name="id" value="${aviso.id}"/>
            <table>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="${aviso.nombre}" /></td>
                </tr>
                <tr>
                    <td>Autor</td>
                    <td>
                       <input type="text" name="autor" value="${aviso.autor}" />
                    </td>
                    
                </tr>
                 <tr>
                    <td>Disponible</td>
                    <td>
                        <input type="text" name="disponible" value="${aviso.disponible}" />
                    </td>
                    
                </tr>
                 <tr>
                    <td>Categoria</td>
                    <td>
                        <input type="text" name="categoria" value="${aviso.categoria}" />
                    </td>
                    
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"/></td>
                </tr>
            </table>
        </form>
                              
    </body>
</html>
