import { Component, OnInit } from '@angular/core';
import * as $ from "jquery";
import { FormationService } from '../../services/dashboard/formation.service';
import { Formation } from '../../classes/formation';
import { PartnerService } from '../../services/dashboard/partner.service';
import { CompanyService } from '../../services/dashboard/company.service';
import { StudentExpService } from '../../services/dashboard/student-exp.service';
import { LaVieService } from '../../services/dashboard/la-vie.service';
import { environment } from 'src/environments/environment';
import { AppComponent } from '../../app.component';
import Swal from 'sweetalert2';
import { SiteService } from 'src/app/services/site/site.service';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.css']
})
export class ContactComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private formation: Formation,
    private _partner: PartnerService,
    private _company: CompanyService,
    private _student: StudentExpService,
    private _laVie: LaVieService,
    private c_App: AppComponent,
    private _site: SiteService
  ) { }

  apiUrl: any;
  formations: Formation[];
  license: Formation[];
  master: Formation[];
  certificate: Formation[];

  ngOnInit() {
    this.apiUrl = environment.apiUrl;

    //nav setup
    this._formation.displayFormations().subscribe(
      (data: Formation[]) => {
        this.formations = data;
        var x = [], y = [], z = [];
        var j = 0, k = 0, p = 0;
        for (let i = 0; i < this.formations.length; i++) {
          if (data[i]['type'] == "Masters") {
            x[j++] = data[i];
          } else if (data[i]['type'] == "Licence") {
            y[k++] = data[i];
          } else {
            z[p++] = data[i]
          }
        }
        this.license = y;
        this.master = x;
        this.certificate = z;
      },
      error => {
        console.log("there has been an error trying to get all formaions!");
      }
    )
  }

  contactName: any = "";
  contactEmail: any = "";
  contactRobot: boolean = false;
  contactMsg: any = "";
  receiverEmail: string = "abedissam95@gmail.com";
  contactSubject: string = "subject goes here!";
  sendMail(event) {
    if (this.contactRobot == false && this.contactName == "" && this.contactEmail == "" && this.contactMsg == "") {
      Swal.fire(
        'Error!',
        "SVP! remplizer le formulaire.",
        'error'
      )
    } else if (this.contactName == "") {
      Swal.fire(
        'Alert!',
        "Remplissez le champ Nom!",
        'warning'
      )
    } else if (this.contactEmail == "") {
      Swal.fire(
        'Alert!',
        "Remplissez le champ Email!",
        'warning'
      )
    } else if (this.contactRobot == false) {
      Swal.fire(
        'Alert!',
        "Veuillez confirmer que vous n'êtes pas un robot!",
        'warning'
      )
    } else if (this.contactMsg == "") {
      Swal.fire(
        'Alert!',
        "Remplissez le champ Message!",
        'warning'
      )
    } else {
      const Toast = Swal.mixin({
        toast: true,
        position: 'bottom-end',
        showConfirmButton: true,
        timerProgressBar: true,
        onOpen: (toast) => {
          toast.addEventListener('mouseenter', Swal.stopTimer)
          toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
      })
      Toast.fire({
        icon: 'success',
        title: "Merci, nous allons recevoir votre message sous peu!",
      })
      this._site.sendMail(this.contactName, this.receiverEmail, this.contactMsg, this.contactEmail, this.contactSubject).subscribe(
        data => {
          this.contactName = "";
          this.contactEmail = "";
          this.contactRobot = false;
          this.contactMsg = "";
        },
        error => {
          Swal.fire(
            'Error!',
            "Unkonwn error, please contact our team.",
            'error'
          )
        }
      )
    }
  }
}
