package com.ejemplo.empleados.model;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.time.LocalDate;
@Entity
@Table(name = "empleados")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Empleado {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false, length = 100)
    private String nombre;
    @Column(nullable = false, length = 100)
    private String apellido;
    @Column(unique = true, nullable = false, length = 150)
    private String email;
    @Column(nullable = false, length = 50)
    private String puesto;
    @Column(name = "fecha_contratacion")
    private LocalDate fechaContratacion;
    @Column(nullable = false)
    private Double salario;
    @Column(length = 20)
    private String telefono;
    private Boolean activo = true;
}
