package com.ejemplo.empleados.repository;
import com.ejemplo.empleados.model.Inventario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
@Repository
public interface InventarioRepository extends JpaRepository<Inventario, Integer> {
    List<Inventario> findByActivo(Integer activo);
    List<Inventario> findByCategoria(String categoria);
    List<Inventario> findByNombreProductoContaining(String nombreProducto);
}
