import { Component, OnInit, inject, signal} from '@angular/core';


export interface Partido {
  id: number;
  equipoLocal: string;
  equipoVisitante: string;
  golesLocal: number;
  golesVisitante: number;
}


@Component({
  selector: 'app-landing',
  standalone: true,
  imports: [],
  templateUrl: './landing.html',
  styleUrl: './landing.css'
})
export class Landing implements OnInit {
  //partidosService = inject(PartidosService);

  // Inicia como un arreglo vacío: por eso la sección empieza limpia
  ultimosPartidos = signal<Partido[]>([]);

  ngOnInit(): void {
    this.cargarUltimosResultados();
  }

  cargarUltimosResultados(): void {
    // Aquí haces el query a tu base de datos a través de tu servicio:
    /*
    this.partidosService.getUltimosCinco().subscribe({
      next: (resultados) => {
        this.ultimosPartidos.set(resultados);
      },
      error: (err) => console.error('Error al cargar partidos', err)
    });
    */
  }
}