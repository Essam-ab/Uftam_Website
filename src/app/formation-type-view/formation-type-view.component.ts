import { Component, OnInit } from '@angular/core';
import { Formation } from '../classes/formation';
import { FormationService } from '../services/dashboard/formation.service';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import * as $ from "jquery";
import Swal from 'sweetalert2';

@Component({
  selector: 'app-formation-type-view',
  templateUrl: './formation-type-view.component.html',
  styleUrls: ['./formation-type-view.component.css']
})
export class FormationTypeViewComponent implements OnInit {

  constructor(
    private foramtion: Formation,
    private _formation: FormationService,
    private _localStorage: LocalStorageService
  ) { }

  types: Formation[];

  ngOnInit() {
    this._formation.getAllFormationTypes().subscribe(
      (data: Formation[]) => {
        this.types = data;
      },
      error => {
        //
      }
    )
  }

  item_id = 0;

  storeItem(e) {
    var item_id = e.target.getAttribute("id");
    this.item_id = item_id;
    if (localStorage.getItem('selected_type') == null) {
      this._localStorage.addItem('selected_type', item_id);
    } else {
      this._localStorage.setItem('selected_type', item_id);
    }
  }

  disableRow(e) {
    this._formation.updateTypeFormationStatus(this.item_id, 'no').subscribe(
      data => {
        Swal.fire(
          'Terminé!',
          'Cette ligne a été désactivée!',
          'success'
        )
        this.ngOnInit();
      }
    )
  }

  enableRow(e) {
    this._formation.updateTypeFormationStatus(this.item_id, 'yes').subscribe(
      data => {
        Swal.fire(
          'Terminé!',
          'Cette ligne a été activée!',
          'success'
        )
        this.ngOnInit();
      }
    )
  }

  deleteRow(e) {
    const swalWithBootstrapButtons = Swal.mixin({
      customClass: {
        confirmButton: 'btn btn-success',
        cancelButton: 'btn btn-danger'
      },
      buttonsStyling: false
    })
    swalWithBootstrapButtons.fire({
      title: 'Êtes-vous sûr?',
      text: "Vous ne pourrez pas annuler cela!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonText: 'Oui, supprimer!',
      cancelButtonText: 'Non, annuler!',
      reverseButtons: true
    }).then((result) => {
      if (result.value) {
        this._formation.deleteTypeFormation(this.item_id).subscribe(
          data => {
            this.ngOnInit();
            swalWithBootstrapButtons.fire(
              'Supprimée!',
              'Cette ligne a été supprimée.',
              'success'
            )
          },
          error => {
            swalWithBootstrapButtons.fire(
              'Alert!',
              "Ce type est utilisé dans un événement.<br>Vous devez supprimer l'événement pour supprimer ce type!",
              'error'
            )
          }
        )

      } else if (
        result.dismiss === Swal.DismissReason.cancel
      ) {
        swalWithBootstrapButtons.fire(
          'Annuler',
          'La suppression a été annulée :)',
          'error'
        )
      }
    })
  }

}
