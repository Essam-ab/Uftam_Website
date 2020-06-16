import { Component, OnInit } from '@angular/core';
import { AdminComponent } from '../admin/admin.component';
import { AdminTopNavComponent } from '../admin-top-nav/admin-top-nav.component';

@Component({
  selector: 'app-admin-side-nav',
  templateUrl: './admin-side-nav.component.html',
  styleUrls: ['./admin-side-nav.component.css']
})
export class AdminSideNavComponent implements OnInit {

  constructor(
    private c_admin: AdminComponent,
    private c_navTop: AdminTopNavComponent
  ) { }

  ngOnInit() {
  }

  collapse = "";
}
