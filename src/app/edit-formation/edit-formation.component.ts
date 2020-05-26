import { Component, OnInit } from '@angular/core';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import { Router } from '@angular/router';
import { FormationService } from '../services/dashboard/formation.service';
import { Formation } from '../classes/formation';
import Swal from 'sweetalert2'
import * as $ from "jquery";

@Component({
  selector: 'app-edit-formation',
  templateUrl: './edit-formation.component.html',
  styleUrls: ['./edit-formation.component.css']
})
export class EditFormationComponent implements OnInit {

  constructor(
    private _localstorage: LocalStorageService,
    private router: Router,
    private _formation: FormationService
  ) { }

  formation: Formation[];
  allFormationTypes: Formation[];
  filteredFormatoinTypes: Formation[];
  idFormation: any;
  id: any;

  ngOnInit() {
    this.id = this._localstorage.getItem("selected_formation");
    if (this._localstorage.getItem("selected_formation") == null) {
      this.router.navigateByUrl('/admin/formationView');
    }
    this._formation.getAllFormationTypes().subscribe(
      (data: Formation[]) => {
        this.allFormationTypes = data;
      }
    )
    this._formation.getFormation(this.id).subscribe(
      (data: Formation[]) => {
        this.formation = data;
        this.idFormation = this.formation[0]['type'];
        /*
        console.log(this.formation[0]['type']);
        for (let i = 0; i < this.allFormationTypes.length; i++) {
          console.log(this.allFormationTypes[i])
          if (this.allFormationTypes[i]['lib'] == this.formation[0]['type']) {
            continue;
          } else {
            this.filteredFormatoinTypes[i]['id'] = this.allFormationTypes[i]['id']
            this.filteredFormatoinTypes[i]['lib'] = this.allFormationTypes[i]['lib']
          }
        }*/
        // var test = document.querySelector("#typeFormation option[value='" + this.formation[0]['type'] + "']")
        // console.log("test: " + test)
      }
    )
  }

  updateFormation(e) {
    let target = e.target;
    let lib = target.querySelector("#formationName").value;
    let pres = target.querySelector("#formationPresentation").value;
    let desc = target.querySelector("#formationDescription").value;
    let type = target.querySelector("#typeFormation");
    let INDEX = type.selectedIndex;
    type = type[INDEX].value;


    if (lib == "" && pres == "" && desc == "" && type == "Default") {
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
    } else if (pres == "") {
      Swal.fire(
        'Alert!',
        'Le champ presentation est vide.',
        'warning'
      )
    } else if (desc == "") {
      Swal.fire(
        'Alert!',
        'Le champ description est vide.',
        'warning'
      )
    } else if (type == "") {
      Swal.fire(
        'Alert!',
        'SVP! Sélectionnez un type.',
        'warning'
      )
    } else {
      this._formation.updateFormation(this.id, lib, pres, desc, type).subscribe(
        data => {
          if (data.success) {
            Swal.fire(
              'Mise à jour Terminé!',
              'La formation a été mise à jour!',
              'success'
            )
            this.router.navigateByUrl("/admin/formationView");
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
