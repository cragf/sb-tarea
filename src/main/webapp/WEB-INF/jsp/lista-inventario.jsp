<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
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
                            <i class="bi bi-box-seam text-primary me-2"></i>
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
                    <c:if test="">
                        <div class="alert alert- alert-dismissible fade show rounded-3" role="alert">
                            <i class="bi bi- me-2"></i>
                            
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        </div>
                    </c:if>

                    <form action="/inventario/buscar" method="get" class="row g-3 mb-4">
                        <div class="col-md-5">
                            <input type="text" class="form-control rounded-pill" name="nombre" placeholder="Buscar por nombre...">
                        </div>
                        <div class="col-md-5">
                            <input type="text" class="form-control rounded-pill" name="categoria" placeholder="Buscar por categor?a...">
                        </div>
                        <div class="col-md-2">
                            <button type="submit" class="btn btn-primary rounded-pill w-100">
                                <i class="bi bi-search me-2"></i>Buscar
                            </button>
                        </div>
                    </form>

                    <c:choose>
                        <c:when test="">
                            <div class="text-center py-5">
                                <i class="bi bi-inbox" style="font-size: 4rem; color: #ccc;"></i>
                                <p class="text-muted mt-3">No hay productos en el inventario</p>
                                <a href="/inventario/nuevo" class="btn btn-primary rounded-pill mt-2">
                                    <i class="bi bi-plus-circle me-2"></i>Crear primer producto
                                </a>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="table-responsive">
                                <table class="table table-hover align-middle">
                                    <thead class="table-light">
                                        <tr>
                                            <th>ID</th>
                                            <th>Producto</th>
                                            <th>Categor?a</th>
                                            <th>Cantidad</th>
                                            <th>Precio</th>
                                            <th>Proveedor</th>
                                            <th>Estado</th>
                                            <th class="text-center">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="" var="p">
                                            <tr>
                                                <td class="fw-bold"></td>
                                                <td><strong></strong></td>
                                                <td><span class="badge bg-info bg-opacity-10 text-info"></span></td>
                                                <td></td>
                                                <td>spring-boot:run{p.precio}</td>
                                                <td></td>
                                                <td>
                                                    <span class="badge  rounded-pill px-3 py-2">
                                                        
                                                    </span>
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-center gap-1">
                                                        <a href="/inventario/editar/" class="btn btn-warning btn-sm rounded-pill px-3">
                                                            <i class="bi bi-pencil"></i>
                                                        </a>
                                                        <a href="/inventario/eliminar/" class="btn btn-danger btn-sm rounded-pill px-3" onclick="return confirm('?Eliminar este producto?')">
                                                            <i class="bi bi-trash"></i>
                                                        </a>
                                                        <c:if test="">
                                                            <a href="/inventario/desactivar/" class="btn btn-secondary btn-sm rounded-pill px-3" onclick="return confirm('?Desactivar este producto?')">
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
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
