<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema de Empleados</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); height: 100vh; display: flex; justify-content: center; align-items: center; }
        .container { background: white; padding: 50px; border-radius: 20px; box-shadow: 0 20px 60px rgba(0,0,0,0.3); text-align: center; max-width: 500px; }
        h1 { color: #333; font-size: 2.5em; margin-bottom: 10px; }
        .subtitle { color: #666; margin-bottom: 30px; }
        .btn { display: inline-block; padding: 15px 40px; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); color: white; text-decoration: none; border-radius: 50px; font-size: 1.2em; transition: transform 0.3s, box-shadow 0.3s; }
        .btn:hover { transform: translateY(-3px); box-shadow: 0 10px 30px rgba(102, 126, 234, 0.4); }
        .features { margin-top: 30px; text-align: left; color: #555; }
        .features li { margin: 10px 0; list-style: none; padding: 8px 0; border-bottom: 1px solid #eee; }
        .features li:before { content: "✓ "; color: #667eea; font-weight: bold; }
    </style>
</head>
<body>
    <div class="container">
        <h1>👔 Sistema de Empleados</h1>
        <p class="subtitle">Gestión completa de recursos humanos</p>
        <a href="/empleados" class="btn">Ver Empleados</a>
        <ul class="features">
            <li>Listar todos los empleados</li>
            <li>Crear nuevos empleados</li>
            <li>Editar información existente</li>
            <li>Eliminar o desactivar registros</li>
            <li>Búsqueda por nombre y puesto</li>
        </ul>
    </div>
</body>
</html>
