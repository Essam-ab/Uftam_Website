import { Component, OnInit } from '@angular/core';
import { environment } from 'src/environments/environment';
import { AppComponent } from '../../app.component';
import { Formation } from '../../classes/formation';
import { FormationService } from '../../services/dashboard/formation.service';
import { FormControl, FormGroup, AbstractControl, FormBuilder, Validators } from '@angular/forms';
import { SearchCountryField, TooltipLabel, CountryISO } from 'ngx-intl-tel-input';
import Swal from 'sweetalert2';
import { HttpClient } from '@angular/common/http';
import { CondidatService } from 'src/app/services/site/condidat.service';
import { resolve } from 'url';
import { PartnerService } from 'src/app/services/dashboard/partner.service';
import { CompanyService } from 'src/app/services/dashboard/company.service';
import { StudentExpService } from 'src/app/services/dashboard/student-exp.service';
import { LaVieService } from 'src/app/services/dashboard/la-vie.service';
import * as $ from 'jquery';

interface Response {
  success: boolean,
  message: string,
  id: any
}

interface condidat {
  success: boolean,
  message: string,
  id: any
}

@Component({
  selector: 'app-inscription',
  templateUrl: './inscription.component.html',
  styleUrls: ['./inscription.component.css']
})
export class InscriptionComponent implements OnInit {

  constructor(
    private formBuilder: FormBuilder,
    private _formation: FormationService,
    private c_App: AppComponent,
    private http: HttpClient,
    private _Condidat: CondidatService,
    private _partner: PartnerService,
    private _company: CompanyService,
    private _student: StudentExpService,
    private _laVie: LaVieService,

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
  certificate: Formation[];

  isMobile: boolean = false;
  ngOnInit() {
    this.apiUrl = environment.apiUrl;
    if (window.innerWidth <= 700)
      this.isMobile = true;

    //nav setup
    this._formation.displayFormations().subscribe(
      (data: Formation[]) => {
        this.formations = data;
        var x = [], y = [], z = [];
        var j = 0, k = 0, p = 0;
        for (let i = 0; i < this.formations.length; i++) {
          if (data[i]['type'] == 'Masters') {
            x[j++] = data[i];
          } else if (data[i]['type'] == 'Licence') {
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
        console.log('there has been an error trying to get all formaions!');
      }
    )

    //formation
    this._formation.displayFormations().subscribe(
      (data: Formation[]) => {
        this.formations_select = data;
      },
      error => {
        console.log('error trying to get formations');
      }
    )

    /*document.querySelector('ngx-intl-tel-input input').classList.add('form-control');
    document.querySelector('ngx-intl-tel-input input').classList.add('input-fix');*/

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
        console.log('error trying to get formations');
      }
    )

    //events
    //event 1
    this._formation.displayFirstEvents().subscribe(
      (data: Formation[]) => {
        this.firstEvents = data;

      },
      error => {
        console.log('error trying to get events');
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
        console.log('error trying to get events');
      }
    )

    //studentExp
    this._student.getAllStudentExp().subscribe(
      (data: Formation[]) => {
        this.students = data;
      },
      error => {
        console.log('error trying to get students');
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
        console.log('error trying to get studentsExp');
      }
    )
  }


  setFocus(e) {
    $('.input').parent().addClass('focus');
    $('.input').focus(function () {
      $(this).parent().addClass('focus');
    })
  }

  separateDialCode = true;
  SearchCountryField = SearchCountryField;
  TooltipLabel = TooltipLabel;
  CountryISO = CountryISO;
  preferredCountries: CountryISO[] = [CountryISO.Tunisia, CountryISO.France];

  // tslint:disable-next-line: member-ordering
  userInfo = this.formBuilder.group({
    userInfoFirstName: ['', Validators.required],
    userInfoLastName: ['', Validators.required],
    userInfoDate: ['', Validators.required],
    userInfoEmail: ['', Validators.required],
    userInfoFormation: ['Default', Validators.required],
    userInfoPays: ['', Validators.required],
    userInfoTel: ['', Validators.required],
    File1: ['', Validators.required],
    File2: ['', Validators.required],
    File3: [''],
    File4: ['', Validators.required],
    File5: ['', Validators.required],
    File6: [''],
    File7: [''],
  });

  selectedFile_1: File;
  onFileChanged_1(e) {
    let target = e.target;
    this.selectedFile_1 = target.files[0];
    console.log('target changed: ' + this.selectedFile_1);
  }

  selectedFile_2: File;
  selectedFile_3: File;
  selectedFile_4: File;
  selectedFile_5: File;
  selectedFile_6: File;
  selectedFile_7: File;


  onFileChanged_2(e) {
    let target = e.target;
    this.selectedFile_2 = target.files[1];
  }
  onFileChanged_3(e) {
    let target = e.target;
    this.selectedFile_3 = target.files[2];
  }
  onFileChanged_4(e) {
    let target = e.target;
    this.selectedFile_4 = target.files[3];
  }
  onFileChanged_5(e) {
    let target = e.target;
    this.selectedFile_5 = target.files[4];
  }
  onFileChanged_6(e) {
    let target = e.target;
    this.selectedFile_6 = target.files[5];
  }
  onFileChanged_7(e) {
    let target = e.target;
    this.selectedFile_7 = target.files[6];
  }

 

  submitCondidat(f, e) {
    // e.target.querySelector('#typeFormation').selectedIndex = 0
    e.preventDefault();

    const selector = this.userInfo.value;
    const first_name = selector.userInfoFirstName;
    const last_name = selector.userInfoLastName;
    const date = selector.userInfoDate;
    const email = selector.userInfoEmail;
    const formation = selector.userInfoFormation;
    // tslint:disable-next-line: variable-name
    const number = selector.userInfoTel;
    const dial_code = selector.userInfoPays;

    if (!this.userInfo.valid) {
      Swal.fire(
        'Error!',
        'SVP! remplissez le formulaire.',
        'error'
      )
    } else {
      const country_code = selector.userInfoPays;
      /*const dial_code = selector.userInfoPhone.dialCode;
      const country_code = selector.userInfoPhone.countryCode;
      const number = selector.userInfoPhone.number;*/
      var newCondidate;
      this.http.post<Response>(environment.apiUrl + 'handers/condidat/insertCondidat.php', {
        first_name,
        last_name,
        date,
        email,
        formation,
        country_code,
        dial_code,
        number
      }).subscribe(
        (data: Response) => {
          Swal.fire(
            'Terminé!',
            '',
            'success'
          )
          this.userInfo.reset();
          
          if (data.success) {
            newCondidate = data;
          } else
            newCondidate = 0;
          newCondidate = data;
        }
      )

      /*this.http.get<condidat>(environment.apiUrl + 'handers/condidat/getLastAdded.php').subscribe(
        (data: condidat) => {
          console.log(data)

          const uploadData = new FormData();
          //uploadData.append('File_1', this.selectedFile_1, this.selectedFile_1.name);
          this.http.post<condidat>(
            environment.apiUrl + "handers/condidat/addCondidat.php?id=" + data.id,
            uploadData
          ).subscribe(
            data => {
              Swal.fire(
                'Terminé!',
                '',
                'success'
              )
            },
            error => {
              Swal.fire(
                'There has been an error!',
                '',
                'error'
              )
            }
          )
        }
      )*/
    }
  }
}