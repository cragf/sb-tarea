package com.example.demo.service.impl;

import com.example.demo.entity.Empleado;
import com.example.demo.repository.EmpleadoRepository;
import com.example.demo.service.IEmpleadoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class EmpleadoService implements IEmpleadoService {
    
    @Autowired
    private EmpleadoRepository empleadoRepository;
    
    @Override
    public List<Empleado> listarTodos() {
        return empleadoRepository.findAll();
    }
    
    @Override
    public Optional<Empleado> obtenerPorId(Integer id) {
        return empleadoRepository.findById(id);
    }
    
    @Override
    public Empleado guardar(Empleado empleado) {
        return empleadoRepository.save(empleado);
    }
    
    @Override
    public void eliminar(Integer id) {
        empleadoRepository.deleteById(id);
    }
    
    @Override
    public List<Empleado> buscarPorDepartamento(String departamento) {
        return empleadoRepository.findByDepartamento(departamento);
    }
    
    @Override
    public List<Empleado> buscarActivos() {
        return empleadoRepository.findByActivo("Sí");
    }
}