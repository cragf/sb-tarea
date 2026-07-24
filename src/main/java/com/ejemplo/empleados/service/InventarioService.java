package com.ejemplo.empleados.service;
import com.ejemplo.empleados.model.Inventario;
import java.util.List;
import java.util.Optional;
public interface InventarioService {
    List<Inventario> listarTodos();
    List<Inventario> listarActivos();
    Optional<Inventario> buscarPorId(Integer id);
    Inventario guardar(Inventario inventario);
    Inventario actualizar(Integer id, Inventario inventario);
    void eliminar(Integer id);
    void desactivar(Integer id);
    List<Inventario> buscarPorCategoria(String categoria);
    List<Inventario> buscarPorNombre(String nombre);
}
