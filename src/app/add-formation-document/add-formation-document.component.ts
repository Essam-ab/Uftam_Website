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
  selector: 'app-add-formation-document',
  templateUrl: './add-formation-document.component.html',
  styleUrls: ['./add-formation-document.component.css']
})
export class AddFormationDocumentComponent implements OnInit {


  constructor(
    private _formation: FormationService,
    private router: Router,
    private http: HttpClient,
    private _store: LocalStorageService
  ) { }
  formations: Formation[];
  apiUrl: any;

  ngOnInit() {
    this.apiUrl = environment.apiUrl;
    this._formation.getAllFormations().subscribe(
      (data: Formation[]) => {
        this.formations = data;
      },
      error => {
        //
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
  upload(e) {
    const target = e.target;
    let id = target.querySelector("#formation");
    let INDEX = id.selectedIndex;
    id = id[INDEX].value
    const uploadData = new FormData();
    uploadData.append('myFile', this.selectedFile, this.selectedFile.name);
    this.http.post<Response>(environment.apiUrl + "handers/formations/documentUpload.php?id=" + id, uploadData).subscribe(
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

}
