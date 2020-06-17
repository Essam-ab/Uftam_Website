import { Component, OnInit } from '@angular/core';
import { AuthService } from '../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-dashboard-home',
  templateUrl: './dashboard-home.component.html',
  styleUrls: ['./dashboard-home.component.css']
})
export class DashboardHomeComponent implements OnInit {

  constructor(
    private _auth: AuthService,
    private router: Router
  ) { }

  ngOnInit() {
    if (this._auth.isLoggedIn() === 'false') {
      this.router.navigateByUrl('/');
    }
  }

}
