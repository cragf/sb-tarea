<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inventario</title>
</head>
<body>
    <h1>Lista de Inventario</h1>

    <!-- DEBUG -->
    <p>1. productos es null? </p>
    <p>2. productos vacio? </p>
    <p>3. productos size: </p>

    <c:if test="">
        <p>4. ENTRANDO AL IF</p>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Producto</th>
                <th>Categor?a</th>
            </tr>
            <c:forEach items="" var="p">
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <c:if test="">
        <p>5. PRODUCTOS VACIO</p>
    </c:if>
</body>
</html>
