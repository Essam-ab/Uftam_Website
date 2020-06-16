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
import { AppComponent } from '../../app.component';
import { SiteService } from '../../services/site/site.service';
import { FormControl, FormGroup, AbstractControl, FormBuilder, Validators } from '@angular/forms';
import Swal from 'sweetalert2';
import { OwlOptions } from 'ngx-owl-carousel-o';

@Component({
  selector: 'app-article',
  templateUrl: './article.component.html',
  styleUrls: ['./article.component.css']
})
export class ArticleComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private formation: Formation,
    private _partner: PartnerService,
    private _company: CompanyService,
    private _student: StudentExpService,
    private _laVie: LaVieService,
    private _ActivatedRoute: ActivatedRoute,
    private c_App: AppComponent,
    private _site: SiteService
  ) { }

  formations: Formation[];
  articleDetails: Formation[];
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
  certificate: Formation[];

  //sets
  path: any;
  lib: any;
  day: any;
  monthName: any;
  date: any;
  desc: any;
  idPage: string;
  ngOnInit() {
    this.apiUrl = environment.apiUrl;

    this._ActivatedRoute.paramMap.subscribe(params => {
      this.idPage = params.get('id');
    });

    this._formation.getArticleDetails(this.idPage).subscribe(
      (data: Formation[]) => {
        this.articleDetails = data[0]['eve_details'];
      },
      error => {
        console.log("error trying to get formatoiin details")
      }
    )

    //getting formation details
    this._formation.getArticle(this.idPage).subscribe(
      (data: Formation[]) => {
        this.path = data[0]['path'];
        this.lib = data[0]['lib'];
        this.day = data[0]['day'];
        this.monthName = data[0]['monthName'];
        this.date = data[0]['date'];
        this.desc = data[0]['desc'];
      }, error => {
        //
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
    this._laVie.displayVie().subscribe(
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

  userInfo = new FormGroup({
    userInfoEmail: new FormControl('', [Validators.required])
  });
  setNewsletter(event) {
    event.preventDefault();
    const email = this.userInfo.value.userInfoEmail;
    if (email == "") {
      Swal.fire(
        'Error!',
        "SVP! remplizer le formulaire.",
        'error'
      )
    } else {
      this._site.subscribeToNewsletter(email).subscribe(
        data => {
          if (data.success) {
            Swal.fire(
              'Terminé!',
              "Merci pour votre inscription!",
              'success'
            )
          } else {
            Swal.fire(
              'Error!',
              "SVP! remplizer le formulaire.",
              'error'
            )
          }
        }
      )
    }
  }

  logoOptions: OwlOptions = {
    loop: true,
    margin: 200,
    mouseDrag: true,
    touchDrag: true,
    pullDrag: true,
    dots: false,
    navSpeed: 700,
    navText: [
      '<a style="color:black" class="carousel-control-prev" href="#formationCarousel" role="button"data-slide="prev"><span id="left" class="carousel-control-prev template-pagPrev-dark"><i class=" fas fa-caret-left"></i></span></a>',
      '<a style="color:black" class="carousel-control-next" href="#formationCarousel" role="button"data-slide="next"><span id="right" class="carousel-control-next template-pagNext-dark"><i class="fas fa-caret-right"></i></span></a>'
    ],
    responsive: {
      0: {
        items: 1
      },
      400: {
        items: 2
      },
      740: {
        items: 4
      },
      940: {
        items: 5
      }
    },
    nav: true
  }

  customOptions: OwlOptions = {
    loop: true,
    margin: 200,
    mouseDrag: true,
    touchDrag: true,
    pullDrag: true,
    dots: false,
    navSpeed: 700,
    navText: [
      '<a style="color:black" class="carousel-control-prev" href="#formationCarousel" role="button"data-slide="prev"><span id="left" class="carousel-control-prev template-pagPrev-dark"><i class=" fas fa-caret-left"></i></span></a>',
      '<a style="color:black" class="carousel-control-next" href="#formationCarousel" role="button"data-slide="next"><span id="right" class="carousel-control-next template-pagNext-dark"><i class="fas fa-caret-right"></i></span></a>'
    ],
    responsive: {
      0: {
        items: 1
      },
      400: {
        items: 2
      },
      740: {
        items: 3
      },
      940: {
        items: 4
      }
    },
    nav: true
  }

  otherOptions: OwlOptions = {
    loop: true,
    margin: 50,
    mouseDrag: true,
    touchDrag: true,
    pullDrag: true,
    dots: false,
    navSpeed: 700,
    navText: [
      '<a style="color:black" class="carousel-control-prev" href="#formationCarousel" role="button"data-slide="prev"><span id="left" class="carousel-control-prev template-pagPrev-dark"><i class=" fas fa-caret-left"></i></span></a>',
      '<a style="color:black" class="carousel-control-next" href="#formationCarousel" role="button"data-slide="next"><span id="right" class="carousel-control-next template-pagNext-dark"><i class="fas fa-caret-right"></i></span></a>'
    ],
    responsive: {
      0: {
        items: 1
      },
      400: {
        items: 2
      },
      740: {
        items: 3
      },
      940: {
        items: 4
      }
    },
    nav: true
  }

  lastOptions: OwlOptions = {
    loop: true,
    margin: 40,
    mouseDrag: true,
    touchDrag: true,
    pullDrag: true,
    dots: true,
    navSpeed: 700,
    navText: [
      '<a style="color:black" class="carousel-control-prev" href="#formationCarousel" role="button"data-slide="prev"><span id="left" class="carousel-control-prev template-pagPrev-dark"><i class=" fas fa-caret-left"></i></span></a>',
      '<a style="color:black" class="carousel-control-next" href="#formationCarousel" role="button"data-slide="next"><span id="right" class="carousel-control-next template-pagNext-dark"><i class="fas fa-caret-right"></i></span></a>'
    ],
    responsive: {
      0: {
        items: 1
      },
      400: {
        items: 2
      },
      740: {
        items: 3
      },
      940: {
        items: 3
      }
    },
    nav: true
  }
}
