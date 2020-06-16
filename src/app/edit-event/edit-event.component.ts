import { Component, OnInit } from '@angular/core';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import { Router } from '@angular/router';
import { FormationService } from '../services/dashboard/formation.service';
import { Formation } from '../classes/formation';
import Swal from 'sweetalert2'
import * as $ from "jquery";

@Component({
  selector: 'app-edit-event',
  templateUrl: './edit-event.component.html',
  styleUrls: ['./edit-event.component.css']
})
export class EditEventComponent implements OnInit {

  constructor(
    private _localstorage: LocalStorageService,
    private router: Router,
    private _event: FormationService
  ) { }

  event: Formation[];
  allEventTypes: Formation[];
  filteredEventTypes: Formation[];
  idEvent: any;
  id: any;

  ngOnInit() {
    this.id = this._localstorage.getItem("selected_event");
    if (this._localstorage.getItem("selected_event") == null) {
      this.router.navigateByUrl('/admin/eventView');
    }
    this._event.getAllEventTypes().subscribe(
      (data: Formation[]) => {
        this.allEventTypes = data;
      }
    )
    this._event.getEvent(this.id).subscribe(
      (data: Formation[]) => {
        this.event = data;
        this.idEvent = this.event[0]['type'];
      }
    )
  }

  updateEvent(e) {
    let target = e.target;
    let lib = target.querySelector("#eventName").value;
    let desc = target.querySelector("#eventDescription").value;
    let date = target.querySelector("#eventDate").value;
    let type = target.querySelector("#typeEvent");
    let INDEX = type.selectedIndex;
    type = type[INDEX].value;


    if (lib == "" && desc == "" && date == "" && type == "Default") {
      Swal.fire(
        'Alert!',
        'SLP! Remplissez le formulaire.',
        'warning'
      )
      return;
    } else if (lib == "") {
      Swal.fire(
        'Alert!',
        'Le champ nom est vide.',
        'warning'
      )
    } else if (desc == "") {
      Swal.fire(
        'Alert!',
        'Le champ description est vide.',
        'warning'
      )
    } else if (date == "") {
      Swal.fire(
        'Alert!',
        'Le champ date est vide.',
        'warning'
      )
    } else if (type == "") {
      Swal.fire(
        'Alert!',
        'SVP! Sélectionnez un type.',
        'warning'
      )
    } else {
      this._event.updateEvent(this.id, lib, date, desc, type).subscribe(
        data => {
          if (data.success) {
            Swal.fire(
              'Mise à jour Terminé!',
              'La formation a été mise à jour!',
              'success'
            )
            this.router.navigateByUrl("/admin/eventView");
          } else
            Swal.fire(
              'Oops!',
              'Modifier les champs pour continuer!',
              'info'
            )
        }
      )
    }
  }
}

