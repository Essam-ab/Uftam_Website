import { Component, OnInit } from '@angular/core';
import { FormationService } from "../services/dashboard/formation.service";
import { FlashMessagesComponent } from "../flash-messages/flash-messages.component";
import * as $ from "jquery";
import Swal from 'sweetalert2';
import { Router } from '@angular/router';

@Component({
  selector: 'app-add-type-formation',
  templateUrl: './add-type-formation.component.html',
  styleUrls: ['./add-type-formation.component.css']
})
export class AddTypeFormationComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private router: Router
  ) { }

  ngOnInit() {
  }

  addTypeFormation(e) {
    var target = e.target;
    var val = target.querySelector("#typeFormation").value;
    if (val == "") {
      Swal.fire(
        'Error!',
        "SVP! remplissez le formulaire.",
        'error'
      )
      return;
    }

    this._formation.addTypeFormation(val).subscribe(
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
            'Type de formation a été ajouté!',
            'success'
          )
          this.router.navigateByUrl("/admin/typeFormationView");
        }
      }
    )
  }

}
