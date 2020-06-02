import { Component, OnInit } from '@angular/core';
import { FormationService } from '../services/dashboard/formation.service';
import { Formation } from '../classes/formation';
import * as $ from "jquery";
import Swal from 'sweetalert2';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import { environment } from 'src/environments/environment';
import { AngularEditorConfig } from '@kolkov/angular-editor';
import { Form, NgForm } from '@angular/forms';

@Component({
  selector: 'app-add-event-details',
  templateUrl: './add-event-details.component.html',
  styleUrls: ['./add-event-details.component.css']
})
export class AddEventDetailsComponent implements OnInit {

  editorConfig: AngularEditorConfig = {
    editable: true,
    spellcheck: true,
    height: 'auto',
    minHeight: '100',
    maxHeight: 'auto',
    width: 'auto',
    minWidth: '100',
    translate: 'yes',
    enableToolbar: true,
    showToolbar: true,
    placeholder: 'Entrer votre text ici...',
    defaultParagraphSeparator: '',
    defaultFontName: '',
    defaultFontSize: '',
    fonts: [
      { class: 'arial', name: 'Arial' },
      { class: 'times-new-roman', name: 'Times New Roman' },
      { class: 'calibri', name: 'Calibri' },
      { class: 'comic-sans-ms', name: 'Comic Sans MS' }
    ],
    customClasses: [
      {
        name: 'quote',
        class: 'quote',
      },
      {
        name: 'redText',
        class: 'redText'
      },
      {
        name: 'titleText',
        class: 'titleText',
        tag: 'h1',
      },
    ],
    uploadUrl: 'v1/image',
    uploadWithCredentials: false,
    sanitize: true,
    toolbarPosition: 'top',
    toolbarHiddenButtons: [
      ['bold', 'italic'],
      ['fontSize']
    ]
  };

  constructor(
    private _formation: FormationService,
    private router: Router,
    private http: HttpClient,
    private _store: LocalStorageService,
    private formation: Formation
  ) { }

  events: Formation[];
  apiUrl: any;

  ngOnInit() {
    this.apiUrl = environment.apiUrl;
    //event 2
    this._formation.displaySecondEvents().subscribe(
      (data: Formation[]) => {
        this.events = data;
      },
      error => {
        console.log("error trying to get events");
      }
    )
  }

  htmlContent = '';
  selectedEvent = 'Default';
  addEventDetails(form: NgForm) {
    console.log(this.htmlContent);
    console.log(this.selectedEvent)
    if (this.htmlContent == "" || this.selectedEvent == 'Default') {
      Swal.fire(
        'Error!',
        "SVP! remplissez le formulaire.",
        'error'
      )
      return;
    } else {
      this._formation.setEventDetails(this.selectedEvent, this.htmlContent).subscribe(
        data => {
          if (!data.success) {
            Swal.fire(
              'Error!',
              "Erreur inconnue! Essayez d'actualiser la page ou contactez l'administrateur.",
              'error'
            )
          } else {
            Swal.fire(
              'Terminé!',
              'Details de Formation a été ajouté!',
              'success'
            )
            this.htmlContent = "";
            this.selectedEvent = "Default";
          }
        }
      )
    }
  }

}
