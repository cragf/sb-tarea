package com.ejemplo.empleados.service;
import com.ejemplo.empleados.model.Empleado;
import com.ejemplo.empleados.repository.EmpleadoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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
        return empleadoRepository.findByActivo(1);
    }
    @Override
    public Optional<Empleado> buscarPorId(Integer id) {
        return empleadoRepository.findById(id);
    }
    @Override
    public Empleado guardar(Empleado empleado) {
        if (empleado.getActivo() == null) {
            empleado.setActivo(1);
        }
        return empleadoRepository.save(empleado);
    }
    @Override
    public Empleado actualizar(Integer id, Empleado empleado) {
        Empleado existente = empleadoRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("Empleado no encontrado con id: " + id));
        existente.setNombre(empleado.getNombre());
        existente.setDepartamento(empleado.getDepartamento());
        existente.setPuesto(empleado.getPuesto());
        existente.setSalario(empleado.getSalario());
        existente.setCorreo(empleado.getCorreo());
        return empleadoRepository.save(existente);
    }
    @Override
    public void eliminar(Integer id) {
        empleadoRepository.deleteById(id);
    }
    @Override
    public void desactivar(Integer id) {
        Empleado empleado = empleadoRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("Empleado no encontrado con id: " + id));
        empleado.setActivo(0);
        empleadoRepository.save(empleado);
    }
    @Override
    public List<Empleado> buscarPorPuesto(String puesto) {
        return empleadoRepository.findByPuesto(puesto);
    }
    @Override
    public List<Empleado> buscarPorNombre(String nombre) {
        return empleadoRepository.findByNombreContaining(nombre);
    }
}
