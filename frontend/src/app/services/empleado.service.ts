import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Empleado } from '../models/empleado.model';

@Injectable({
  providedIn: 'root'
})
export class EmpleadoService {
  private apiUrl = 'http://localhost:8080/api/empleados';

  constructor(private http: HttpClient) { }

  listarTodos(): Observable<Empleado[]> {
    return this.http.get<Empleado[]>(this.apiUrl);
  }

  obtenerPorId(id: number): Observable<Empleado> {
    return this.http.get<Empleado>(\/\);
  }

  guardar(empleado: Empleado): Observable<Empleado> {
    return this.http.post<Empleado>(this.apiUrl, empleado);
  }

  actualizar(id: number, empleado: Empleado): Observable<Empleado> {
    return this.http.put<Empleado>(\/\, empleado);
  }

  eliminar(id: number): Observable<void> {
    return this.http.delete<void>(\/\);
  }
}
