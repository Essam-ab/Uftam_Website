import { Component, OnInit } from '@angular/core';
import { FormationService } from '../services/dashboard/formation.service';
import * as $ from 'jquery';
import Swal from 'sweetalert2';
import { Router } from '@angular/router';

@Component({
  selector: 'app-add-type-event',
  templateUrl: './add-type-event.component.html',
  styleUrls: ['./add-type-event.component.css']
})
export class AddTypeEventComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private router: Router
  ) { }

  ngOnInit() {
  }

  addTypeEvent(e) {
    var target = e.target;
    var val = target.querySelector("#typeEvent").value;
    if (val == "") {
      Swal.fire(
        'Error!',
        "SVP! remplissez le formulaire.",
        'error'
      )
      return;
    }

    this._formation.addTypeEvent(val).subscribe(
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
            "Type d'évènement a été ajouté!",
            'success'
          )
          this.router.navigateByUrl("/admin/typeEventView");
        }
      }
    )
  }

}
