import { Component, OnInit } from '@angular/core';
import { FormationService } from '../services/dashboard/formation.service';
import { Formation } from '../classes/formation';
import * as $ from "jquery";
import Swal from 'sweetalert2';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-add-formation-details',
  templateUrl: './add-formation-details.component.html',
  styleUrls: ['./add-formation-details.component.css']
})
export class AddFormationDetailsComponent implements OnInit {
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
        console.log("there has been an error trying to get all formaions!");
      }
    )
  }

  /**
   * 
   * formationNiveau
    formationPre
    formationDuration
    formationRegime
    formationAdmission
    formationEn
    formationProgram
    formationDebouch
    formationPublic
   */

  addFormation(e) {
    let target = e.target;
    let formationNiveau = target.querySelector("#formationNiveau").value;
    let formationPre = target.querySelector("#formationPre").value;
    let formationDuration = target.querySelector("#formationDuration").value;
    let formationRegime = target.querySelector("#formationRegime").value;
    let formationAdmission = target.querySelector("#formationAdmission").value;
    let formationEn = target.querySelector("#formationEn").value;
    let formationProgram = target.querySelector("#formationProgram").value;
    let formationDebouch = target.querySelector("#formationDebouch").value;
    let formationPublic = target.querySelector("#formationPublic").value;
    let id = target.querySelector("#typeFormation");
    let INDEX = id.selectedIndex;

    const setNull = () => {
      target.querySelector("#formationNiveau").value = "";
      target.querySelector("#formationPre").value = "";
      target.querySelector("#formationDuration").value = "";
      target.querySelector("#formationRegime").value = "";
      target.querySelector("#formationAdmission").value = "";
      target.querySelector("#formationEn").value = "";
      target.querySelector("#formationProgram").value = "";
      target.querySelector("#formationDebouch").value = "";
      target.querySelector("#formationPublic").value = "";
    }

    id = id[INDEX].value


    if (formationNiveau == "" || formationPre == "" || formationDuration == "" ||
      formationRegime == "" || formationAdmission == "" || formationEn == "" ||
      formationProgram == "" || formationDebouch == "" ||
      formationPublic == "" || id == "Default") {
      Swal.fire(
        'Error!',
        "SVP! remplissez le formulaire.",
        'error'
      )
      return;
    } else {
      this._formation.setFormationDetails(
        id, formationNiveau, formationPre, formationDuration, formationRegime, formationAdmission, formationEn, formationProgram, formationDebouch, formationPublic
      ).subscribe(
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
            setNull();
            // this.router.navigateByUrl("/admin/formationView");
          }
        }
      )
    }
  }

}
