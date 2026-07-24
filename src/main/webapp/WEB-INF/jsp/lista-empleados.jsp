<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Empleados</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-4">
        <h1>Lista de Empleados</h1>
        <a href="/empleados/nuevo" class="btn btn-primary mb-3">Nuevo Empleado</a>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Departamento</th>
                    <th>Puesto</th>
                    <th>Salario</th>
                    <th>Correo</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${empleados}" var="emp">
                    <tr>
                        <td>${emp.idempleado}</td>
                        <td>${emp.nombre}</td>
                        <td>${emp.departamento}</td>
                        <td>${emp.puesto}</td>
                        <td>$${emp.salario}</td>
                        <td>${emp.correo}</td>
                        <td>${emp.activo == 1 ? 'Activo' : 'Inactivo'}</td>
                        <td>
                            <a href="/empleados/editar/${emp.idempleado}" class="btn btn-warning btn-sm">Editar</a>
                            <a href="/empleados/eliminar/${emp.idempleado}" class="btn btn-danger btn-sm">Eliminar</a>
                            <c:if test="${emp.activo == 1}">
                                <a href="/empleados/desactivar/${emp.idempleado}" class="btn btn-secondary btn-sm">Desactivar</a>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>