package com.example.demo.repository;

import com.example.demo.entity.Empleado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface EmpleadoRepository extends JpaRepository<Empleado, Integer> {
    // Métodos personalizados (si los necesitas)
    List<Empleado> findByDepartamento(String departamento);
    List<Empleado> findByActivo(String activo);
}