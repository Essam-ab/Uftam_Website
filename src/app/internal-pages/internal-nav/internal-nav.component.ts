import { Component, OnInit } from '@angular/core';
import * as $ from "jquery";
import { FormationService } from '../../services/dashboard/formation.service';
import { Formation } from '../../classes/formation';
import { PartnerService } from '../../services/dashboard/partner.service';
import { CompanyService } from '../../services/dashboard/company.service';
import { StudentExpService } from '../../services/dashboard/student-exp.service';
import { LaVieService } from '../../services/dashboard/la-vie.service';
import { environment } from 'src/environments/environment';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-internal-nav',
  templateUrl: './internal-nav.component.html',
  styleUrls: ['./internal-nav.component.css']
})

export class InternalNavComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private formation: Formation,
    private _partner: PartnerService,
    private _company: CompanyService,
    private _student: StudentExpService,
    private _laVie: LaVieService,
    private _ActivatedRoute: ActivatedRoute
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

  //nav
  license: Formation[];
  master: Formation[];


  ngOnInit() {
    this.apiUrl = environment.apiUrl;
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
  }

}
