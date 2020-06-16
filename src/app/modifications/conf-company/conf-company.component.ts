import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
import { CompanyService } from 'src/app/services/dashboard/company.service';
import { HttpClient } from '@angular/common/http';
import { LocalStorageService } from 'src/app/services/dashboard/local-storage.service';
// import Swal from 'sweetalert2/dist/sweetalert2.js';
import Swal from 'sweetalert2'
import { Router } from '@angular/router';
import { environment } from 'src/environments/environment';

interface Response {
  success: boolean,
  message: string,
  id: any
}


@Component({
  selector: 'app-conf-company',
  templateUrl: './conf-company.component.html',
  styleUrls: ['./conf-company.component.css']
})
export class ConfCompanyComponent implements OnInit {

  constructor(
    private _partner: CompanyService,
    private http: HttpClient,
    private _store: LocalStorageService,
    private router: Router
  ) { }

  ngOnInit() {
  }

  uploadedData: FormData;
  selectedFile: File;

  onFileChanged(e) {
    let target = e.target;
    this.selectedFile = target.files[0];
  }

  companyId: Number = 0;
  upload() {
    const uploadData = new FormData();
    uploadData.append('myFile', this.selectedFile, this.selectedFile.name);
    this.http.post<Response>(environment.apiUrl + "handers/company/imageUpload.php", uploadData).subscribe(
      data => {
        this.companyId = data.id;
        Swal.fire(
          'Téléchargement Terminé!',
          '',
          'success'
        )
      }
    )
  }

  addPartner(e) {
    const companyName = e.target.querySelector("#companyName").value;
    if (companyName == "" && this.companyId == 0) {
      Swal.fire(
        'Error!',
        'SVP! remplissez le formulaire.',
        'error'
      )
    }
    else if (companyName == "") {
      Swal.fire(
        'Alert!',
        'Veuillez remplir le champ nom!',
        'warning'
      )
    } else if (this.companyId == 0) {
      Swal.fire(
        'Alert!',
        'Veuillez télécharger une image pour continuer!',
        'warning'
      )
    } else {
      Swal.fire(
        'Terminé!',
        'Company a été ajouté!',
        'success'
      )
      this._partner.updateCompany(companyName, this.companyId).subscribe(
        data => {
          //
        }
      )
      setTimeout(() => {
        this.router.navigateByUrl("/admin/modification/confCompaniesView");
      }, 2000);
    }
  }
}
