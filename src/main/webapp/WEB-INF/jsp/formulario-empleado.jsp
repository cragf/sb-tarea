<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: #f5f7fa; padding: 20px; }
        .container { max-width: 600px; margin: 0 auto; background: white; padding: 40px; border-radius: 15px; box-shadow: 0 5px 20px rgba(0,0,0,0.1); }
        h1 { color: #333; margin-bottom: 30px; text-align: center; }
        .form-group { margin-bottom: 20px; }
        label { display: block; font-weight: 600; color: #555; margin-bottom: 5px; }
        input, select { width: 100%; padding: 12px 15px; border: 2px solid #e0e0e0; border-radius: 8px; font-size: 1em; transition: border-color 0.3s; }
        input:focus, select:focus { outline: none; border-color: #667eea; }
        .btn { padding: 12px 30px; border: none; border-radius: 8px; font-weight: bold; font-size: 1em; cursor: pointer; transition: all 0.3s; }
        .btn-primary { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; width: 100%; }
        .btn-primary:hover { transform: translateY(-2px); box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4); }
        .btn-secondary { background: #6c757d; color: white; text-decoration: none; display: inline-block; text-align: center; padding: 12px 30px; border-radius: 8px; }
        .btn-secondary:hover { background: #5a6268; }
        .buttons { display: flex; gap: 10px; margin-top: 20px; }
        .buttons form { flex: 1; }
        .buttons a { flex: 1; }
        .error { color: #dc3545; font-size: 0.9em; margin-top: 5px; }
        .form-row { display: flex; gap: 15px; }
        .form-row .form-group { flex: 1; }
        @media (max-width: 768px) { .form-row { flex-direction: column; } }
    </style>
</head>
<body>
    <div class="container">
        <h1></h1>
        <form:form action="" method="post" modelAttribute="empleado">
            <div class="form-row">
                <div class="form-group">
                    <label for="nombre">Nombre *</label>
                    <form:input path="nombre" required="true" placeholder="Ingrese el nombre"/>
                </div>
                <div class="form-group">
                    <label for="apellido">Apellido *</label>
                    <form:input path="apellido" required="true" placeholder="Ingrese el apellido"/>
                </div>
            </div>
            <div class="form-group">
                <label for="email">Email *</label>
                <form:input path="email" type="email" required="true" placeholder="ejemplo@correo.com"/>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="puesto">Puesto *</label>
                    <form:input path="puesto" required="true" placeholder="Ej: Desarrollador"/>
                </div>
                <div class="form-group">
                    <label for="salario">Salario *</label>
                    <form:input path="salario" type="number" step="0.01" required="true" placeholder="0.00"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="telefono">Teléfono</label>
                    <form:input path="telefono" placeholder="Ej: 809-555-1234"/>
                </div>
                <div class="form-group">
                    <label for="fechaContratacion">Fecha Contratación</label>
                    <form:input path="fechaContratacion" type="date"/>
                </div>
            </div>
            <div class="buttons">
                <button type="submit" class="btn btn-primary"> Empleado</button>
                <a href="/empleados" class="btn-secondary">Cancelar</a>
            </div>
        </form:form>
        <c:if test="">
            <div style="margin-top:20px;padding:15px;border-radius:8px;background:#f8d7da;color:#721c24;"></div>
        </c:if>
    </div>
</body>
</html>
