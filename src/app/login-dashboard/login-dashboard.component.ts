import { Component, OnInit } from '@angular/core';
import { SiteService } from '../services/site/site.service';
import { Router } from '@angular/router';
import Swal from 'sweetalert2';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-login-dashboard',
  templateUrl: './login-dashboard.component.html',
  styleUrls: ['./login-dashboard.component.css']
})
export class LoginDashboardComponent implements OnInit {

  constructor(
    private _site: SiteService,
    private router: Router,
    private _auth: AuthService
  ) { }

  ngOnInit(): void {
  }

  username: string = "";
  password: string = "";
  login(event) {
    this._site.loginDashboard(this.username, this.password).subscribe(
      data => {
        if (data.success) {
          const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            onOpen: (toast) => {
              toast.addEventListener('mouseenter', Swal.stopTimer)
              toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
          })
          Toast.fire({
            icon: 'success',
            title: 'Signed in successfully'
          }).then(
            () => {
              this._auth.setLoggedIn(true)
              if (this._auth.isLoggedIn() == "true")
                this.router.navigateByUrl('/dashboard');
              else
                Toast.fire({
                  icon: 'error',
                  title: "Sign up has failed, please contact dev team!"
                })
            }
          )
        } else {
          Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'identifiant ou mot de passe invalide!'
          })
        }
      },
      error => {
        //  
      }
    )
  }



}
