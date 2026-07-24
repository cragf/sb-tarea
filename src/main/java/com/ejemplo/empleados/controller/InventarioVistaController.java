package com.ejemplo.empleados.controller;
import com.ejemplo.empleados.model.Inventario;
import com.ejemplo.empleados.service.InventarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
@Controller
@RequestMapping("/inventario-vista")
public class InventarioVistaController {
    @Autowired
    private InventarioService inventarioService;
    @GetMapping
    public ModelAndView listar() {
        List<Inventario> productos = inventarioService.listarTodos();
        ModelAndView mv = new ModelAndView("lista-inventario");
        mv.addObject("productos", productos);
        mv.addObject("titulo", "Lista de Inventario");
        return mv;
    }
}
