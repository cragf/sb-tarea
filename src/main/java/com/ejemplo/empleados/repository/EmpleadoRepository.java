package com.ejemplo.empleados.repository;
import com.ejemplo.empleados.model.Empleado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
@Repository
public interface EmpleadoRepository extends JpaRepository<Empleado, Integer> {
    List<Empleado> findByActivo(Integer activo);
    List<Empleado> findByPuesto(String puesto);
    List<Empleado> findByNombreContaining(String nombre);
}
