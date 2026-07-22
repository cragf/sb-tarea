package com.example.demo.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "empleados")
public class Empleado {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDempleado")
    private Integer idEmpleado;
    
    @Column(name = "nombre", nullable = false, length = 50)
    private String nombre;
    
    @Column(name = "departamento", nullable = false, length = 50)
    private String departamento;
    
    @Column(name = "puesto", nullable = false, length = 100)
    private String puesto;
    
    @Column(name = "salario", precision = 18, scale = 2)
    private BigDecimal salario;
    
    @Column(name = "correo", length = 100)
    private String correo;
    
    @Column(name = "activo", length = 3)
    private String activo = "Sí";
    
    // Constructores
    public Empleado() {}
    
    public Empleado(String nombre, String departamento, String puesto, 
                   BigDecimal salario, String correo) {
        this.nombre = nombre;
        this.departamento = departamento;
        this.puesto = puesto;
        this.salario = salario;
        this.correo = correo;
        this.activo = "Sí";
    }
    
    // Getters y Setters
    public Integer getIdEmpleado() { return idEmpleado; }
    public void setIdEmpleado(Integer idEmpleado) { this.idEmpleado = idEmpleado; }
    
    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }
    
    public String getDepartamento() { return departamento; }
    public void setDepartamento(String departamento) { this.departamento = departamento; }
    
    public String getPuesto() { return puesto; }
    public void setPuesto(String puesto) { this.puesto = puesto; }
    
    public BigDecimal getSalario() { return salario; }
    public void setSalario(BigDecimal salario) { this.salario = salario; }
    
    public String getCorreo() { return correo; }
    public void setCorreo(String correo) { this.correo = correo; }
    
    public String getActivo() { return activo; }
    public void setActivo(String activo) { this.activo = activo; }
}