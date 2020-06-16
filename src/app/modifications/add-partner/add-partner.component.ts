import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
import { PartnerService } from 'src/app/services/dashboard/partner.service';
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
  selector: 'app-add-partner',
  templateUrl: './add-partner.component.html',
  styleUrls: ['./add-partner.component.css']
})
export class AddPartnerComponent implements OnInit {

  constructor(
    private _partner: PartnerService,
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

  partnerId: Number = 0;
  upload() {
    // let target = e.target;
    const uploadData = new FormData();
    uploadData.append('myFile', this.selectedFile, this.selectedFile.name);
    this.http.post<Response>(environment.apiUrl + "handers/partners/imageUpload.php", uploadData).subscribe(
      data => {
        this.partnerId = data.id;
        Swal.fire(
          'Téléchargement Terminé!',
          '',
          'success'
        )
      }
    )
  }

  addPartner(e) {
    const partnerName = e.target.querySelector("#partnerName").value;
    if (partnerName == "" && this.partnerId == 0) {
      Swal.fire(
        'Error!',
        'SVP! remplissez le formulaire.',
        'error'
      )
    }
    else if (partnerName == "") {
      Swal.fire(
        'Alert!',
        'Veuillez remplir le champ nom!',
        'warning'
      )
    } else if (this.partnerId == 0) {
      Swal.fire(
        'Alert!',
        'Veuillez télécharger une image pour continuer!',
        'warning'
      )
    } else {
      Swal.fire(
        'Terminé!',
        'Partenaire a été ajouté!',
        'success'
      )
      this._partner.updatePartner(partnerName, this.partnerId).subscribe(
        data => {
          //
        }
      )
      setTimeout(() => {
        this.router.navigateByUrl("/admin/modification/partners");
      }, 2000);
    }
  }

}
