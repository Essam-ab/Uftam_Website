import { Component, OnInit } from '@angular/core';
import { AdminComponent } from '../admin/admin.component';
import { AdminTopNavComponent } from '../admin-top-nav/admin-top-nav.component';
import { AuthService } from '../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-admin-side-nav',
  templateUrl: './admin-side-nav.component.html',
  styleUrls: ['./admin-side-nav.component.css']
})
export class AdminSideNavComponent implements OnInit {

  constructor(
    private c_admin: AdminComponent,
    private c_navTop: AdminTopNavComponent,
    private _auth: AuthService,
    private router: Router
  ) { }

  ngOnInit() {
  }

  collapse = "";

  logout(event) {
    this._auth.setLoggedIn(false);
    if (this._auth.isLoggedIn() === 'false') {
      this.router.navigateByUrl('/');
    }
  }
}
