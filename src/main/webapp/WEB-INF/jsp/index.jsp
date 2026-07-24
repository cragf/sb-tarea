<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Empleados</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <style>
        body { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); min-height: 100vh; }
        .card { border-radius: 20px; box-shadow: 0 20px 60px rgba(0,0,0,0.3); border: none; }
        .btn-primary { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); border: none; }
        .btn-primary:hover { transform: translateY(-2px); box-shadow: 0 10px 30px rgba(102,126,234,0.4); }
        .feature-icon { font-size: 2rem; color: #667eea; }
    </style>
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center min-vh-100">
        <div class="card p-5 text-center" style="max-width: 550px; width: 100%;">
            <div class="mb-4">
                <i class="bi bi-people-fill" style="font-size: 4rem; color: #667eea;"></i>
            </div>
            <h1 class="display-5 fw-bold text-dark">Sistema de Empleados</h1>
            <p class="text-muted mb-4">Gesti&oacute;n completa de recursos humanos</p>
            <div class="d-grid gap-2">
                <a href="/empleados" class="btn btn-primary btn-lg py-3 rounded-pill">
                    <i class="bi bi-people me-2"></i>Ver Empleados
                </a>
                <a href="/inventario" class="btn btn-success btn-lg py-3 rounded-pill">
                    <i class="bi bi-box-seam me-2"></i>Ver Inventario
                </a>
            </div>
            <div class="mt-4 text-start">
                <div class="d-flex align-items-center gap-3 py-2 border-bottom">
                    <i class="bi bi-list-check feature-icon"></i>
                    <span>Listar todos los empleados</span>
                </div>
                <div class="d-flex align-items-center gap-3 py-2 border-bottom">
                    <i class="bi bi-person-plus feature-icon"></i>
                    <span>Crear nuevos empleados</span>
                </div>
                <div class="d-flex align-items-center gap-3 py-2">
                    <i class="bi bi-box-seam feature-icon"></i>
                    <span>Gestionar inventario</span>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
