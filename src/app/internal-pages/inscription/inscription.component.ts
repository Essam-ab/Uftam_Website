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
    private _formation: FormationService,
    private c_App: AppComponent,
    private http: HttpClient,
    private _Condidat: CondidatService
  ) { }

  apiUrl: any;
  formations: Formation[];

  //nav
  license: Formation[];
  master: Formation[];

  ngOnInit() {
    this.c_App.isInternal = true;
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
        this.formations = data;
      },
      error => {
        console.log("error trying to get formations");
      }
    )

    document.querySelector('ngx-intl-tel-input input').classList.add('form-control');
    document.querySelector('ngx-intl-tel-input input').classList.add('input-fix');
  }

  separateDialCode = true;
  SearchCountryField = SearchCountryField;
  TooltipLabel = TooltipLabel;
  CountryISO = CountryISO;
  preferredCountries: CountryISO[] = [CountryISO.Tunisia, CountryISO.France];
  userInfo = new FormGroup({
    userInfoPhone: new FormControl(undefined, [Validators.required]),
    userInfoFirstName: new FormControl({ value: '' }, Validators.compose([Validators.required])),
    userInfoLastName: new FormControl({ value: '' }, Validators.compose([Validators.required])),
    userInfoDate: new FormControl({ value: '' }, Validators.compose([Validators.required])),
    userInfoEmail: new FormControl({ value: '' }, Validators.compose([Validators.required])),
    userInfoFormation: new FormControl({ value: '' }, Validators.compose([Validators.required]))
  });

  selectedFile_1: File;
  selectedFile_2: File;
  selectedFile_3: File;
  selectedFile_4: File;
  selectedFile_5: File;
  selectedFile_6: File;
  selectedFile_7: File;

  onFileChanged_1(e) {
    let target = e.target;
    this.selectedFile_1 = target.files[0];
  }
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
    e.preventDefault();
    const phone = this.userInfo.value.phone;

    const selector = this.userInfo.value;
    const first_name = selector.userInfoFirstNam;
    const last_name = selector.userInfoLastName;
    const date = selector.userInfoDate;
    const email = selector.userInfoEmail;
    const formation = selector.userInfoFormation;

    if (this.selectedFile_1 === undefined || this.selectedFile_2 === undefined || this.selectedFile_3 === undefined ||
      this.selectedFile_4 === undefined || this.selectedFile_5 === undefined || this.selectedFile_6 === undefined ||
      this.selectedFile_7 === undefined || selector.userInfoDate === undefined || selector.userInfoEmail === undefined ||
      selector.userInfoFirstName === undefined || selector.userInfoFormation === undefined || selector.userInfoLastName === undefined ||
      selector.userInfoPhone === null) {
      Swal.fire(
        'Error!',
        "SVP! remplissez le formulaire.",
        'error'
      )
    } else {

      const createConditat = (first_name, last_name, date, email, formation, dial_code, country_code, number) => {
        return new Promise((resolve, reject) => {
          this.http.post<Response>(environment.apiUrl + 'handers/condidat/insertCondidat.php', {
            first_name,
            last_name,
            date,
            email,
            formation,
            dial_code,
            country_code,
            number
          }).subscribe(
            (data: Response) => {
              if (data.success) {
                resolve(data);
              } else
                reject('error trying to insert new condidat!');
            }
          )
        });
      }

      const getLastCreated = () => {
        return new Promise((resolve, reject) => {
          this.http.get<condidat>(environment.apiUrl + 'handers/condidat/getLastAdded.php').subscribe(
            (data: condidat) => {
              if (data.success)
                resolve(data);
              else
                reject(0);
            }
          )
        })
      }

      async function startSteps() {

        try {
          const conditat = await createConditat(first_name, last_name, date, email, formation, dial_code, country_code, number);
          if (conditat) {
            const id = await startSteps();

          }
        } catch (err) {
          console.log("error trying to create new conditat:" + err);
        }

      }

      const uploadData = new FormData();
      uploadData.append('File_1', this.selectedFile_1, this.selectedFile_1.name);
      uploadData.append('File_2', this.selectedFile_2, this.selectedFile_2.name);
      uploadData.append('File_3', this.selectedFile_3, this.selectedFile_3.name);
      uploadData.append('File_4', this.selectedFile_4, this.selectedFile_4.name);
      uploadData.append('File_5', this.selectedFile_5, this.selectedFile_5.name);
      uploadData.append('File_6', this.selectedFile_6, this.selectedFile_6.name);
      uploadData.append('File_7', this.selectedFile_7, this.selectedFile_7.name);
      const dial_code = selector.userInfoPhone.dialCode;
      const country_code = selector.userInfoPhone.countryCode;
      const number = selector.userInfoPhone.number;

      function roll(index) {
        const uploadData = new FormData();
        uploadData.append(`File_${index}`, this.selectedFile_ + index, this.selectedFile_ + index.name);
      }


      this._Condidat.addCondidat(
        uploadData,
        selector.userInfoFirstName,
        selector.userInfoLastName,
        selector.userInfoDate,
        selector.userInfoEmail,
        selector.userInfoFormation,
        dial_code,
        country_code,
        number,
      ).subscribe(
        data => {
          Swal.fire(
            'Téléchargement Terminé!',
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
  }

}

/*
uploadData.append('File_1', this.selectedFile_1, this.selectedFile_1.name);
    console.log(uploadData)
    this.http.post<Response>(environment.apiUrl + "handers/condidat/addCondidat.php", uploadData).subscribe(
      data => {
        Swal.fire(
          'Téléchargement Terminé!',
          '',
          'success'
        )
      },
      error => {
        alert("error uploadData!");
      }
    )
*/