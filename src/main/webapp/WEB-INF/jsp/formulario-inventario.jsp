<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
</head>
<body>
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card shadow-lg border-0 rounded-4">
                    <div class="card-header bg-white border-0 pt-4">
                        <h3 class="fw-bold text-dark m-0">
                            <i class="bi bi- text-primary me-2"></i>
                        </h3>
                    </div>
                    <div class="card-body">
                        <form:form action="" method="post" modelAttribute="producto">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label fw-semibold">Nombre Producto *</label>
                                    <form:input path="nombreProducto" class="form-control rounded-pill" required="true" placeholder="Ingrese el nombre"/>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label fw-semibold">Categor?a *</label>
                                    <form:input path="categoria" class="form-control rounded-pill" required="true" placeholder="Ej: Electr?nica"/>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label fw-semibold">Cantidad *</label>
                                    <form:input path="cantidad" type="number" class="form-control rounded-pill" required="true" placeholder="0"/>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label fw-semibold">Precio *</label>
                                    <form:input path="precio" type="number" step="0.01" class="form-control rounded-pill" required="true" placeholder="0.00"/>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label fw-semibold">Proveedor</label>
                                    <form:input path="proveedor" class="form-control rounded-pill" placeholder="Ej: Dell"/>
                                </div>
                                <div class="col-12">
                                    <label class="form-label fw-semibold">Fecha Ingreso</label>
                                    <form:input path="fechaIngreso" type="date" class="form-control rounded-pill"/>
                                </div>
                                <div class="col-12 mt-4">
                                    <div class="d-flex gap-3">
                                        <button type="submit" class="btn btn-primary rounded-pill px-5 py-2 flex-grow-1">
                                            <i class="bi bi- me-2"></i> Producto
                                        </button>
                                        <a href="/inventario" class="btn btn-outline-secondary rounded-pill px-5 py-2">
                                            <i class="bi bi-x-circle me-2"></i>Cancelar
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </form:form>
                        <c:if test="">
                            <div class="alert alert-danger alert-dismissible fade show mt-4 rounded-3" role="alert">
                                <i class="bi bi-exclamation-circle me-2"></i>
                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
