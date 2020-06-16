import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
import { LaVieService } from 'src/app/services/dashboard/la-vie.service';
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
  selector: 'app-la-vie',
  templateUrl: './la-vie.component.html',
  styleUrls: ['./la-vie.component.css']
})
export class LaVieComponent implements OnInit {

  constructor(
    private _laVie: LaVieService,
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

  vieId: Number = 0;
  upload() {
    // let target = e.target;
    const uploadData = new FormData();
    uploadData.append('myFile', this.selectedFile, this.selectedFile.name);
    this.http.post<Response>(environment.apiUrl + "handers/laVie/imageUpload.php", uploadData).subscribe(
      data => {
        this.vieId = data.id;
        Swal.fire(
          'Téléchargement Terminé!',
          '',
          'success'
        )
      }
    )
  }

  addPartner(e) {
    const vieName = e.target.querySelector("#laVieName").value;
    const vieDescription = e.target.querySelector("#laVieDescription").value;
    if (vieName == "" && this.vieId == 0 && vieDescription == "") {
      Swal.fire(
        'Error!',
        'SVP! remplissez le formulaire.',
        'error'
      )
    }
    else if (vieName == "") {
      Swal.fire(
        'Alert!',
        'Veuillez remplir le champ nom!',
        'warning'
      )
    } else if (vieDescription == "") {
      Swal.fire(
        'Alert!',
        'Veuillez remplir le champ description!',
        'warning'
      )
    }
    else if (this.vieId == 0) {
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
      this._laVie.updateVie(vieName, vieDescription, this.vieId).subscribe(
        data => {
          //
        }
      )
      setTimeout(() => {
        this.router.navigateByUrl("/admin/modification/laVieView");
      }, 2000);
    }
  }
}
