import { Component, OnInit } from '@angular/core';
import { FormationService } from '../services/dashboard/formation.service';
import { Formation } from '../classes/formation';
import * as $ from "jquery";
import Swal from 'sweetalert2';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import { environment } from 'src/environments/environment';

interface Response {
  success: boolean,
  message: string,
  id: any
}


@Component({
  selector: 'app-add-formation',
  templateUrl: './add-formation.component.html',
  styleUrls: ['./add-formation.component.css']
})
export class AddFormationComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private router: Router,
    private http: HttpClient,
    private _store: LocalStorageService
  ) { }
  types: Formation[];

  ngOnInit() {
    this._formation.getAllFormationTypes().subscribe(
      (data: Formation[]) => {
        this.types = data;
      },
      error => {
        alert('error')
        $('#errorCode').slideToggle();
        setTimeout(function () {
          $('#errorCode').slideToggle();
        }, 5000);
      }
    )
  }

  uploadedData: FormData;
  selectedFile: File;

  onFileChanged(e) {
    let target = e.target;
    this.selectedFile = target.files[0];
  }

  formationId: Number = 0;
  upload() {
    const uploadData = new FormData();
    uploadData.append('myFile', this.selectedFile, this.selectedFile.name);
    this.http.post<Response>(environment.apiUrl + "handers/formations/imageUpload.php", uploadData).subscribe(
      data => {
        this.formationId = data.id;
        Swal.fire(
          'Téléchargement Terminé!',
          '',
          'success'
        )
      }
    )
  }

  addFormation(e) {
    let target = e.target;
    let lib = target.querySelector("#formationName").value;
    let pres = target.querySelector("#formationPresentation").value;
    let desc = target.querySelector("#formationDescription").value;
    let type = target.querySelector("#typeFormation");
    let INDEX = type.selectedIndex;

    type = type[INDEX].value


    if (lib == "" || pres == "" || desc == "" || type == "Default") {
      Swal.fire(
        'Error!',
        "SVP! remplissez le formulaire.",
        'error'
      )
      return;
    } else if (this.formationId == 0) {
      Swal.fire(
        'Alert!',
        'Veuillez télécharger une image pour continuer!',
        'warning'
      )
      return;
    }
    else {
      Swal.fire(
        'Terminé!',
        'Formation a été ajouté!',
        'success'
      )
      this._formation.updateCreatedFormation(lib, pres, desc, type, this.formationId).subscribe(
        data => {
          //
        }
      );
      setTimeout(() => {
        this.router.navigateByUrl("/admin/formationView");
      }, 2000);
    }
  }
}
