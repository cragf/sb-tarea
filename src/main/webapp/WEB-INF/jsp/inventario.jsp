<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Inventario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
</head>
<body>
    <div class="container-fluid py-4">
        <div class="container">
            <div class="card shadow-lg border-0 rounded-4">
                <div class="card-header bg-white border-0 pt-4 pb-2">
                    <div class="d-flex flex-wrap justify-content-between align-items-center gap-3">
                        <h2 class="fw-bold text-dark m-0">
                            <i class="bi bi-box-seam text-primary me-2"></i>Lista de Inventario
                        </h2>
                        <div class="d-flex gap-2">
                            <a href="/inventario/nuevo" class="btn btn-primary rounded-pill px-4">
                                <i class="bi bi-plus-circle me-2"></i>Nuevo Producto
                            </a>
                            <a href="/" class="btn btn-outline-secondary rounded-pill px-4">
                                <i class="bi bi-house me-2"></i>Inicio
                            </a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover align-middle">
                            <thead class="table-light">
                                <tr>
                                    <th>ID</th>
                                    <th>Producto</th>
                                    <th>Categoría</th>
                                    <th>Cantidad</th>
                                    <th>Precio</th>
                                    <th>Proveedor</th>
                                    <th>Estado</th>
                                    <th class="text-center">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${productos}" var="p">
                                    <tr>
                                        <td class="fw-bold">${p.id}</td>
                                        <td><strong>${p.nombreProducto}</strong></td>
                                        <td><span class="badge bg-info bg-opacity-10 text-info">${p.categoria}</span></td>
                                        <td>${p.cantidad}</td>
                                        <td>$${p.precio}</td>
                                        <td>${p.proveedor}</td>
                                        <td>
                                            <span class="badge ${p.activo == 1 ? 'bg-success' : 'bg-danger'} rounded-pill px-3 py-2">
                                                ${p.activo == 1 ? 'Activo' : 'Inactivo'}
                                            </span>
                                        </td>
                                        <td>
                                            <div class="d-flex justify-content-center gap-1">
                                                <a href="/inventario/editar/${p.id}" class="btn btn-warning btn-sm rounded-pill px-3">
                                                    <i class="bi bi-pencil"></i>
                                                </a>
                                                <a href="/inventario/eliminar/${p.id}" class="btn btn-danger btn-sm rounded-pill px-3" onclick="return confirm('¿Eliminar este producto?')">
                                                    <i class="bi bi-trash"></i>
                                                </a>
                                                <c:if test="${p.activo == 1}">
                                                    <a href="/inventario/desactivar/${p.id}" class="btn btn-secondary btn-sm rounded-pill px-3" onclick="return confirm('¿Desactivar este producto?')">
                                                        <i class="bi bi-person-dash"></i>
                                                    </a>
                                                </c:if>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>