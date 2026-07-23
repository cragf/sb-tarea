<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background: #f5f7fa; display: flex; justify-content: center; align-items: center; height: 100vh; }
        .container { background: white; padding: 50px; border-radius: 20px; box-shadow: 0 20px 60px rgba(0,0,0,0.1); text-align: center; max-width: 500px; }
        .error-icon { font-size: 80px; color: #dc3545; }
        h1 { color: #333; margin: 20px 0; }
        p { color: #666; margin-bottom: 30px; }
        .btn { display: inline-block; padding: 12px 30px; background: #667eea; color: white; text-decoration: none; border-radius: 8px; }
        .btn:hover { background: #5a67d8; }
    </style>
</head>
<body>
    <div class="container">
        <div class="error-icon">⚠️</div>
        <h1>¡Ups! Algo salió mal</h1>
        <p>Ha ocurrido un error en el sistema. Por favor, intenta nuevamente.</p>
        <a href="/empleados" class="btn">Volver a Empleados</a>
    </div>
</body>
</html>
