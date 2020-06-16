import { Component, OnInit } from '@angular/core';
import { FormationService } from '../services/dashboard/formation.service';
import { Formation } from '../classes/formation';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import { Router } from '@angular/router';
import Swal from 'sweetalert2';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-event-view',
  templateUrl: './event-view.component.html',
  styleUrls: ['./event-view.component.css']
})
export class EventViewComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private c_foramtion: Formation,
    private _localStorage: LocalStorageService,
    private router: Router
  ) { }

  events: Formation[];
  authorized: Boolean = true;
  unauthorized: Boolean = false;
  apiUrl: any;

  ngOnInit() {
    this.apiUrl = environment.apiUrl;
    this._formation.getAllEvents().subscribe(
      (data: Formation[]) => {
        this.events = data;
        console.log(data)
      },
      error => {
        console.log("there has been an error trying to get all events!");
      }
    )
  }

  item_id = 0;

  storeItem(e) {
    var item_id = e.target.getAttribute("id");
    this.item_id = item_id;
    if (localStorage.getItem('selected_event') == null) {
      this._localStorage.addItem('selected_event', item_id);
    } else {
      this._localStorage.setItem('selected_event', item_id);
    }
  }

  disableRow(e) {
    this._formation.updateEventStatus(this.item_id, 'no').subscribe(
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
    this._formation.updateEventStatus(this.item_id, 'yes').subscribe(
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
        this._formation.deleteEvent(this.item_id).subscribe(
          data => {
            this.ngOnInit();
          }
        )
        swalWithBootstrapButtons.fire(
          'Supprimée!',
          'Cette ligne a été supprimée.',
          'success'
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
