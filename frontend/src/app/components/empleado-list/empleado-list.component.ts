import { Component, OnInit } from '@angular/core';
import { Empleado } from '../../models/empleado.model';
import { EmpleadoService } from '../../services/empleado.service';

@Component({
  selector: 'app-empleado-list',
  templateUrl: './empleado-list.component.html',
  styleUrls: ['./empleado-list.component.css']
})
export class EmpleadoListComponent implements OnInit {
  empleados: Empleado[] = [];
  mensaje: string = '';
  error: string = '';

  constructor(private empleadoService: EmpleadoService) { }

  ngOnInit(): void {
    this.cargarEmpleados();
  }

  cargarEmpleados(): void {
    this.empleadoService.listarTodos().subscribe({
      next: (data) => {
        this.empleados = data;
      },
      error: (err) => {
        this.error = 'Error al cargar los empleados: ' + err.message;
      }
    });
  }

  eliminar(id: number): void {
    if (confirm('¿Estás seguro de eliminar este empleado?')) {
      this.empleadoService.eliminar(id).subscribe({
        next: () => {
          this.mensaje = 'Empleado eliminado exitosamente';
          this.cargarEmpleados();
        },
        error: (err) => {
          this.error = 'Error al eliminar: ' + err.message;
        }
      });
    }
  }

  cerrarAlerta(): void {
    this.mensaje = '';
    this.error = '';
  }
}
