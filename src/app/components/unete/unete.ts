import { Component, signal } from '@angular/core';

@Component({
  selector: 'app-unete',
  imports: [],
  templateUrl: './unete.html',
  styleUrl: './unete.css',
})
export class Unete {

  vistaActual = signal<string>('seleccion');

  seleccionarOpcion(opcion: string) {
    this.vistaActual.set(opcion);
    //console.log('Opción elegida:', opcion);
  }
}
