import { Component } from "@angular/core";
import { RouterOutlet } from "@angular/router";

@Component({
  selector: "app-root",
  standalone: true,
  imports: [RouterOutlet],
  template: `
    <main class="app-shell">
      <h1>PDLC Angular Template</h1>
      <router-outlet />
    </main>
  `,
  styles: [`
    .app-shell {
      display: grid;
      gap: 1rem;
      padding: 2rem;
    }
  `]
})
export class AppComponent {}
