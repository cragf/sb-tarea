package com.example.demo.controller;

import com.example.demo.entity.Empleado;
import com.example.demo.service.impl.EmpleadoService;
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
        return "listarEmpleados";
    }
    
    @GetMapping("/nuevo")
    public String mostrarFormularioNuevo(Model model) {
        model.addAttribute("empleado", new Empleado());
        return "agregarEmpleado";
    }
    
    @PostMapping("/guardar")
    public String guardarEmpleado(@ModelAttribute Empleado empleado, 
                                  RedirectAttributes redirectAttributes) {
        try {
            empleadoService.guardar(empleado);
            redirectAttributes.addFlashAttribute("mensaje", "Empleado guardado exitosamente");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Error al guardar: " + e.getMessage());
        }
        return "redirect:/empleados";
    }
    
    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable Integer id, Model model) {
        Empleado empleado = empleadoService.obtenerPorId(id)
                .orElseThrow(() -> new RuntimeException("Empleado no encontrado"));
        model.addAttribute("empleado", empleado);
        return "editarEmpleado";
    }
    
    @PostMapping("/actualizar/{id}")
    public String actualizarEmpleado(@PathVariable Integer id, 
                                     @ModelAttribute Empleado empleado,
                                     RedirectAttributes redirectAttributes) {
        try {
            empleado.setIdEmpleado(id);
            empleadoService.guardar(empleado);
            redirectAttributes.addFlashAttribute("mensaje", "Empleado actualizado exitosamente");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Error al actualizar: " + e.getMessage());
        }
        return "redirect:/empleados";
    }
    
    @GetMapping("/eliminar/{id}")
    public String eliminarEmpleado(@PathVariable Integer id, 
                                   RedirectAttributes redirectAttributes) {
        try {
            empleadoService.eliminar(id);
            redirectAttributes.addFlashAttribute("mensaje", "Empleado eliminado exitosamente");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Error al eliminar: " + e.getMessage());
        }
        return "redirect:/empleados";
    }
}