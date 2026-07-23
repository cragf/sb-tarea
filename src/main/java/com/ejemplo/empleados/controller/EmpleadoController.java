package com.ejemplo.empleados.controller;
import com.ejemplo.empleados.model.Empleado;
import com.ejemplo.empleados.service.EmpleadoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.util.List;
@Controller
@RequestMapping("/empleados")
public class EmpleadoController {
    @Autowired
    private EmpleadoService empleadoService;
    @GetMapping
    public String listarEmpleados(Model model) {
        List<Empleado> empleados = empleadoService.listarTodos();
        model.addAttribute("empleados", empleados);
        model.addAttribute("titulo", "Lista de Empleados");
        return "lista-empleados";
    }
    @GetMapping("/nuevo")
    public String mostrarFormularioNuevo(Model model) {
        model.addAttribute("empleado", new Empleado());
        model.addAttribute("titulo", "Nuevo Empleado");
        model.addAttribute("accion", "Crear");
        return "formulario-empleado";
    }
    @PostMapping("/guardar")
    public String guardarEmpleado(@ModelAttribute Empleado empleado, 
                                  RedirectAttributes redirectAttributes) {
        try {
            empleadoService.guardar(empleado);
            redirectAttributes.addFlashAttribute("mensaje", "Empleado guardado exitosamente!");
            redirectAttributes.addFlashAttribute("tipoMensaje", "success");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("mensaje", "Error al guardar: " + e.getMessage());
            redirectAttributes.addFlashAttribute("tipoMensaje", "error");
        }
        return "redirect:/empleados";
    }
    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable Long id, Model model) {
        Empleado empleado = empleadoService.buscarPorId(id)
            .orElseThrow(() -> new RuntimeException("Empleado no encontrado"));
        model.addAttribute("empleado", empleado);
        model.addAttribute("titulo", "Editar Empleado");
        model.addAttribute("accion", "Actualizar");
        return "formulario-empleado";
    }
    @PostMapping("/actualizar/{id}")
    public String actualizarEmpleado(@PathVariable Long id, 
                                     @ModelAttribute Empleado empleado,
                                     RedirectAttributes redirectAttributes) {
        try {
            empleadoService.actualizar(id, empleado);
            redirectAttributes.addFlashAttribute("mensaje", "Empleado actualizado exitosamente!");
            redirectAttributes.addFlashAttribute("tipoMensaje", "success");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("mensaje", "Error al actualizar: " + e.getMessage());
            redirectAttributes.addFlashAttribute("tipoMensaje", "error");
        }
        return "redirect:/empleados";
    }
    @GetMapping("/eliminar/{id}")
    public String eliminarEmpleado(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        try {
            empleadoService.eliminar(id);
            redirectAttributes.addFlashAttribute("mensaje", "Empleado eliminado exitosamente!");
            redirectAttributes.addFlashAttribute("tipoMensaje", "success");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("mensaje", "Error al eliminar: " + e.getMessage());
            redirectAttributes.addFlashAttribute("tipoMensaje", "error");
        }
        return "redirect:/empleados";
    }
    @GetMapping("/desactivar/{id}")
    public String desactivarEmpleado(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        try {
            empleadoService.desactivar(id);
            redirectAttributes.addFlashAttribute("mensaje", "Empleado desactivado exitosamente!");
            redirectAttributes.addFlashAttribute("tipoMensaje", "warning");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("mensaje", "Error al desactivar: " + e.getMessage());
            redirectAttributes.addFlashAttribute("tipoMensaje", "error");
        }
        return "redirect:/empleados";
    }
    @GetMapping("/buscar")
    public String buscarEmpleados(@RequestParam(required = false) String nombre,
                                  @RequestParam(required = false) String puesto,
                                  Model model) {
        List<Empleado> empleados;
        if (nombre != null && !nombre.isEmpty()) {
            empleados = empleadoService.buscarPorNombre(nombre);
        } else if (puesto != null && !puesto.isEmpty()) {
            empleados = empleadoService.buscarPorPuesto(puesto);
        } else {
            empleados = empleadoService.listarTodos();
        }
        model.addAttribute("empleados", empleados);
        model.addAttribute("titulo", "Resultados de Búsqueda");
        return "lista-empleados";
    }
}
