package com.ejemplo.empleados.service;
import com.ejemplo.empleados.model.Empleado;
import java.util.List;
import java.util.Optional;
public interface EmpleadoService {
    List<Empleado> listarTodos();
    List<Empleado> listarActivos();
    Optional<Empleado> buscarPorId(Long id);
    Empleado guardar(Empleado empleado);
    Empleado actualizar(Long id, Empleado empleado);
    void eliminar(Long id);
    void desactivar(Long id);
    List<Empleado> buscarPorPuesto(String puesto);
    List<Empleado> buscarPorNombre(String nombre);
}
