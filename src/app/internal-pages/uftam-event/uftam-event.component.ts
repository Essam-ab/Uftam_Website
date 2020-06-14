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
import { SiteService } from '../../services/site/site.service';
import { FormControl, FormGroup, AbstractControl, FormBuilder, Validators } from '@angular/forms';
import { OwlOptions } from 'ngx-owl-carousel-o';

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
    private _student: StudentExpService,
    private _site: SiteService
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

  indexedEventsLength: number;
  indexedEvents: Formation[];
  start: number = 1;
  limit: number = 4;
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

  loadEvents(event) {
    const target = event.target;
    if (this.limit < this.indexedEventsLength) {
      this.limit += 2;
      this._formation.displayFirstEvents_indexed(this.start, this.limit).subscribe(
        (data: Formation[]) => {
          this.indexedEvents = data;
        },
        error => {
          console.log("error trying to get indexed events");
        }
      )
    } else {
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
        icon: 'info',
        title: "Il n'y a plus d'évènement!"
      })
    }
  }
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
    //indexd events
    this._formation.displayFirstEvents_indexed(this.start, this.limit).subscribe(
      (data: Formation[]) => {
        this.indexedEvents = data;
      },
      error => {
        console.log("error trying to get indexed events");
      }
    )
    //event 1
    this._formation.displayFirstEvents().subscribe(
      (data: Formation[]) => {
        this.firstEvents = data;
        this.indexedEventsLength = data.length + 1;
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
    this._laVie.displayVie().subscribe(
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
              "thank you for subscribing to our newsletter!",
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
