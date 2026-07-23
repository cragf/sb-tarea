<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: #f5f7fa; padding: 20px; }
        .container { max-width: 1200px; margin: 0 auto; background: white; padding: 30px; border-radius: 15px; box-shadow: 0 5px 20px rgba(0,0,0,0.1); }
        .header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 30px; flex-wrap: wrap; gap: 15px; }
        h1 { color: #333; }
        .btn { padding: 10px 25px; border: none; border-radius: 8px; text-decoration: none; font-weight: bold; transition: all 0.3s; display: inline-block; }
        .btn-primary { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; }
        .btn-primary:hover { transform: translateY(-2px); box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4); }
        .btn-success { background: #28a745; color: white; }
        .btn-success:hover { background: #218838; }
        .btn-warning { background: #ffc107; color: #333; }
        .btn-warning:hover { background: #e0a800; }
        .btn-danger { background: #dc3545; color: white; }
        .btn-danger:hover { background: #c82333; }
        .btn-sm { padding: 5px 12px; font-size: 0.9em; margin: 2px; }
        .search-form { display: flex; gap: 10px; flex-wrap: wrap; margin-bottom: 20px; }
        .search-form input, .search-form select { padding: 10px 15px; border: 2px solid #e0e0e0; border-radius: 8px; font-size: 1em; flex: 1; min-width: 200px; }
        .search-form input:focus, .search-form select:focus { outline: none; border-color: #667eea; }
        .mensaje { padding: 15px; border-radius: 8px; margin-bottom: 20px; font-weight: bold; }
        .mensaje-success { background: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .mensaje-error { background: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
        .mensaje-warning { background: #fff3cd; color: #856404; border: 1px solid #ffeeba; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th { background: #f8f9fa; color: #333; padding: 15px; text-align: left; border-bottom: 2px solid #dee2e6; font-weight: 600; }
        td { padding: 12px 15px; border-bottom: 1px solid #e0e0e0; }
        tr:hover { background: #f8f9fa; }
        .acciones { display: flex; gap: 5px; flex-wrap: wrap; }
        .badge { padding: 3px 10px; border-radius: 20px; font-size: 0.85em; font-weight: bold; }
        .badge-success { background: #d4edda; color: #155724; }
        .badge-danger { background: #f8d7da; color: #721c24; }
        .badge-warning { background: #fff3cd; color: #856404; }
        .empty { text-align: center; padding: 40px; color: #666; }
        .empty p { font-size: 1.2em; }
        .actions-bar { display: flex; gap: 10px; flex-wrap: wrap; align-items: center; }
        @media (max-width: 768px) { .header { flex-direction: column; align-items: stretch; } .acciones { flex-direction: column; } }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1></h1>
            <div class="actions-bar">
                <a href="/empleados/nuevo" class="btn btn-primary">+ Nuevo Empleado</a>
                <a href="/" class="btn btn-secondary" style="background:#6c757d;color:white;">🏠 Inicio</a>
            </div>
        </div>
        <c:if test="">
            <div class="mensaje mensaje-"></div>
        </c:if>
        <form action="/empleados/buscar" method="get" class="search-form">
            <input type="text" name="nombre" placeholder="Buscar por nombre o apellido...">
            <input type="text" name="puesto" placeholder="Buscar por puesto...">
            <button type="submit" class="btn btn-primary">🔍 Buscar</button>
            <a href="/empleados" class="btn btn-secondary" style="background:#6c757d;color:white;text-decoration:none;padding:10px 20px;border-radius:8px;">Limpiar</a>
        </form>
        <c:choose>
            <c:when test="">
                <div class="empty">
                    <p>📭 No hay empleados registrados</p>
                    <p style="margin-top:10px;"><a href="/empleados/nuevo" class="btn btn-primary">Crear primer empleado</a></p>
                </div>
            </c:when>
            <c:otherwise>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Email</th>
                            <th>Puesto</th>
                            <th>Salario</th>
                            <th>Estado</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="" var="emp">
                            <tr>
                                <td></td>
                                <td><strong> </strong></td>
                                <td></td>
                                <td></td>
                                <td>=========================================={emp.salario}</td>
                                <td>
                                    <span class="badge ">
                                        
                                    </span>
                                </td>
                                <td>
                                    <div class="acciones">
                                        <a href="/empleados/editar/" class="btn btn-warning btn-sm">✏️ Editar</a>
                                        <a href="/empleados/eliminar/" class="btn btn-danger btn-sm" onclick="return confirm('¿Eliminar este empleado?')">🗑️ Eliminar</a>
                                        <c:if test="">
                                            <a href="/empleados/desactivar/" class="btn btn-danger btn-sm" onclick="return confirm('¿Desactivar este empleado?')">⛔ Desactivar</a>
                                        </c:if>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>
