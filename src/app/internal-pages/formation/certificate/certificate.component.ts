import { Component, OnInit } from '@angular/core';
import * as $ from "jquery";
import { FormationService } from '../../../services/dashboard/formation.service';
import { Formation } from '../../../classes/formation';
import { PartnerService } from '../../../services/dashboard/partner.service';
import { CompanyService } from '../../../services/dashboard/company.service';
import { StudentExpService } from '../../../services/dashboard/student-exp.service';
import { LaVieService } from '../../../services/dashboard/la-vie.service';
import { environment } from 'src/environments/environment';
import { ActivatedRoute, Router } from '@angular/router';
import { AppComponent } from 'src/app/app.component';

@Component({
  selector: 'app-certificate',
  templateUrl: './certificate.component.html',
  styleUrls: ['./certificate.component.css']
})
export class CertificateComponent implements OnInit {
  constructor(
    private _formation: FormationService,
    private formation: Formation,
    private _partner: PartnerService,
    private _company: CompanyService,
    private _student: StudentExpService,
    private _laVie: LaVieService,
    private _ActivatedRoute: ActivatedRoute,
    private c_App: AppComponent,
    private _Router: Router
  ) { }

  formations: Formation[];
  partners: Formation[];
  companies: Formation[];
  firstEvents: Formation[];
  secondEvents: Formation[];
  activeEvents: Formation[];
  otherEvents: any;
  students: Formation[];
  laVies: Formation[];
  activeVies: Formation[];
  otherVies: any;
  laVieLength: any;
  apiUrl: any;
  idPage: any;
  isMobile: boolean = false;
  //nav
  license: Formation[];
  master: Formation[];
  certificate: Formation[];

  // details
  formationDetails: Formation[];
  //idPage: any;
  type: any;
  lib: any;
  niveau: any;
  prerequis: any;
  duration: any;
  regime: any;
  mod_admission: any;
  enjeux: any;
  program: any;
  debouche: any;
  public_acceuil: any;
  document: any;
  image: any;
  diplome_logos: any;


  ngOnInit() {
    this.apiUrl = environment.apiUrl;
    if (window.innerWidth <= 700)
      this.isMobile = true;

    this._ActivatedRoute.paramMap.subscribe(params => {
      this.idPage = params.get('id');
      console.log("page id: " + this.idPage)
    });

    this._Router.routeReuseStrategy.shouldReuseRoute = () => {
      this.ngOnInit();
      return false;
    }

    // getting formation details
    this._formation.displayFormationDetails_Certificate(this.idPage).subscribe(
      (data: Formation[]) => {
        console.log(data)
        this.type = data[0]['type'];
        this.lib = data[0]['lib'];
        this.image = this.apiUrl + 'handers/formations/uploads/' + data[0]['img'];
        this.document = this.apiUrl + 'handers/formations/documents/' + data[0]['document'];
        this.niveau = data[0]['niveau'];
        this.prerequis = data[0]['prerequis'];
        this.duration = data[0]['duration'];
        this.regime = data[0]['regime'];
        this.mod_admission = data[0]['mod_admission'];
        this.enjeux = data[0]['enjeux'];
        this.program = data[0]['program'];
        this.debouche = data[0]['debouche'];
        this.public_acceuil = data[0]['public_acceuil'];
        this.diplome_logos = data;
      }, error => {
        console.log('there was a problem trying to get Certificate information')
      }
    )

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



    //formation
    this._formation.getAllFormations().subscribe(
      (data: Formation[]) => {
        this.formations = data;
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

    //partner
    this._partner.getAllPartners().subscribe(
      (data: Formation[]) => {
        this.partners = data;
      },
      error => {
        console.log("error trying to get partners");
      }
    )
    //company
    this._company.getAllCompany().subscribe(
      (data: Formation[]) => {
        this.companies = data;
      },
      error => {
        console.log("error trying to get companies");
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
