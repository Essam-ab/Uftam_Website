import { Component, OnInit } from '@angular/core';
import { AdminComponent } from '../admin/admin.component';

@Component({
  selector: 'app-admin-top-nav',
  templateUrl: './admin-top-nav.component.html',
  styleUrls: ['./admin-top-nav.component.css']
})
export class AdminTopNavComponent implements OnInit {

  constructor(
    private c_admin: AdminComponent
  ) { }

  ngOnInit() {
  }

  navbarCollapse: string = "";
  triggerCollapse(event) {
    if (this.navbarCollapse == "collapse") {
      this.navbarCollapse = ""
    } else {
      this.navbarCollapse = "collapse"
    }
  }
}
