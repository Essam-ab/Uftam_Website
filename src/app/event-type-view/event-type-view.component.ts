import { Component, OnInit } from '@angular/core';
import { FormationService } from '../services/dashboard/formation.service';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import * as $ from "jquery";
import { Formation } from '../classes/formation';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-event-type-view',
  templateUrl: './event-type-view.component.html',
  styleUrls: ['./event-type-view.component.css']
})
export class EventTypeViewComponent implements OnInit {

  constructor(
    // private foramtion: Event,
    private formation: Formation,
    private _formation: FormationService,
    private _localStorage: LocalStorageService
  ) { }

  types: Formation[];

  ngOnInit() {
    this._formation.getAllEventTypes().subscribe(
      (data: Formation[]) => {
        this.types = data;
      },
      error => {
        console.log("there has been an error trying to get all type events!");
      }
    )
  }

  item_id = 0;

  storeItem(e) {
    var item_id = e.target.getAttribute("id");
    this.item_id = item_id;
    if (localStorage.getItem('selected_event_type') == null) {
      this._localStorage.addItem('selected_event_type', item_id);
    } else {
      this._localStorage.setItem('selected_event_type', item_id);
    }
  }

  disableRow(e) {
    this._formation.updateTypeEventStatus(this.item_id, 'no').subscribe(
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
    this._formation.updateTypeEventStatus(this.item_id, 'yes').subscribe(
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
        this._formation.deleteTypeEvent(this.item_id).subscribe(
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
