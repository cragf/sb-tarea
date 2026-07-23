package com.ejemplo.empleados.service;
import com.ejemplo.empleados.model.Empleado;
import com.ejemplo.empleados.repository.EmpleadoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
@Service
@Transactional
public class EmpleadoServiceImpl implements EmpleadoService {
    @Autowired
    private EmpleadoRepository empleadoRepository;
    @Override
    public List<Empleado> listarTodos() {
        return empleadoRepository.findAll();
    }
    @Override
    public List<Empleado> listarActivos() {
        return empleadoRepository.findByActivoTrue();
    }
    @Override
    public Optional<Empleado> buscarPorId(Long id) {
        return empleadoRepository.findById(id);
    }
    @Override
    public Empleado guardar(Empleado empleado) {
        if (empleado.getFechaContratacion() == null) {
            empleado.setFechaContratacion(LocalDate.now());
        }
        if (empleado.getActivo() == null) {
            empleado.setActivo(true);
        }
        return empleadoRepository.save(empleado);
    }
    @Override
    public Empleado actualizar(Long id, Empleado empleado) {
        Empleado existente = empleadoRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("Empleado no encontrado con id: " + id));
        existente.setNombre(empleado.getNombre());
        existente.setApellido(empleado.getApellido());
        existente.setEmail(empleado.getEmail());
        existente.setPuesto(empleado.getPuesto());
        existente.setSalario(empleado.getSalario());
        existente.setTelefono(empleado.getTelefono());
        existente.setFechaContratacion(empleado.getFechaContratacion());
        return empleadoRepository.save(existente);
    }
    @Override
    public void eliminar(Long id) {
        empleadoRepository.deleteById(id);
    }
    @Override
    public void desactivar(Long id) {
        Empleado empleado = empleadoRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("Empleado no encontrado con id: " + id));
        empleado.setActivo(false);
        empleadoRepository.save(empleado);
    }
    @Override
    public List<Empleado> buscarPorPuesto(String puesto) {
        return empleadoRepository.findByPuesto(puesto);
    }
    @Override
    public List<Empleado> buscarPorNombre(String nombre) {
        return empleadoRepository.findByNombreContainingOrApellidoContaining(nombre, nombre);
    }
}
