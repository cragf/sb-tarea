package com.ejemplo.empleados.service;
import com.ejemplo.empleados.model.Inventario;
import com.ejemplo.empleados.repository.InventarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
@Service
@Transactional
public class InventarioServiceImpl implements InventarioService {
    @Autowired
    private InventarioRepository inventarioRepository;
    @Override
    public List<Inventario> listarTodos() {
        return inventarioRepository.findAll();
    }
    @Override
    public List<Inventario> listarActivos() {
        return inventarioRepository.findByActivo(1);
    }
    @Override
    public Optional<Inventario> buscarPorId(Integer id) {
        return inventarioRepository.findById(id);
    }
    @Override
    public Inventario guardar(Inventario inventario) {
        if (inventario.getFechaIngreso() == null) {
            inventario.setFechaIngreso(LocalDate.now());
        }
        if (inventario.getActivo() == null) {
            inventario.setActivo(1);
        }
        return inventarioRepository.save(inventario);
    }
    @Override
    public Inventario actualizar(Integer id, Inventario inventario) {
        Inventario existente = inventarioRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("Producto no encontrado con id: " + id));
        existente.setNombreProducto(inventario.getNombreProducto());
        existente.setCategoria(inventario.getCategoria());
        existente.setCantidad(inventario.getCantidad());
        existente.setPrecio(inventario.getPrecio());
        existente.setProveedor(inventario.getProveedor());
        existente.setFechaIngreso(inventario.getFechaIngreso());
        return inventarioRepository.save(existente);
    }
    @Override
    public void eliminar(Integer id) {
        inventarioRepository.deleteById(id);
    }
    @Override
    public void desactivar(Integer id) {
        Inventario inventario = inventarioRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("Producto no encontrado con id: " + id));
        inventario.setActivo(0);
        inventarioRepository.save(inventario);
    }
    @Override
    public List<Inventario> buscarPorCategoria(String categoria) {
        return inventarioRepository.findByCategoria(categoria);
    }
    @Override
    public List<Inventario> buscarPorNombre(String nombre) {
        return inventarioRepository.findByNombreProductoContaining(nombre);
    }
}
