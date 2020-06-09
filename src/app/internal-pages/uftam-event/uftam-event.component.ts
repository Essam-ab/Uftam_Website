import { Component, OnInit } from '@angular/core';
import { AppComponent } from 'src/app/app.component';
import { FormationService } from 'src/app/services/dashboard/formation.service';
import { environment } from 'src/environments/environment';
import Swal from 'sweetalert2';
import { LaVieService } from 'src/app/services/dashboard/la-vie.service';
import { Formation } from 'src/app/classes/formation';
import { PartnerService } from 'src/app/services/dashboard/partner.service';
import { CompanyService } from 'src/app/services/dashboard/company.service';
import { StudentExpService } from 'src/app/services/dashboard/student-exp.service';

interface Response {
  success: boolean,
  message: string,
  id: any
}


@Component({
  selector: 'app-uftam-event',
  templateUrl: './uftam-event.component.html',
  styleUrls: ['./uftam-event.component.css']
})
export class UftamEventComponent implements OnInit {

  constructor(
    private formation: Formation,
    private _formation: FormationService,
    private c_App: AppComponent,
    private _laVie: LaVieService,
    private _partner: PartnerService,
    private _company: CompanyService,
    private _student: StudentExpService
  ) { }

  formations: Formation[];
  activeFormations: Formation[];
  otherFormations: any;

  partners: Formation[];
  otherPartners: any;
  activePartners: Formation[];

  companies: Formation[];
  otherCompanies: any;
  activeCompanies: Formation[];

  firstEvents: Formation[];
  secondEvents: Formation[];
  activeEvents: Formation[];
  otherEvents: any;

  students: Formation[];

  laVies: Formation[];
  activeVies: Formation[];
  otherVies: any;
  laVieLength: any;
  vie_indicators: any;

  apiUrl: any;
  formations_select: Formation[];

  //nav
  license: Formation[];
  master: Formation[];

  ngOnInit() {
    this.apiUrl = environment.apiUrl;
    this.c_App.isInternal = true;

    //nav setup
    this._formation.displayFormations().subscribe(
      (data: Formation[]) => {
        this.formations = data;
        var x = [], y = [];
        var j = 0, k = 0;
        for (let i = 0; i < this.formations.length; i++) {
          if (data[i]['type'] == "Masters") {
            x[j++] = data[i];
          } else if (data[i]['type'] == "Licence") {
            y[k++] = data[i];
          }
        }
        this.license = y;
        this.master = x;
      },
      error => {
        console.log("there has been an error trying to get all formaions!");
      }
    )

    //formation
    this._formation.displayFormations().subscribe(
      (data: Formation[]) => {
        this.formations_select = data;
      },
      error => {
        console.log("error trying to get formations");
      }
    )

    //formation
    this._formation.displayFormations().subscribe(
      (data: Formation[]) => {
        this.formations = data;
        var x = [], y = [], a = [];
        var j = 0, k = 0;
        var active = true;
        for (let i = 0; i < data.length; i++) {
          y[j] = this.formations[i];
          j++;
          if (j == 3 || (i + 1) == data.length) {
            if (active === true) {
              a[0] = y;
              y = [];
              j = 0;
              active = false;
            } else {
              x[k] = y;
              k++;
              y = [];
              j = 0;
            }
          }
        }
        this.otherFormations = x;
        this.activeFormations = a[0];
      },
      error => {
        console.log("error trying to get formations");
      }
    )
    //events
    //event 1
    this._formation.displayFirstEvents().subscribe(
      (data: Formation[]) => {
        this.firstEvents = data;
      },
      error => {
        console.log("error trying to get events");
      }
    )
    //event 2
    this._formation.displaySecondEvents().subscribe(
      (data: Formation[]) => {
        this.secondEvents = data;
        var x = [], y = [], a = [];
        var j = 0, k = 0;
        var active = true;
        for (let i = 0; i < data.length; i++) {
          y[j] = this.secondEvents[i];
          j++;
          if (j == 3 || (i + 1) == data.length) {
            if (active === true) {
              a[0] = y;
              y = [];
              j = 0;
              active = false;
            } else {
              x[k] = y;
              k++;
              y = [];
              j = 0;
            }
          }
        }
        this.otherEvents = x;
        this.activeEvents = a[0];
      },
      error => {
        console.log("error trying to get events");
      }
    )

    //studentExp
    this._student.getAllStudentExp().subscribe(
      (data: Formation[]) => {
        this.students = data;
      },
      error => {
        console.log("error trying to get students");
      }
    )

    //laVie
    this._laVie.getAllVie().subscribe(
      (data: Formation[]) => {
        this.laVies = data;
        this.laVieLength = data.length - 1;
        var container = document.querySelector('.section_shape .carousel-indicators')
        const length = this.laVieLength / 3;
        this.vie_indicators = '';
        var para = '';
        for (let k = 1; k < length + 1; k++) {
          para += '<li _ngcontent-gfp-c1 data-target="#feedCarousel" data-slide-to="' + k + '"></li>';
        }
        this.vie_indicators = para;
        var x = [], y = [], a = [];
        var j = 0, k = 0;
        var active = true;
        for (let i = 0; i < data.length; i++) {
          y[j] = this.laVies[i];
          j++;
          if (j == 3 || (i + 1) == data.length) {
            if (active === true) {
              a[0] = y;
              y = [];
              j = 0;
              active = false;
            } else {
              x[k] = y;
              k++;
              y = [];
              j = 0;
            }
          }
        }
        this.otherVies = x;
        this.activeVies = a[0];
      },
      error => {
        console.log("error trying to get studentsExp");
      }
    )
  }

}
