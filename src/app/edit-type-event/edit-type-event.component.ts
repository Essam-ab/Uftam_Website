import { Component, OnInit } from '@angular/core';
import { FormationService } from '../services/dashboard/formation.service';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import { Router } from '@angular/router';
import { Formation } from '../classes/formation';
import Swal from 'sweetalert2'

@Component({
  selector: 'app-edit-type-event',
  templateUrl: './edit-type-event.component.html',
  styleUrls: ['./edit-type-event.component.css']
})
export class EditTypeEventComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private _localstorage: LocalStorageService,
    private router: Router
  ) { }

  type: Formation[];
  id: any;
  ngOnInit() {
    this.id = this._localstorage.getItem("selected_event_type");
    if (this._localstorage.getItem("selected_event_type") == null) {
      this.router.navigateByUrl('/admin/typeEventView');
    }
    this._formation.getTypeEvent(this.id).subscribe(
      (data: Formation[]) => {
        this.type = data;
      }
    )
  }


  updateTypeEvent(e) {
    let target = e.target;
    let type = target.querySelector('#typeEvent').value;

    this._formation.updateTypeEvent(this.id, type).subscribe(
      data => {
        console.log(data.message);
        if (data.success) {
          Swal.fire(
            'Mise à jour Terminé!',
            '',
            'success'
          )
          this.router.navigateByUrl("/admin/typeEventView");
        } else
          Swal.fire(
            'Oops!',
            'Modifier le champ pour continuer!',
            'info'
          )
      }
    )
  }

}
