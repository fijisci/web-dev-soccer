import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { Navbar } from './components/navbar/navbar';
import { Unete } from './components/unete/unete';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, Navbar, Unete],
  templateUrl: './app.html',
  styleUrl: './app.css'
})
export class App {
  protected readonly title = signal('final');
}