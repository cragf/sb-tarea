package com.ejemplo.empleados;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication
public class EmpleadosApplication {
    public static void main(String[] args) {
        SpringApplication.run(EmpleadosApplication.class, args);
        System.out.println("==========================================");
        System.out.println("🚀 Sistema de Empleados iniciado!");
        System.out.println("📊 H2 Console: http://localhost:8080/h2-console");
        System.out.println("📋 Aplicación: http://localhost:8080/empleados");
        System.out.println("==========================================");
    }
}
