package com.ejemplo.empleados.service;
import com.ejemplo.empleados.model.Empleado;
import java.util.List;
import java.util.Optional;
public interface EmpleadoService {
    List<Empleado> listarTodos();
    List<Empleado> listarActivos();
    Optional<Empleado> buscarPorId(Integer id);
    Empleado guardar(Empleado empleado);
    Empleado actualizar(Integer id, Empleado empleado);
    void eliminar(Integer id);
    void desactivar(Integer id);
    List<Empleado> buscarPorPuesto(String puesto);
    List<Empleado> buscarPorNombre(String nombre);
}
