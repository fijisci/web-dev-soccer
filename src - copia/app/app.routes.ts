import { Routes } from '@angular/router';
import { Landing } from './components/landing/landing';
import { Layout } from './components/layout/layout';

export const routes: Routes = [
  {
    path: '',
    component: Layout,
    children: [
      {
        path: '',
        component: Landing
      },
    ]
  },
  
  {
    path: '**',
    redirectTo: ''
  }
];