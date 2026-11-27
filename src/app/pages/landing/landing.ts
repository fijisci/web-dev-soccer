import { HttpClient } from '@angular/common/http';
import { Component, inject, OnInit, signal } from '@angular/core';

@Component({
  selector: 'app-landing',
  imports: [],
  templateUrl: './landing.html',
  styleUrl: './landing.css'
})
export class Landing implements OnInit {
  
  http = inject(HttpClient);
  
  heroImg = 'images/jugadoras-feliz.jpeg';
  equipoLogo = 'images/escudo-equipo.png';
  usuario = 'images/usuario.png';

  fotosQuienesSomos = signal<string[]>([
    this.heroImg,
    this.usuario,
    'images/logo.png',
  ]);

  pilaresInclusion = [
    {
      icono: 'bi-person-wheelchair',
      texto: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    },
    {
      icono: 'bi-people-fill',
      texto: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    },
    {
      icono: 'bi-heart-pulse-fill',
      texto: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    }
  ];

  especialistas = signal([
    {
      nombre: 'Persona 1',
      profesion: 'Profesión',
      foto: this.usuario,
      instagram: 'https://instagram.com',
      contacto: 'https://www.whatsapp.com/?lang=es'
    },
    {
      nombre: 'Persona 2',
      profesion: 'Profesión',
      foto: this.usuario,
      instagram: 'https://instagram.com',
      contacto: 'https://www.whatsapp.com/?lang=es'
    },
    {
      nombre: 'Persona 3',
      profesion: 'Profesión',
      foto: this.usuario,
      instagram: 'https://instagram.com',
      contacto: 'https://www.whatsapp.com/?lang=es'
    },
    {
      nombre: 'Persona 4',
      profesion: 'Profesión',
      foto: this.usuario,
      instagram: 'https://instagram.com',
      contacto: 'https://www.whatsapp.com/?lang=es'
    },
  ]);

  jugadoraDestacada = signal<any>(null);

  ngOnInit(): void {
    this.obtenerJugadoras();
  }

  obtenerJugadoras() {
    this.http.get<any[]>('http://localhost/bravo/final/main.php').subscribe(res => {
      if (res.length > 0) {
        const indiceAleatorio = Math.floor(Math.random() * res.length);
        this.jugadoraDestacada.set(res[indiceAleatorio]);
      }
    });
  }
}