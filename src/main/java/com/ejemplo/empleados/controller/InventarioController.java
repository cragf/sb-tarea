package com.ejemplo.empleados.controller;
import com.ejemplo.empleados.model.Inventario;
import com.ejemplo.empleados.service.InventarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.util.List;
@Controller
@RequestMapping("/inventario")
public class InventarioController {
    @Autowired
    private InventarioService inventarioService;
    @GetMapping
    public String listarInventario(Model model) {
        List<Inventario> productos = inventarioService.listarTodos();
        System.out.println("=== DEBUG ===");
        System.out.println("Productos: " + (productos != null ? productos.size() : "null"));
        System.out.println("============");
        model.addAttribute("productos", productos);
        model.addAttribute("titulo", "Lista de Inventario");
        return "lista-inventario";
    }
    @GetMapping("/nuevo")
    public String mostrarFormularioNuevo(Model model) {
        model.addAttribute("producto", new Inventario());
        model.addAttribute("titulo", "Nuevo Producto");
        model.addAttribute("accion", "Crear");
        return "formulario-inventario";
    }
    @PostMapping("/guardar")
    public String guardarProducto(@ModelAttribute Inventario inventario, RedirectAttributes redirectAttributes) {
        try {
            inventarioService.guardar(inventario);
            redirectAttributes.addFlashAttribute("mensaje", "Producto guardado exitosamente!");
            redirectAttributes.addFlashAttribute("tipoMensaje", "success");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("mensaje", "Error al guardar: " + e.getMessage());
            redirectAttributes.addFlashAttribute("tipoMensaje", "error");
        }
        return "redirect:/inventario";
    }
    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable Integer id, Model model) {
        Inventario inventario = inventarioService.buscarPorId(id)
            .orElseThrow(() -> new RuntimeException("Producto no encontrado"));
        model.addAttribute("producto", inventario);
        model.addAttribute("titulo", "Editar Producto");
        model.addAttribute("accion", "Actualizar");
        return "formulario-inventario";
    }
    @PostMapping("/actualizar/{id}")
    public String actualizarProducto(@PathVariable Integer id, @ModelAttribute Inventario inventario, RedirectAttributes redirectAttributes) {
        try {
            inventarioService.actualizar(id, inventario);
            redirectAttributes.addFlashAttribute("mensaje", "Producto actualizado exitosamente!");
            redirectAttributes.addFlashAttribute("tipoMensaje", "success");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("mensaje", "Error al actualizar: " + e.getMessage());
            redirectAttributes.addFlashAttribute("tipoMensaje", "error");
        }
        return "redirect:/inventario";
    }
    @GetMapping("/eliminar/{id}")
    public String eliminarProducto(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
        try {
            inventarioService.eliminar(id);
            redirectAttributes.addFlashAttribute("mensaje", "Producto eliminado exitosamente!");
            redirectAttributes.addFlashAttribute("tipoMensaje", "success");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("mensaje", "Error al eliminar: " + e.getMessage());
            redirectAttributes.addFlashAttribute("tipoMensaje", "error");
        }
        return "redirect:/inventario";
    }
    @GetMapping("/desactivar/{id}")
    public String desactivarProducto(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
        try {
            inventarioService.desactivar(id);
            redirectAttributes.addFlashAttribute("mensaje", "Producto desactivado exitosamente!");
            redirectAttributes.addFlashAttribute("tipoMensaje", "warning");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("mensaje", "Error al desactivar: " + e.getMessage());
            redirectAttributes.addFlashAttribute("tipoMensaje", "error");
        }
        return "redirect:/inventario";
    }
    @GetMapping("/buscar")
    public String buscarProductos(@RequestParam(required = false) String nombre, @RequestParam(required = false) String categoria, Model model) {
        List<Inventario> productos;
        if (nombre != null && !nombre.isEmpty()) {
            productos = inventarioService.buscarPorNombre(nombre);
        } else if (categoria != null && !categoria.isEmpty()) {
            productos = inventarioService.buscarPorCategoria(categoria);
        } else {
            productos = inventarioService.listarTodos();
        }
        model.addAttribute("productos", productos);
        model.addAttribute("titulo", "Resultados de B?squeda");
        return "lista-inventario";
    }
}
