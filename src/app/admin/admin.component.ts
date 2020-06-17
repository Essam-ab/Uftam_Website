import { Component, OnInit } from '@angular/core';
import * as $ from "jquery";
import { AuthService } from '../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css']
})
export class AdminComponent implements OnInit {

  constructor(
    private _auth: AuthService,
    private router: Router
  ) { }

  ngOnInit() {
    if (this._auth.isLoggedIn() === 'false') {
      this.router.navigateByUrl('/');
    }

    $(document).ready(function () {
      $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
        $(this).toggleClass('active');
      });
    });
  }

  changeTheme() {
    document.querySelector('#Dashboard_theme').setAttribute('src', '../../assets/css/dashboard_icon_collapse.css')
  }

}
