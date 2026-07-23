package com.example.demo.service;

import com.example.demo.entity.Empleado;
import java.util.List;
import java.util.Optional;

public interface IEmpleadoService {
    List<Empleado> listarTodos();
    Optional<Empleado> obtenerPorId(Integer id);
    Empleado guardar(Empleado empleado);
    void eliminar(Integer id);
    List<Empleado> buscarPorDepartamento(String departamento);
    List<Empleado> buscarActivos();
}