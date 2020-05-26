import { Component, OnInit } from '@angular/core';
import { LaVieService } from 'src/app/services/dashboard/la-vie.service';
import { Formation } from 'src/app/classes/formation';
import { FormationService } from 'src/app/services/dashboard/formation.service';
import { LocalStorageService } from 'src/app/services/dashboard/local-storage.service';
import { Router } from '@angular/router';
import Swal from 'sweetalert2';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-la-vie-view',
  templateUrl: './la-vie-view.component.html',
  styleUrls: ['./la-vie-view.component.css']
})
export class LaVieViewComponent implements OnInit {

  constructor(
    private _laVie: LaVieService,
    private _formation: FormationService,
    private c_foramtion: Formation,
    private _localStorage: LocalStorageService,
    private router: Router
  ) { }

  laVie: Formation[];
  apiUrl: any;

  ngOnInit() {
    this.apiUrl = environment.apiUrl;
    this._laVie.getAllVie().subscribe(
      (data: Formation[]) => {
        this.laVie = data;
      }
    )
  }

  item_id = 0;

  storeItem(e) {
    var item_id = e.target.getAttribute("id");
    this.item_id = item_id;
    if (localStorage.getItem('selected_vie') == null) {
      this._localStorage.addItem('selected_vie', item_id);
    } else {
      this._localStorage.setItem('selected_vie', item_id);
    }
  }

  disableRow(e) {
    this._laVie.updateLaVieStatus(this.item_id, 'no').subscribe(
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
    this._laVie.updateLaVieStatus(this.item_id, 'yes').subscribe(
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
        this._laVie.deleteLaVie(this.item_id).subscribe(
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
