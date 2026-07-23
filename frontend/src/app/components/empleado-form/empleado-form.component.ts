import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Empleado } from '../../models/empleado.model';
import { EmpleadoService } from '../../services/empleado.service';

@Component({
  selector: 'app-empleado-form',
  templateUrl: './empleado-form.component.html',
  styleUrls: ['./empleado-form.component.css']
})
export class EmpleadoFormComponent implements OnInit {
  empleado: Empleado = {
    nombre: '',
    departamento: '',
    puesto: '',
    salario: 0,
    correo: '',
    activo: 'Sí'
  };
  isEditMode: boolean = false;
  mensaje: string = '';
  error: string = '';

  constructor(
    private empleadoService: EmpleadoService,
    private route: ActivatedRoute,
    private router: Router
  ) { }

  ngOnInit(): void {
    const id = this.route.snapshot.params['id'];
    if (id) {
      this.isEditMode = true;
      this.empleadoService.obtenerPorId(id).subscribe({
        next: (data) => {
          this.empleado = data;
        },
        error: (err) => {
          this.error = 'Error al cargar el empleado: ' + err.message;
        }
      });
    }
  }

  guardar(): void {
    if (this.isEditMode) {
      this.empleadoService.actualizar(this.empleado.idEmpleado!, this.empleado).subscribe({
        next: () => {
          this.mensaje = 'Empleado actualizado exitosamente';
          setTimeout(() => this.router.navigate(['/empleados']), 1500);
        },
        error: (err) => {
          this.error = 'Error al actualizar: ' + err.message;
        }
      });
    } else {
      this.empleadoService.guardar(this.empleado).subscribe({
        next: () => {
          this.mensaje = 'Empleado guardado exitosamente';
          setTimeout(() => this.router.navigate(['/empleados']), 1500);
        },
        error: (err) => {
          this.error = 'Error al guardar: ' + err.message;
        }
      });
    }
  }

  cancelar(): void {
    this.router.navigate(['/empleados']);
  }

  cerrarAlerta(): void {
    this.mensaje = '';
    this.error = '';
  }
}
