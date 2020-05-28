import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
import { SimplePicker } from '../../assets/simplePicker/simplepicker.js';
import { FormationService } from '../services/dashboard/formation.service.js';
import { Formation } from '../classes/formation.js';
import { setTheme } from 'ngx-bootstrap/utils';
import Swal from 'sweetalert2';
import { Router } from '@angular/router';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { LocalStorageService } from '../services/dashboard/local-storage.service.js';


interface Response {
  success: boolean,
  message: string,
  id: any
}


@Component({
  selector: 'app-add-event',
  templateUrl: './add-event.component.html',
  styleUrls: ['./add-event.component.css']
})
export class AddEventComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private router: Router,
    private http: HttpClient,
    private _store: LocalStorageService
  ) {
    setTheme('bs4');
  }

  types: Formation[];

  ngOnInit() {
    this._formation.getAllEventTypes().subscribe(
      (data: Formation[]) => {
        this.types = data;
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

  eventId: Number = 0;
  upload() {
    const uploadData = new FormData();
    uploadData.append('myFile', this.selectedFile, this.selectedFile.name);
    this.http.post<Response>(environment.apiUrl + "handers/events/imageUpload.php", uploadData).subscribe(
      data => {
        this.eventId = data.id;
        Swal.fire(
          'Téléchargement Terminé!',
          '',
          'success'
        )
      }
    )
  }

  addEvent(e) {
    let target = e.target;
    let lib = target.querySelector("#eventName").value;
    let date = target.querySelector("#eventDate").value;
    let desc = target.querySelector("#eventDescription").value;
    let type = target.querySelector("#typeEvent");
    let INDEX = type.selectedIndex;

    type = type[INDEX].value


    if (lib == "" && date == "" && desc == "" && type == "Default") {
      Swal.fire(
        'Error!',
        "SVP! remplissez le formulaire.",
        'error'
      )
      return;
    } else if (this.eventId == 0) {
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
        'Event a été ajouté!',
        'success'
      )
      this._formation.updateCreatedEvent(lib, date, desc, type, this.eventId).subscribe(
        data => {
          //
        }
      );
      setTimeout(() => {
        this.router.navigateByUrl("/admin/eventView");
      }, 2000);
    }
  }
}
