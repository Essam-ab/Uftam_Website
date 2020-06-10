import { Component, OnInit } from '@angular/core';
import * as $ from "jquery";
import { FormationService } from '../services/dashboard/formation.service';
import { Formation } from '../classes/formation';
import { PartnerService } from '../services/dashboard/partner.service';
import { CompanyService } from '../services/dashboard/company.service';
import { StudentExpService } from '../services/dashboard/student-exp.service';
import { LaVieService } from '../services/dashboard/la-vie.service';
import { environment } from 'src/environments/environment';
import { AppComponent } from '../app.component';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private formation: Formation,
    private _partner: PartnerService,
    private _company: CompanyService,
    private _student: StudentExpService,
    private _laVie: LaVieService,
    private c_App: AppComponent
  ) { }

  isMobile: boolean = false;

  formations: Formation[];
  activeFormations: Formation[];
  otherFormations: any;
  m_activeFormations: Formation[];
  m_otherFormations: any;

  partners: Formation[];
  otherPartners: any;
  activePartners: Formation[];
  m_otherPartners: any;
  m_activePartners: Formation[];

  companies: Formation[];
  otherCompanies: any;
  activeCompanies: Formation[];
  m_otherCompanies: any;
  m_activeCompanies: Formation[];

  firstEvents: Formation[];
  secondEvents: Formation[];
  activeEvents: Formation[];
  otherEvents: any;
  m_secondEvents: Formation[];
  m_activeEvents: Formation[];
  m_otherEvents: any;

  students: Formation[];

  laVies: Formation[];
  activeVies: Formation[];
  otherVies: any;
  laVieLength: any;
  vie_indicators: any;
  m_activeVies: Formation[];
  m_otherVies: any;

  apiUrl: any;

  home_active: any = false;
  ngOnInit() {
    if (window.innerWidth <= 700)
      this.isMobile = true;
    var i = 0;
    setInterval(() => {
      $('[data-slide-to=' + i + ']').trigger('click');
      i++;
      if (i >= 3)
        i = 0;
    }, 10000)

    this.home_active = true;
    this.apiUrl = environment.apiUrl;
    //setting internal nav display to false
    this.c_App.isInternal = false;
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

        //mobile version
        var x = [], y = [], a = [];
        var j = 0, k = 0;
        var active = true;
        for (let i = 0; i < data.length; i++) {
          y[j] = this.formations[i];
          j++;
          if (j == 1 || (i + 1) == data.length) {
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
        this.m_otherFormations = x;
        this.m_activeFormations = a[0];
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
    this._partner.displayPartners().subscribe(
      (data: Formation[]) => {
        this.partners = data;
        var x = [], y = [], a = [];
        var j = 0, k = 0;
        var active = true;
        for (let i = 0; i < data.length; i++) {
          y[j] = this.partners[i];
          j++;
          if (j == 5 || (i + 1) == data.length) {
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
        this.otherPartners = x;
        this.activePartners = a[0];

        //mobile 
        var x = [], y = [], a = [];
        var j = 0, k = 0;
        var active = true;
        for (let i = 0; i < data.length; i++) {
          y[j] = this.partners[i];
          j++;
          if (j == 2 || (i + 1) == data.length) {
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
        this.m_otherPartners = x;
        this.m_activePartners = a[0];
      },
      error => {
        console.log("error trying to get partners");
      }
    )

    //company
    this._company.displayCompanies().subscribe(
      (data: Formation[]) => {
        this.companies = data;
        var x = [], y = [], a = [];
        var j = 0, k = 0;
        var active = true;
        for (let i = 0; i < data.length; i++) {
          y[j] = this.companies[i];
          j++;
          if (j == 5 || (i + 1) == data.length) {
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
        this.otherCompanies = x;
        this.activeCompanies = a[0];

        //mobile
        var x = [], y = [], a = [];
        var j = 0, k = 0;
        var active = true;
        for (let i = 0; i < data.length; i++) {
          y[j] = this.companies[i];
          j++;
          if (j == 2 || (i + 1) == data.length) {
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
        this.m_otherCompanies = x;
        this.m_activeCompanies = a[0];
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

  onResize(event) {
    const windowWidth = event.target.innerWidth;
    if (windowWidth <= 700)
      this.isMobile = true;
    else
      this.isMobile = false
  }

  value = ['down', 'right', 'right', 'right', 'right'];
  isExpand = [true, false, false, false, false];
  expandStudentInfo(event, i) {
    const index = i;

    if (this.value[index] == "right") {
      for (let j = 0; j < this.value.length; j++) {
        this.value[j] = "right";
        this.isExpand[j] = false;
      }
      // $('.student_right').css("margin-top", "1%")
      this.value[index] = "down";
      this.isExpand[index] = true;
    } else {
      // $('.student_right').css("margin-top", "7%")
      this.value[index] = "right";
      this.isExpand[index] = false;
    }
  }

  videoReveal(e) {
    e.preventDefault();
    var video = $('.video video');
    if (!video.attr('controls')) {
      video.attr({
        'controls': 'true'
      })
      video.trigger('play');
      $('.video .video_player').remove();
    }
  }

}
